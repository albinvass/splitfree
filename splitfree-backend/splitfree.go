package main

import (
	"context"
	"fmt"
	"net/http"

	"github.com/albinvass/splitfree/splitfree-backend/authenticator"
	"github.com/albinvass/splitfree/splitfree-backend/callback"
	"github.com/albinvass/splitfree/splitfree-backend/ent"
	"github.com/albinvass/splitfree/splitfree-backend/login"
	"github.com/albinvass/splitfree/splitfree-backend/logout"
	"github.com/albinvass/splitfree/splitfree-backend/user"

	schemaUser "github.com/albinvass/splitfree/splitfree-backend/ent/user"
	"github.com/danielgtaylor/huma/v2"
	"github.com/danielgtaylor/huma/v2/adapters/humachi"

	"github.com/go-chi/chi/v5"

	"github.com/danielgtaylor/huma/v2/humacli"
	log "github.com/sirupsen/logrus"
)

type SplitfreeBackend struct {
	dbClient      *ent.Client
	listenAddress string
}

func NewSplitfreeBackend(listenAddress string) (*SplitfreeBackend, error) {
	client, err := ent.Open("postgres", "host=127.0.0.1 port=5432 user=splitfree dbname=splitfree password=splitfree sslmode=disable")
	if err != nil {
		return &SplitfreeBackend{}, fmt.Errorf("failed opening connection to sqlite: %v", err)
	}

	return &SplitfreeBackend{
		dbClient:      client,
		listenAddress: ":3000",
	}, nil
}

func (s *SplitfreeBackend) Close() error {
	err := s.dbClient.Close()
	if err != nil {
		return err
	}
	return nil
}

func (s *SplitfreeBackend) ensureUser(ctx context.Context, name string, email string) error {
	user, err := s.dbClient.User.Query().Where(schemaUser.Name(name)).All(ctx)
	if err != nil {
		return err
	}
	if len(user) == 0 {
		_, err := s.dbClient.User.Create().
			SetName(name).
			SetEmail(email).
			Save(ctx)
		if err != nil {
			return fmt.Errorf("couldn't create user %s - %s: %v", name, email, err)
		}
	}

	return nil
}

func (s *SplitfreeBackend) InitDB(ctx context.Context) error {
	if err := s.ensureUser(ctx, "Albin", "albinvass@gmail.com"); err != nil {
		return err
	}
	if err := s.ensureUser(ctx, "Carolina", "carolinalarsson97@gmail.com"); err != nil {
		return err
	}
	return nil
}

func (s *SplitfreeBackend) Run() error {
	cli := humacli.New(func(hooks humacli.Hooks, options *Options) {
		ctx := context.Background()
		if err := s.dbClient.Schema.Create(ctx); err != nil {
			panic(fmt.Errorf("failed creating schema resources: %v", err))
		}

		if err := s.InitDB(ctx); err != nil {
			panic(fmt.Errorf("failed to initialize database: %v", err))
		}

		log.Info("successfully created schema")

		r := chi.NewMux()
		config := huma.DefaultConfig("My API", "1.0.0")
		api := humachi.New(r, config)

		auth, err := authenticator.New()
		if err != nil {
			panic(err)
		}

		huma.Get(api, "/login", login.Handler(auth))
		huma.Get(api, "/callback", callback.Handler(auth))
		huma.Get(api, "/user", user.Handler)
		huma.Get(api, "/logout", logout.Handler)

		huma.Put(api, "/api/expense", s.CreateExpense)
		huma.Get(api, "/api/expenses", s.GetExpenses)

		huma.Get(api, "/api/users", s.GetUsers)
		hooks.OnStart(func() {
			log.Infof("listening on: %s", s.listenAddress)
			http.ListenAndServe(fmt.Sprintf(":%d", options.Port), r)
		})
	})

	cli.Run()
	return nil
}

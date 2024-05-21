package main

import (
	"context"
	"fmt"
	"net/http"

	"github.com/albinvass/splitfree/cmd/splitfree-backend/ent"
	"github.com/albinvass/splitfree/cmd/splitfree-backend/ent/user"
	"github.com/google/uuid"

	_ "github.com/lib/pq"
	log "github.com/sirupsen/logrus"

	"github.com/danielgtaylor/huma/v2"
	"github.com/danielgtaylor/huma/v2/adapters/humago"
	"github.com/danielgtaylor/huma/v2/humacli"
)

func main() {
	s, err := NewSplitfreeBackend(":3000")
	if err != nil {
		log.Fatalf("failed to start splitfree: %v", err)
	}
	defer s.Close()
	if err := s.Run(); err != nil {
		log.Fatal(err)
	}
}

type ExpenseInput struct {
	Body struct {
		Cost string `json:"cost" maxLength:"32" doc:"Expense cost"`
	}
}

type ExpenseOutput struct {
	Body struct {
		Message string `json:"message" example:"test"`
	}
}

func (s *SplitfreeBackend) CreateExpense(ctx context.Context, input *ExpenseInput) (*ExpenseOutput, error) {
	shares := map[uuid.UUID]float64{
		uuid.New(): 100,
	}
	user, err := s.dbClient.User.Query().Where(user.Name("Albin")).Only(ctx)
	if err != nil {
		return nil, err
	}
	expense, err := s.dbClient.Expense.Create().
		SetCost(input.Body.Cost).
		SetDescription("test").
		SetShares(shares).
		SetCategory("GROCERIES").
		SetPaidBy(user).
		AddDebtors(user).
		Save(ctx)
	if err != nil {
		return nil, err
	}

	resp := &ExpenseOutput{}
	resp.Body.Message = fmt.Sprintf("Cost: %s", expense.Cost)
	return resp, nil
}

type GetExpensesInput struct {
}

type GetExpensesOutput struct {
	Body struct {
		Expenses ent.Expenses
	}
}

func (s *SplitfreeBackend) GetExpenses(ctx context.Context, _ *GetExpensesInput) (*GetExpensesOutput, error) {
	resp := &GetExpensesOutput{}
	expenses, err := s.dbClient.Expense.Query().All(ctx)
	if err != nil {
		return nil, err
	}
	resp.Body.Expenses = expenses
	return resp, nil
}

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

type Options struct {
	Port int `help:"Port to listen on" short:"p" default:"3000"`
}

func (s *SplitfreeBackend) InitDB(ctx context.Context) error {
	user, err := s.dbClient.User.Query().Where(user.Name("Albin")).All(ctx)
	if err != nil {
		return err
	}
	if len(user) == 0 {
		_, err := s.dbClient.User.Create().
			SetName("Albin").
			SetEmail("albinvass@gmail.com").
			Save(ctx)
		if err != nil {
			return err
		}
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
			panic(err)
		}

		log.Info("successfully created schema")

		r := http.NewServeMux()
		api := humago.New(r, huma.DefaultConfig("My API", "1.0.0"))
		huma.Put(api, "/api/expense", s.CreateExpense)
		huma.Get(api, "/api/expenses", s.GetExpenses)

		hooks.OnStart(func() {
			log.Infof("listening on: %s", s.listenAddress)
			http.ListenAndServe(fmt.Sprintf(":%d", options.Port), r)
		})
	})

	cli.Run()
	return nil
}

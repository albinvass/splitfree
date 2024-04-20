package main;

import (
    "context"
    "net/http"

    "github.com/albinvass/splitfree/cmd/splitfree-backend/ent"

    _ "github.com/lib/pq"
    log "github.com/sirupsen/logrus"
    

    "github.com/go-chi/chi/v5"
    "github.com/go-chi/chi/v5/middleware"
)


func main() {
    client, err := ent.Open("postgres", "host=127.0.0.1 port=5432 user=splitfree dbname=splitfree password=splitfree sslmode=disable")
    if err != nil {
        log.Fatalf("failed opening connection to sqlite: %v", err)
    }
    defer client.Close()
    ctx := context.Background()
    if err := client.Schema.Create(ctx); err != nil {
        log.Fatalf("failed creating schema resources: %v", err)
    }
    log.Info("successfully created schema")

    if err := run(client); err != nil {
        log.Fatal(err)
    }
}

func run(_ *ent.Client) error {
    r := chi.NewRouter()
    r.Use(middleware.Logger)
    r.Get("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("welcome"))
	})
	http.ListenAndServe(":3000", r)

    return nil
}

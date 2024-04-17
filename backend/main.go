package main;

import (
    "context"
    "log"

    "splitfree/ent"

    _ "github.com/lib/pq"
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
}

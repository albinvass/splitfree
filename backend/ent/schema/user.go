package schema

import (
	"time"
	uuid "github.com/google/uuid"

    "entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
)

// User holds the schema definition for the User entity.
type User struct {
	ent.Schema
}

// Fields of the User.
func (User) Fields() []ent.Field {
	return []ent.Field{
        field.UUID("uuid", uuid.UUID{}).
            Default(uuid.New),
        field.String("name").NotEmpty(),
        field.String("email").NotEmpty(),
        field.Time("created_at").
            Default(time.Now).
            Immutable(),
    }
}

// Edges of the User.
func (User) Edges() []ent.Edge {
	return []ent.Edge{
        edge.To("expenses", Expense.Type),
        edge.To("splits", Split.Type),
    }
}

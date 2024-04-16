package schema

import (
	"time"
	uuid "github.com/google/uuid"

    "entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
)

// Split holds the schema definition for the Split entity.
type Split struct {
	ent.Schema
}

// Fields of the Split.
func (Split) Fields() []ent.Field {
	return []ent.Field{
        field.UUID("uuid", uuid.UUID{}).
            Default(uuid.New),
        field.JSON("shares", map[uuid.UUID]float64{}),
        field.Time("created_at").
            Default(time.Now).
            Immutable(),
    }
}

// Edges of the Split.
func (Split) Edges() []ent.Edge {
	return []ent.Edge{
        edge.To("expense", Expense.Type).
            Unique().
            Required(),
        edge.To("debtors", User.Type).
            Required(),
    }
}

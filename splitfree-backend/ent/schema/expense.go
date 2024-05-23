package schema

import (
	"time"

	uuid "github.com/google/uuid"

	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
)

// Expense holds the schema definition for the Expense entity.
type Expense struct {
	ent.Schema
}

// Fields of the Expense.
func (Expense) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("uuid", uuid.UUID{}).
			Default(uuid.New),
		field.Text("description"),
		field.UUID("paid_by", uuid.UUID{}),
		field.JSON("shares", map[uuid.UUID]float64{}),
		field.Enum("category").
			NamedValues(
				"Groceries", "GROCERIES",
				"Other", "OTHER",
			),
		field.Time("created_at").
			Default(time.Now).
			Immutable(),
		field.String("cost").NotEmpty(),
		field.Text("receipt_url").Optional(),
	}
}

// Edges of the Expense.
func (Expense) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("debtors", User.Type).
			Required(),
	}
}

// Code generated by ent, DO NOT EDIT.

package ent

import (
	"encoding/json"
	"fmt"
	"strings"
	"time"

	"entgo.io/ent"
	"entgo.io/ent/dialect/sql"
	"github.com/albinvass/splitfree/cmd/splitfree-backend/ent/expense"
	"github.com/albinvass/splitfree/cmd/splitfree-backend/ent/user"
	"github.com/google/uuid"
)

// Expense is the model entity for the Expense schema.
type Expense struct {
	config `json:"-"`
	// ID of the ent.
	ID int `json:"id,omitempty"`
	// UUID holds the value of the "uuid" field.
	UUID uuid.UUID `json:"uuid,omitempty"`
	// Description holds the value of the "description" field.
	Description string `json:"description,omitempty"`
	// Shares holds the value of the "shares" field.
	Shares map[uuid.UUID]float64 `json:"shares,omitempty"`
	// Category holds the value of the "category" field.
	Category expense.Category `json:"category,omitempty"`
	// CreatedAt holds the value of the "created_at" field.
	CreatedAt time.Time `json:"created_at,omitempty"`
	// Cost holds the value of the "cost" field.
	Cost string `json:"cost,omitempty"`
	// ReceiptURL holds the value of the "receipt_url" field.
	ReceiptURL string `json:"receipt_url,omitempty"`
	// Edges holds the relations/edges for other nodes in the graph.
	// The values are being populated by the ExpenseQuery when eager-loading is set.
	Edges         ExpenseEdges `json:"edges"`
	user_expenses *int
	selectValues  sql.SelectValues
}

// ExpenseEdges holds the relations/edges for other nodes in the graph.
type ExpenseEdges struct {
	// PaidBy holds the value of the paid_by edge.
	PaidBy *User `json:"paid_by,omitempty"`
	// Debtors holds the value of the debtors edge.
	Debtors []*User `json:"debtors,omitempty"`
	// loadedTypes holds the information for reporting if a
	// type was loaded (or requested) in eager-loading or not.
	loadedTypes [2]bool
}

// PaidByOrErr returns the PaidBy value or an error if the edge
// was not loaded in eager-loading, or loaded but was not found.
func (e ExpenseEdges) PaidByOrErr() (*User, error) {
	if e.PaidBy != nil {
		return e.PaidBy, nil
	} else if e.loadedTypes[0] {
		return nil, &NotFoundError{label: user.Label}
	}
	return nil, &NotLoadedError{edge: "paid_by"}
}

// DebtorsOrErr returns the Debtors value or an error if the edge
// was not loaded in eager-loading.
func (e ExpenseEdges) DebtorsOrErr() ([]*User, error) {
	if e.loadedTypes[1] {
		return e.Debtors, nil
	}
	return nil, &NotLoadedError{edge: "debtors"}
}

// scanValues returns the types for scanning values from sql.Rows.
func (*Expense) scanValues(columns []string) ([]any, error) {
	values := make([]any, len(columns))
	for i := range columns {
		switch columns[i] {
		case expense.FieldShares:
			values[i] = new([]byte)
		case expense.FieldID:
			values[i] = new(sql.NullInt64)
		case expense.FieldDescription, expense.FieldCategory, expense.FieldCost, expense.FieldReceiptURL:
			values[i] = new(sql.NullString)
		case expense.FieldCreatedAt:
			values[i] = new(sql.NullTime)
		case expense.FieldUUID:
			values[i] = new(uuid.UUID)
		case expense.ForeignKeys[0]: // user_expenses
			values[i] = new(sql.NullInt64)
		default:
			values[i] = new(sql.UnknownType)
		}
	}
	return values, nil
}

// assignValues assigns the values that were returned from sql.Rows (after scanning)
// to the Expense fields.
func (e *Expense) assignValues(columns []string, values []any) error {
	if m, n := len(values), len(columns); m < n {
		return fmt.Errorf("mismatch number of scan values: %d != %d", m, n)
	}
	for i := range columns {
		switch columns[i] {
		case expense.FieldID:
			value, ok := values[i].(*sql.NullInt64)
			if !ok {
				return fmt.Errorf("unexpected type %T for field id", value)
			}
			e.ID = int(value.Int64)
		case expense.FieldUUID:
			if value, ok := values[i].(*uuid.UUID); !ok {
				return fmt.Errorf("unexpected type %T for field uuid", values[i])
			} else if value != nil {
				e.UUID = *value
			}
		case expense.FieldDescription:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field description", values[i])
			} else if value.Valid {
				e.Description = value.String
			}
		case expense.FieldShares:
			if value, ok := values[i].(*[]byte); !ok {
				return fmt.Errorf("unexpected type %T for field shares", values[i])
			} else if value != nil && len(*value) > 0 {
				if err := json.Unmarshal(*value, &e.Shares); err != nil {
					return fmt.Errorf("unmarshal field shares: %w", err)
				}
			}
		case expense.FieldCategory:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field category", values[i])
			} else if value.Valid {
				e.Category = expense.Category(value.String)
			}
		case expense.FieldCreatedAt:
			if value, ok := values[i].(*sql.NullTime); !ok {
				return fmt.Errorf("unexpected type %T for field created_at", values[i])
			} else if value.Valid {
				e.CreatedAt = value.Time
			}
		case expense.FieldCost:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field cost", values[i])
			} else if value.Valid {
				e.Cost = value.String
			}
		case expense.FieldReceiptURL:
			if value, ok := values[i].(*sql.NullString); !ok {
				return fmt.Errorf("unexpected type %T for field receipt_url", values[i])
			} else if value.Valid {
				e.ReceiptURL = value.String
			}
		case expense.ForeignKeys[0]:
			if value, ok := values[i].(*sql.NullInt64); !ok {
				return fmt.Errorf("unexpected type %T for edge-field user_expenses", value)
			} else if value.Valid {
				e.user_expenses = new(int)
				*e.user_expenses = int(value.Int64)
			}
		default:
			e.selectValues.Set(columns[i], values[i])
		}
	}
	return nil
}

// Value returns the ent.Value that was dynamically selected and assigned to the Expense.
// This includes values selected through modifiers, order, etc.
func (e *Expense) Value(name string) (ent.Value, error) {
	return e.selectValues.Get(name)
}

// QueryPaidBy queries the "paid_by" edge of the Expense entity.
func (e *Expense) QueryPaidBy() *UserQuery {
	return NewExpenseClient(e.config).QueryPaidBy(e)
}

// QueryDebtors queries the "debtors" edge of the Expense entity.
func (e *Expense) QueryDebtors() *UserQuery {
	return NewExpenseClient(e.config).QueryDebtors(e)
}

// Update returns a builder for updating this Expense.
// Note that you need to call Expense.Unwrap() before calling this method if this Expense
// was returned from a transaction, and the transaction was committed or rolled back.
func (e *Expense) Update() *ExpenseUpdateOne {
	return NewExpenseClient(e.config).UpdateOne(e)
}

// Unwrap unwraps the Expense entity that was returned from a transaction after it was closed,
// so that all future queries will be executed through the driver which created the transaction.
func (e *Expense) Unwrap() *Expense {
	_tx, ok := e.config.driver.(*txDriver)
	if !ok {
		panic("ent: Expense is not a transactional entity")
	}
	e.config.driver = _tx.drv
	return e
}

// String implements the fmt.Stringer.
func (e *Expense) String() string {
	var builder strings.Builder
	builder.WriteString("Expense(")
	builder.WriteString(fmt.Sprintf("id=%v, ", e.ID))
	builder.WriteString("uuid=")
	builder.WriteString(fmt.Sprintf("%v", e.UUID))
	builder.WriteString(", ")
	builder.WriteString("description=")
	builder.WriteString(e.Description)
	builder.WriteString(", ")
	builder.WriteString("shares=")
	builder.WriteString(fmt.Sprintf("%v", e.Shares))
	builder.WriteString(", ")
	builder.WriteString("category=")
	builder.WriteString(fmt.Sprintf("%v", e.Category))
	builder.WriteString(", ")
	builder.WriteString("created_at=")
	builder.WriteString(e.CreatedAt.Format(time.ANSIC))
	builder.WriteString(", ")
	builder.WriteString("cost=")
	builder.WriteString(e.Cost)
	builder.WriteString(", ")
	builder.WriteString("receipt_url=")
	builder.WriteString(e.ReceiptURL)
	builder.WriteByte(')')
	return builder.String()
}

// Expenses is a parsable slice of Expense.
type Expenses []*Expense

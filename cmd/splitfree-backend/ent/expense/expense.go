// Code generated by ent, DO NOT EDIT.

package expense

import (
	"fmt"
	"time"

	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/google/uuid"
)

const (
	// Label holds the string label denoting the expense type in the database.
	Label = "expense"
	// FieldID holds the string denoting the id field in the database.
	FieldID = "id"
	// FieldUUID holds the string denoting the uuid field in the database.
	FieldUUID = "uuid"
	// FieldDescription holds the string denoting the description field in the database.
	FieldDescription = "description"
	// FieldShares holds the string denoting the shares field in the database.
	FieldShares = "shares"
	// FieldCategory holds the string denoting the category field in the database.
	FieldCategory = "category"
	// FieldCreatedAt holds the string denoting the created_at field in the database.
	FieldCreatedAt = "created_at"
	// FieldCost holds the string denoting the cost field in the database.
	FieldCost = "cost"
	// FieldReceiptURL holds the string denoting the receipt_url field in the database.
	FieldReceiptURL = "receipt_url"
	// EdgePaidBy holds the string denoting the paid_by edge name in mutations.
	EdgePaidBy = "paid_by"
	// EdgeDebtors holds the string denoting the debtors edge name in mutations.
	EdgeDebtors = "debtors"
	// Table holds the table name of the expense in the database.
	Table = "expenses"
	// PaidByTable is the table that holds the paid_by relation/edge.
	PaidByTable = "expenses"
	// PaidByInverseTable is the table name for the User entity.
	// It exists in this package in order to avoid circular dependency with the "user" package.
	PaidByInverseTable = "users"
	// PaidByColumn is the table column denoting the paid_by relation/edge.
	PaidByColumn = "user_expenses"
	// DebtorsTable is the table that holds the debtors relation/edge.
	DebtorsTable = "users"
	// DebtorsInverseTable is the table name for the User entity.
	// It exists in this package in order to avoid circular dependency with the "user" package.
	DebtorsInverseTable = "users"
	// DebtorsColumn is the table column denoting the debtors relation/edge.
	DebtorsColumn = "expense_debtors"
)

// Columns holds all SQL columns for expense fields.
var Columns = []string{
	FieldID,
	FieldUUID,
	FieldDescription,
	FieldShares,
	FieldCategory,
	FieldCreatedAt,
	FieldCost,
	FieldReceiptURL,
}

// ForeignKeys holds the SQL foreign-keys that are owned by the "expenses"
// table and are not defined as standalone fields in the schema.
var ForeignKeys = []string{
	"user_expenses",
}

// ValidColumn reports if the column name is valid (part of the table columns).
func ValidColumn(column string) bool {
	for i := range Columns {
		if column == Columns[i] {
			return true
		}
	}
	for i := range ForeignKeys {
		if column == ForeignKeys[i] {
			return true
		}
	}
	return false
}

var (
	// DefaultUUID holds the default value on creation for the "uuid" field.
	DefaultUUID func() uuid.UUID
	// DefaultCreatedAt holds the default value on creation for the "created_at" field.
	DefaultCreatedAt func() time.Time
	// CostValidator is a validator for the "cost" field. It is called by the builders before save.
	CostValidator func(string) error
)

// Category defines the type for the "category" enum field.
type Category string

// Category values.
const (
	CategoryGroceries Category = "GROCERIES"
	CategoryOther     Category = "OTHER"
)

func (c Category) String() string {
	return string(c)
}

// CategoryValidator is a validator for the "category" field enum values. It is called by the builders before save.
func CategoryValidator(c Category) error {
	switch c {
	case CategoryGroceries, CategoryOther:
		return nil
	default:
		return fmt.Errorf("expense: invalid enum value for category field: %q", c)
	}
}

// OrderOption defines the ordering options for the Expense queries.
type OrderOption func(*sql.Selector)

// ByID orders the results by the id field.
func ByID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldID, opts...).ToFunc()
}

// ByUUID orders the results by the uuid field.
func ByUUID(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldUUID, opts...).ToFunc()
}

// ByDescription orders the results by the description field.
func ByDescription(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldDescription, opts...).ToFunc()
}

// ByCategory orders the results by the category field.
func ByCategory(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldCategory, opts...).ToFunc()
}

// ByCreatedAt orders the results by the created_at field.
func ByCreatedAt(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldCreatedAt, opts...).ToFunc()
}

// ByCost orders the results by the cost field.
func ByCost(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldCost, opts...).ToFunc()
}

// ByReceiptURL orders the results by the receipt_url field.
func ByReceiptURL(opts ...sql.OrderTermOption) OrderOption {
	return sql.OrderByField(FieldReceiptURL, opts...).ToFunc()
}

// ByPaidByField orders the results by paid_by field.
func ByPaidByField(field string, opts ...sql.OrderTermOption) OrderOption {
	return func(s *sql.Selector) {
		sqlgraph.OrderByNeighborTerms(s, newPaidByStep(), sql.OrderByField(field, opts...))
	}
}

// ByDebtorsCount orders the results by debtors count.
func ByDebtorsCount(opts ...sql.OrderTermOption) OrderOption {
	return func(s *sql.Selector) {
		sqlgraph.OrderByNeighborsCount(s, newDebtorsStep(), opts...)
	}
}

// ByDebtors orders the results by debtors terms.
func ByDebtors(term sql.OrderTerm, terms ...sql.OrderTerm) OrderOption {
	return func(s *sql.Selector) {
		sqlgraph.OrderByNeighborTerms(s, newDebtorsStep(), append([]sql.OrderTerm{term}, terms...)...)
	}
}
func newPaidByStep() *sqlgraph.Step {
	return sqlgraph.NewStep(
		sqlgraph.From(Table, FieldID),
		sqlgraph.To(PaidByInverseTable, FieldID),
		sqlgraph.Edge(sqlgraph.M2O, true, PaidByTable, PaidByColumn),
	)
}
func newDebtorsStep() *sqlgraph.Step {
	return sqlgraph.NewStep(
		sqlgraph.From(Table, FieldID),
		sqlgraph.To(DebtorsInverseTable, FieldID),
		sqlgraph.Edge(sqlgraph.O2M, false, DebtorsTable, DebtorsColumn),
	)
}
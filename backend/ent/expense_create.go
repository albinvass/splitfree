// Code generated by ent, DO NOT EDIT.

package ent

import (
	"context"
	"errors"
	"fmt"
	"splitfree/ent/expense"
	"splitfree/ent/user"
	"time"

	"entgo.io/ent/dialect/sql/sqlgraph"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// ExpenseCreate is the builder for creating a Expense entity.
type ExpenseCreate struct {
	config
	mutation *ExpenseMutation
	hooks    []Hook
}

// SetUUID sets the "uuid" field.
func (ec *ExpenseCreate) SetUUID(u uuid.UUID) *ExpenseCreate {
	ec.mutation.SetUUID(u)
	return ec
}

// SetNillableUUID sets the "uuid" field if the given value is not nil.
func (ec *ExpenseCreate) SetNillableUUID(u *uuid.UUID) *ExpenseCreate {
	if u != nil {
		ec.SetUUID(*u)
	}
	return ec
}

// SetDescription sets the "description" field.
func (ec *ExpenseCreate) SetDescription(s string) *ExpenseCreate {
	ec.mutation.SetDescription(s)
	return ec
}

// SetShares sets the "shares" field.
func (ec *ExpenseCreate) SetShares(m map[uuid.UUID]float64) *ExpenseCreate {
	ec.mutation.SetShares(m)
	return ec
}

// SetCategory sets the "category" field.
func (ec *ExpenseCreate) SetCategory(e expense.Category) *ExpenseCreate {
	ec.mutation.SetCategory(e)
	return ec
}

// SetCreatedAt sets the "created_at" field.
func (ec *ExpenseCreate) SetCreatedAt(t time.Time) *ExpenseCreate {
	ec.mutation.SetCreatedAt(t)
	return ec
}

// SetNillableCreatedAt sets the "created_at" field if the given value is not nil.
func (ec *ExpenseCreate) SetNillableCreatedAt(t *time.Time) *ExpenseCreate {
	if t != nil {
		ec.SetCreatedAt(*t)
	}
	return ec
}

// SetCost sets the "cost" field.
func (ec *ExpenseCreate) SetCost(s string) *ExpenseCreate {
	ec.mutation.SetCost(s)
	return ec
}

// SetReceiptURL sets the "receipt_url" field.
func (ec *ExpenseCreate) SetReceiptURL(s string) *ExpenseCreate {
	ec.mutation.SetReceiptURL(s)
	return ec
}

// SetNillableReceiptURL sets the "receipt_url" field if the given value is not nil.
func (ec *ExpenseCreate) SetNillableReceiptURL(s *string) *ExpenseCreate {
	if s != nil {
		ec.SetReceiptURL(*s)
	}
	return ec
}

// SetPaidByID sets the "paid_by" edge to the User entity by ID.
func (ec *ExpenseCreate) SetPaidByID(id int) *ExpenseCreate {
	ec.mutation.SetPaidByID(id)
	return ec
}

// SetPaidBy sets the "paid_by" edge to the User entity.
func (ec *ExpenseCreate) SetPaidBy(u *User) *ExpenseCreate {
	return ec.SetPaidByID(u.ID)
}

// AddDebtorIDs adds the "debtors" edge to the User entity by IDs.
func (ec *ExpenseCreate) AddDebtorIDs(ids ...int) *ExpenseCreate {
	ec.mutation.AddDebtorIDs(ids...)
	return ec
}

// AddDebtors adds the "debtors" edges to the User entity.
func (ec *ExpenseCreate) AddDebtors(u ...*User) *ExpenseCreate {
	ids := make([]int, len(u))
	for i := range u {
		ids[i] = u[i].ID
	}
	return ec.AddDebtorIDs(ids...)
}

// Mutation returns the ExpenseMutation object of the builder.
func (ec *ExpenseCreate) Mutation() *ExpenseMutation {
	return ec.mutation
}

// Save creates the Expense in the database.
func (ec *ExpenseCreate) Save(ctx context.Context) (*Expense, error) {
	ec.defaults()
	return withHooks(ctx, ec.sqlSave, ec.mutation, ec.hooks)
}

// SaveX calls Save and panics if Save returns an error.
func (ec *ExpenseCreate) SaveX(ctx context.Context) *Expense {
	v, err := ec.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (ec *ExpenseCreate) Exec(ctx context.Context) error {
	_, err := ec.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (ec *ExpenseCreate) ExecX(ctx context.Context) {
	if err := ec.Exec(ctx); err != nil {
		panic(err)
	}
}

// defaults sets the default values of the builder before save.
func (ec *ExpenseCreate) defaults() {
	if _, ok := ec.mutation.UUID(); !ok {
		v := expense.DefaultUUID()
		ec.mutation.SetUUID(v)
	}
	if _, ok := ec.mutation.CreatedAt(); !ok {
		v := expense.DefaultCreatedAt()
		ec.mutation.SetCreatedAt(v)
	}
}

// check runs all checks and user-defined validators on the builder.
func (ec *ExpenseCreate) check() error {
	if _, ok := ec.mutation.UUID(); !ok {
		return &ValidationError{Name: "uuid", err: errors.New(`ent: missing required field "Expense.uuid"`)}
	}
	if _, ok := ec.mutation.Description(); !ok {
		return &ValidationError{Name: "description", err: errors.New(`ent: missing required field "Expense.description"`)}
	}
	if _, ok := ec.mutation.Shares(); !ok {
		return &ValidationError{Name: "shares", err: errors.New(`ent: missing required field "Expense.shares"`)}
	}
	if _, ok := ec.mutation.Category(); !ok {
		return &ValidationError{Name: "category", err: errors.New(`ent: missing required field "Expense.category"`)}
	}
	if v, ok := ec.mutation.Category(); ok {
		if err := expense.CategoryValidator(v); err != nil {
			return &ValidationError{Name: "category", err: fmt.Errorf(`ent: validator failed for field "Expense.category": %w`, err)}
		}
	}
	if _, ok := ec.mutation.CreatedAt(); !ok {
		return &ValidationError{Name: "created_at", err: errors.New(`ent: missing required field "Expense.created_at"`)}
	}
	if _, ok := ec.mutation.Cost(); !ok {
		return &ValidationError{Name: "cost", err: errors.New(`ent: missing required field "Expense.cost"`)}
	}
	if v, ok := ec.mutation.Cost(); ok {
		if err := expense.CostValidator(v); err != nil {
			return &ValidationError{Name: "cost", err: fmt.Errorf(`ent: validator failed for field "Expense.cost": %w`, err)}
		}
	}
	if _, ok := ec.mutation.PaidByID(); !ok {
		return &ValidationError{Name: "paid_by", err: errors.New(`ent: missing required edge "Expense.paid_by"`)}
	}
	if len(ec.mutation.DebtorsIDs()) == 0 {
		return &ValidationError{Name: "debtors", err: errors.New(`ent: missing required edge "Expense.debtors"`)}
	}
	return nil
}

func (ec *ExpenseCreate) sqlSave(ctx context.Context) (*Expense, error) {
	if err := ec.check(); err != nil {
		return nil, err
	}
	_node, _spec := ec.createSpec()
	if err := sqlgraph.CreateNode(ctx, ec.driver, _spec); err != nil {
		if sqlgraph.IsConstraintError(err) {
			err = &ConstraintError{msg: err.Error(), wrap: err}
		}
		return nil, err
	}
	id := _spec.ID.Value.(int64)
	_node.ID = int(id)
	ec.mutation.id = &_node.ID
	ec.mutation.done = true
	return _node, nil
}

func (ec *ExpenseCreate) createSpec() (*Expense, *sqlgraph.CreateSpec) {
	var (
		_node = &Expense{config: ec.config}
		_spec = sqlgraph.NewCreateSpec(expense.Table, sqlgraph.NewFieldSpec(expense.FieldID, field.TypeInt))
	)
	if value, ok := ec.mutation.UUID(); ok {
		_spec.SetField(expense.FieldUUID, field.TypeUUID, value)
		_node.UUID = value
	}
	if value, ok := ec.mutation.Description(); ok {
		_spec.SetField(expense.FieldDescription, field.TypeString, value)
		_node.Description = value
	}
	if value, ok := ec.mutation.Shares(); ok {
		_spec.SetField(expense.FieldShares, field.TypeJSON, value)
		_node.Shares = value
	}
	if value, ok := ec.mutation.Category(); ok {
		_spec.SetField(expense.FieldCategory, field.TypeEnum, value)
		_node.Category = value
	}
	if value, ok := ec.mutation.CreatedAt(); ok {
		_spec.SetField(expense.FieldCreatedAt, field.TypeTime, value)
		_node.CreatedAt = value
	}
	if value, ok := ec.mutation.Cost(); ok {
		_spec.SetField(expense.FieldCost, field.TypeString, value)
		_node.Cost = value
	}
	if value, ok := ec.mutation.ReceiptURL(); ok {
		_spec.SetField(expense.FieldReceiptURL, field.TypeString, value)
		_node.ReceiptURL = value
	}
	if nodes := ec.mutation.PaidByIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.M2O,
			Inverse: true,
			Table:   expense.PaidByTable,
			Columns: []string{expense.PaidByColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(user.FieldID, field.TypeInt),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_node.user_expenses = &nodes[0]
		_spec.Edges = append(_spec.Edges, edge)
	}
	if nodes := ec.mutation.DebtorsIDs(); len(nodes) > 0 {
		edge := &sqlgraph.EdgeSpec{
			Rel:     sqlgraph.O2M,
			Inverse: false,
			Table:   expense.DebtorsTable,
			Columns: []string{expense.DebtorsColumn},
			Bidi:    false,
			Target: &sqlgraph.EdgeTarget{
				IDSpec: sqlgraph.NewFieldSpec(user.FieldID, field.TypeInt),
			},
		}
		for _, k := range nodes {
			edge.Target.Nodes = append(edge.Target.Nodes, k)
		}
		_spec.Edges = append(_spec.Edges, edge)
	}
	return _node, _spec
}

// ExpenseCreateBulk is the builder for creating many Expense entities in bulk.
type ExpenseCreateBulk struct {
	config
	err      error
	builders []*ExpenseCreate
}

// Save creates the Expense entities in the database.
func (ecb *ExpenseCreateBulk) Save(ctx context.Context) ([]*Expense, error) {
	if ecb.err != nil {
		return nil, ecb.err
	}
	specs := make([]*sqlgraph.CreateSpec, len(ecb.builders))
	nodes := make([]*Expense, len(ecb.builders))
	mutators := make([]Mutator, len(ecb.builders))
	for i := range ecb.builders {
		func(i int, root context.Context) {
			builder := ecb.builders[i]
			builder.defaults()
			var mut Mutator = MutateFunc(func(ctx context.Context, m Mutation) (Value, error) {
				mutation, ok := m.(*ExpenseMutation)
				if !ok {
					return nil, fmt.Errorf("unexpected mutation type %T", m)
				}
				if err := builder.check(); err != nil {
					return nil, err
				}
				builder.mutation = mutation
				var err error
				nodes[i], specs[i] = builder.createSpec()
				if i < len(mutators)-1 {
					_, err = mutators[i+1].Mutate(root, ecb.builders[i+1].mutation)
				} else {
					spec := &sqlgraph.BatchCreateSpec{Nodes: specs}
					// Invoke the actual operation on the latest mutation in the chain.
					if err = sqlgraph.BatchCreate(ctx, ecb.driver, spec); err != nil {
						if sqlgraph.IsConstraintError(err) {
							err = &ConstraintError{msg: err.Error(), wrap: err}
						}
					}
				}
				if err != nil {
					return nil, err
				}
				mutation.id = &nodes[i].ID
				if specs[i].ID.Value != nil {
					id := specs[i].ID.Value.(int64)
					nodes[i].ID = int(id)
				}
				mutation.done = true
				return nodes[i], nil
			})
			for i := len(builder.hooks) - 1; i >= 0; i-- {
				mut = builder.hooks[i](mut)
			}
			mutators[i] = mut
		}(i, ctx)
	}
	if len(mutators) > 0 {
		if _, err := mutators[0].Mutate(ctx, ecb.builders[0].mutation); err != nil {
			return nil, err
		}
	}
	return nodes, nil
}

// SaveX is like Save, but panics if an error occurs.
func (ecb *ExpenseCreateBulk) SaveX(ctx context.Context) []*Expense {
	v, err := ecb.Save(ctx)
	if err != nil {
		panic(err)
	}
	return v
}

// Exec executes the query.
func (ecb *ExpenseCreateBulk) Exec(ctx context.Context) error {
	_, err := ecb.Save(ctx)
	return err
}

// ExecX is like Exec, but panics if an error occurs.
func (ecb *ExpenseCreateBulk) ExecX(ctx context.Context) {
	if err := ecb.Exec(ctx); err != nil {
		panic(err)
	}
}

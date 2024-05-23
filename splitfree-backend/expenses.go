package main

type CreateExpenseInput struct {
	Body struct {
		PaidBy uuid.UUID `json:"paid_by" doc:"Paid By"`
		Cost   string    `json:"cost" maxLength:"32" doc:"Expense cost"`
	}
}

type CreateExpenseOutput struct {
	Body struct {
		Message string `json:"message" example:"test"`
	}
}

func (s *SplitfreeBackend) CreateExpense(ctx context.Context, input *CreateExpenseInput) (*CreateExpenseOutput, error) {
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
		SetPaidBy(input.PaidBy).
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

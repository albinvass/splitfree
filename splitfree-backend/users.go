package main

import (
	"context"

	"github.com/albinvass/splitfree/splitfree-backend/ent"
)

type GetUsersInput struct {
}

type GetUsersOutput struct {
	Body struct {
		Users ent.Users
	}
}

func (s *SplitfreeBackend) GetUsers(ctx context.Context, _ *GetUsersInput) (*GetUsersOutput, error) {
	resp := &GetUsersOutput{}
	users, err := s.dbClient.User.Query().All(ctx)
	if err != nil {
		return nil, err
	}
	resp.Body.Users = users
	return resp, nil
}

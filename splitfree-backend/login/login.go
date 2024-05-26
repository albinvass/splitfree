package login

import (
	"context"
	"github.com/albinvass/splitfree/splitfree-backend/authenticator"
	"github.com/google/uuid"
	"golang.org/x/oauth2"
	"net/http"
	"time"
)

type LoginOutput struct {
	Status int
	Url    string      `header:"Location"`
	Cookie http.Cookie `header:"Set-Cookie"`
}

func Handler(auth *authenticator.Authenticator) func(context.Context, *struct{}) (*LoginOutput, error) {
	return func(ctx context.Context, _ *struct{}) (*LoginOutput, error) {
		state := uuid.New()

		url := auth.AuthCodeURL(state.String(), oauth2.AccessTypeOnline)

		cookie := http.Cookie{
			Name:     "session",
			Value:    state.String(),
			Path:     "/",
			MaxAge:   int(time.Hour.Seconds()),
			Secure:   false,
			HttpOnly: true,
		}

		return &LoginOutput{
			Status: http.StatusTemporaryRedirect,
			Url:    url,
			Cookie: cookie,
		}, nil
	}
}

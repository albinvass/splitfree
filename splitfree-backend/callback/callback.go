// web/app/callback/callback.go

package callback

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"net/http"

	"github.com/albinvass/splitfree/splitfree-backend/authenticator"
	"github.com/danielgtaylor/huma/v2"
	"github.com/google/uuid"
	log "github.com/sirupsen/logrus"
)

type CallbackInput struct {
	Session http.Cookie `cookie:"session"`
	State   uuid.UUID   `query:"state"`
	Code    string      `query:"code"`
}

type CallbackOutput struct {
	Status  int
	Cookies []http.Cookie `header:"Set-Cookie"`
	Url     string        `header:"Location"`
}

// Handler for our callback.
func Handler(auth *authenticator.Authenticator) func(context.Context, *CallbackInput) (*CallbackOutput, error) {
	return func(ctx context.Context, callbackInput *CallbackInput) (*CallbackOutput, error) {
		state, err := uuid.Parse(callbackInput.Session.Value)
		if err != nil {
			return nil, err
		}
		if callbackInput.State != state {
			return nil, huma.Error400BadRequest("Invalid state parameter.")
		}

		// Exchange an authorization code for a token.
		token, err := auth.Exchange(ctx, callbackInput.Code)
		if err != nil {
			return nil, huma.Error401Unauthorized("Failed to exchange an authorization code for a token.")
		}

		idToken, err := auth.VerifyIDToken(ctx, token)
		if err != nil {
			return nil, huma.Error500InternalServerError("Failed to verify ID Token.")
		}

		var profile map[string]interface{}
		if err := idToken.Claims(&profile); err != nil {
			return nil, huma.Error500InternalServerError("", err)
		}

		accessTokenCookie := http.Cookie{
			Name:  "access_token",
			Value: token.AccessToken,
		}

		profileJson, err := json.Marshal(profile)
		if err != nil {
			return nil, huma.Error500InternalServerError("", err)
		}

		profileJsonBase64 := base64.StdEncoding.EncodeToString(profileJson)

		log.Infof("storing cookie: %s", profileJsonBase64)
		profileCookie := http.Cookie{
			Name:  "profile",
			Value: profileJsonBase64,
		}

		return &CallbackOutput{
			Status: http.StatusTemporaryRedirect,
			Cookies: []http.Cookie{
				accessTokenCookie,
				profileCookie,
			},
			Url: "/user",
		}, nil
	}
}

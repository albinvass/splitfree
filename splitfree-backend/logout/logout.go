// web/app/logout/logout.go

package logout

import (
	"context"
	"github.com/danielgtaylor/huma/v2"
	"net/http"
	"net/url"
	"os"
)

type LogoutInput struct {
}

type LogoutOutput struct {
	Status int
	Url    string `header:"Location"`
}

// Handler for our logout.
func Handler(ctx context.Context, loginInput *LogoutInput) (*LogoutOutput, error) {
	logoutUrl, err := url.Parse("https://" + os.Getenv("AUTH0_DOMAIN") + "/v2/logout")
	if err != nil {
		return nil, huma.Error500InternalServerError("", err)
	}

	canonicalUrl := os.Getenv("SPLITFREE_CANONICAL_URL")

	returnTo, err := url.Parse(canonicalUrl)
	if err != nil {
		return nil, huma.Error500InternalServerError("", err)
	}

	parameters := url.Values{}
	parameters.Add("returnTo", returnTo.String())
	parameters.Add("client_id", os.Getenv("AUTH0_CLIENT_ID"))
	logoutUrl.RawQuery = parameters.Encode()

	return &LogoutOutput{
		Status: http.StatusTemporaryRedirect,
		Url:    logoutUrl.String(),
	}, nil
}

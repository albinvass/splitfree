// web/app/user/user.go

package user

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"net/http"

	"github.com/danielgtaylor/huma/v2"
	log "github.com/sirupsen/logrus"
)

type Profile struct {
	Nickname string `json:"nickname"`
	Picture  string `json:"picture"`
}

type UserInput struct {
	Profile http.Cookie `cookie:"profile"`
}

type UserOutput struct {
	Body struct {
		Profile Profile
	}
}

// Handler for our logged-in user page.
func Handler(ctx context.Context, userInput *UserInput) (*UserOutput, error) {

	profileJson, err := base64.StdEncoding.DecodeString(userInput.Profile.Value)
	if err != nil {
		log.Errorf("failed to decode profile: %v, <%s>", err, userInput.Profile.Value)
		return nil, huma.Error400BadRequest("", err)
	}
	log.Infof("unmarshalling: '%s'", profileJson)
	profile := Profile{}
	err = json.Unmarshal(profileJson, &profile)
	if err != nil {

		log.Errorf("failed to unmarshal profile: %v, '%s'", err, profileJson)
		return nil, huma.Error400BadRequest("", err)
	}

	response := UserOutput{}
	response.Body.Profile = profile

	return &response, nil
}

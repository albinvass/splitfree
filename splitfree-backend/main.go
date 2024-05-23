package main

import (
	_ "github.com/lib/pq"
	log "github.com/sirupsen/logrus"
)

func main() {
	s, err := NewSplitfreeBackend(":3000")
	if err != nil {
		log.Fatalf("failed to start splitfree: %v", err)
	}
	defer s.Close()
	if err := s.Run(); err != nil {
		log.Fatal(err)
	}
}

type Options struct {
	Port int `help:"Port to listen on" short:"p" default:"3000"`
}

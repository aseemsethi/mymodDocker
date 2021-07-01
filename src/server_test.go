package main

import "testing"

// Name must start with Test and 2nd part must start with uppercase.
func TestHello(t *testing.T) {
    got := hi("sethi")
    want := "Hello sethi"

    if got != want {
        t.Errorf("got %q want %q", got, want)
    }
}

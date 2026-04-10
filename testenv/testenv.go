// Package testenv provides helpers for tests (minimal subset of golang.org/x/tools/internal/testenv).
package testenv

import (
	"os/exec"
	"testing"
)

// NeedsTool skips the test if the named executable is not on PATH.
func NeedsTool(t *testing.T, name string) {
	t.Helper()
	if _, err := exec.LookPath(name); err != nil {
		t.Skipf("skipping: %s not in PATH: %v", name, err)
	}
}

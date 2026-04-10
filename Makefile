.PHONY: test vet tidy mod-verify release-check help

test: ## Run all tests
	go test -race ./...

vet: ## Run go vet
	go vet ./...

tidy: ## go mod tidy
	go mod tidy

mod-verify: ## Verify module checksums
	go mod verify

release-check: ## Dry-run GoReleaser (requires goreleaser CLI)
	goreleaser release --snapshot --clean --skip=publish

help:
	@grep -E '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-16s\033[0m %s\n", $$1, $$2}'

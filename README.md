# go-diff

Text diff utilities for Go, including **unified diff** output. The implementation is derived from [`golang.org/x/tools/internal/diff`](https://github.com/golang/tools/tree/master/internal/diff) (the same code used by **gopls**).

## Install

```bash
go get github.com/merionyx/go-diff
```

Requires **Go 1.24+** (tests rely on `testing.Loop` in the `lcs` package).

## Usage

```go
import "github.com/merionyx/go-diff"

func Example() {
    const oldLabel, newLabel = "old.txt", "new.txt"
    old := "line1\nline2\n"
    newText := "line1\nline2\nline3\n"
    u := diff.Unified(oldLabel, newLabel, old, newText)
    _ = u // unified diff string, or empty if equal
}
```

Other entry points include `diff.Lines`, `diff.Strings`, `diff.Apply`, and `diff.ToUnified` — see package documentation.

## License

[BSD 3-Clause](LICENSE) — Copyright © The Go Authors. See [NOTICE](NOTICE) for attribution of upstream code.

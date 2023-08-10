package static

import "embed"

//go:embed *.gz
var StaticFiles embed.FS

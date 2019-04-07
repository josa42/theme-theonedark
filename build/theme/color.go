package theme

import (
	"fmt"

	"github.com/tomnomnom/xtermcolor"
)

type Color string

func (c Color) Cterm() string {
	if c != "" && c != "NONE" {
		code, _ := xtermcolor.FromHexStr(string(c))
		return fmt.Sprintf("%d", code)
	}
	return "NONE"
}

func (c Color) Gui() string {
	if c != "" {
		return string(c)
	}
	return "NONE"
}

func (c Color) Flat() string {
	return fmt.Sprintf("[ '%s', %s ]", c.Gui(), c.Cterm())
}

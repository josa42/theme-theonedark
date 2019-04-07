package theme

type Font string

func (f Font) String() string {
	if f != "" {
		return string(f)
	}
	return "NONE"
}

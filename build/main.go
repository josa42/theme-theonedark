package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"text/template"

	"github.com/josa42/theme-generator/build/theme"
	"gopkg.in/yaml.v2"
)

func main() {
	theme := theme.Theme{}

	content, err := ioutil.ReadFile("themes/onedark.yml")
	if err != nil {
		log.Fatalf("error: %v", err)
	}

	if err := yaml.Unmarshal(content, &theme); err != nil {
		log.Fatalf("error: %v", err)
	}

	writeTheme(theme, "theme.vim", "./dist/vim/colors/theonedark.vim")
	writeTheme(theme, "lightline.vim", "./dist/vim/autoload/lightline/colorscheme/theonedark.vim")
	writeTheme(theme, "airline.vim", "./dist/vim/autoload/airline/themes/theonedark.vim")
}

func writeTheme(theme theme.Theme, templateName string, filePath string) {
	fmt.Printf("theme: %s\n", templateName)
	templ, err := template.New(templateName).ParseFiles("templates/" + templateName)
	if err != nil {
		log.Fatalf("error: %v", err)
	}

	f, err := os.Create(filePath)
	if err != nil {
		log.Fatalf("error: %v", err)
	}

	if err := templ.Execute(f, theme); err != nil {
		log.Fatalf("error: %v", err)
	}
}

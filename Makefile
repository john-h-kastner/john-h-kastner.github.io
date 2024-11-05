all: build/index.html build/pandoc.css build/resume.pdf

build/index.html: build/ index.md
	pandoc -s -t html -f markdown --css=pandoc.css -o build/index.html index.md

build/pandoc.css: build/ pandoc.css
	cp pandoc.css build/pandoc.css

build/resume.pdf: build/ resume.pdf
	cp resume.pdf build/resume.pdf

build/:
	mkdir -p build

clean:
	rm -rf build

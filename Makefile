all: build/index.html build/pandoc.css

build/index.html: build/ index.md pandoc.css
	pandoc -s -t html -f markdown --css=pandoc.css -o build/index.html index.md

build/pandoc.css: build/ pandoc.css
	cp pandoc.css build/pandoc.css

build/:
	mkdir -p build

clean:
	rm -rf build

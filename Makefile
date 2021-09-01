BUILD ?= latexmk -pdf -file-line-error -interaction=nonstopmode -synctex=1

all: Resume_web Resume_sys

%:: %.tex
	$(BUILD) $<

clean:
	git clean -fx

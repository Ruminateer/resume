BUILD ?= latexmk -pdf -file-line-error -interaction=nonstopmode -synctex=1

default: web

all: web sys

web:
	$(BUILD) Resume_web.tex

sys:
	$(BUILD) Resume_sys.tex

clean:
	git clean -fx

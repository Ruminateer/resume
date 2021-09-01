BUILD ?= latexmk -pdf -file-line-error -interaction=nonstopmode -synctex=1

default: Resume

%:: %.tex
	$(BUILD) $<

clean:
	git clean -fx

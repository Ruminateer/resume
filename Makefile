BUILD ?= latexmk -pdf -file-line-error -interaction=nonstopmode -synctex=1

.DEFAULT_GOAL := Resume

%:: %.tex
	$(BUILD) $<

clean:
	git clean -fx

resume:
	latexmk -pdf -file-line-error -interaction=nonstopmode -synctex=1 Resume.tex

clean:
	git clean -fx

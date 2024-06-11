
all: poster.pdf

poster.pdf: poster.tex $(wildcard img/*)
	pdflatex --shell-escape $<
	pdflatex --shell-escape $<

clean:
	rm -fr poster.pdf poster.aux poster.log

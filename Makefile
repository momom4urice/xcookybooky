.PHONY: all clean

all:
	latex xcookybooky.ins
	pdflatex xcookybooky.dtx
	makeindex -s gglo.ist -o xcookybooky.gls xcookybooky.glo
	makeindex -s gind.ist -o xcookybooky.ind xcookybooky.idx
	pdflatex xcookybooky.dtx
	pdflatex xcookybooky.dtx
	cp -f xcookybooky.sty testing/
	cp -f xcookybooky.sty example/xcookybooky.sty


clean:
	rm -f xcookybooky.glo
	rm -f xcookybooky.gls

	rm -f xcookybooky.idx
	rm -f xcookybooky.idxs
	rm -f xcookybooky.ilg
	rm -f xcookybooky.ind

	rm -f xcookybooky.aux
	rm -f xcookybooky.out
	rm -f xcookybooky.toc
	rm -f xcookybooky.log
	rm -f xcookybooky.synctex.gz
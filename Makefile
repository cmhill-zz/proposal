OUTNAME = prelim-$(shell date +%F).pdf

all: prelim.pdf

prelim.pdf: prelim.tex
	pdflatex prelim.tex
	bibtex prelim
	pdflatex prelim.tex
	pdflatex prelim.tex
	mv prelim.pdf ${OUTNAME}

clean:
	rm -rf prelim*.pdf
	rm -f prelim.log 
	rm -f prelim.dvi 
	rm -f prelim.aux 

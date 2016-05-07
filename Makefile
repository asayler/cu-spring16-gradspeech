REPORT=report
LATEX=pdflatex
BIBTEX=bibtex

CLS = $(wildcard *.cls)
TEX = $(wildcard *.tex)
REFS = $(wildcard *.bib)
SRCS = $(CLS) $(TEX) $(REFS)

all: pdf

pdf: $(SRCS)
	$(LATEX) $(REPORT)
	$(BIBTEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)

bibsort: $(REFS)
	$(foreach ref, $(REFS), bibtool -s -o $(ref) -i $(ref))

clean-tex:
	$(RM) *.dvi *.aux *.log *.blg *.bbl *.out *.lof *.lot *.toc

clean: clean-tex
	$(RM) $(REPORT).pdf
	$(RM) *~ .*~

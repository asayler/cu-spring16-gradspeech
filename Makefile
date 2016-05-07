REPORT=report
LATEX=pdflatex

CLS = $(wildcard *.cls)
TEX = $(wildcard *.tex)
SRCS = $(CLS) $(TEX)

all: pdf

pdf: $(SRCS)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)

clean-tex:
	$(RM) *.dvi *.aux *.log *.blg *.bbl *.out *.lof *.lot *.toc

clean: clean-tex
	$(RM) $(REPORT).pdf
	$(RM) *~ .*~

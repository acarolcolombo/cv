all: english portuguese

output/accolombo-cv-english.pdf: accolombo-cv-english.tex
	latexmk -pdf $< -outdir=output -xelatex

output/accolombo-cv-portuguese.pdf: accolombo-cv-portuguese.tex
	latexmk -pdf $< -outdir=output -xelatex

english: output/accolombo-cv-english.pdf

portuguese: output/accolombo-cv-portuguese.pdf

clean: 
	rm -r output

show: english 
	xdg-open output/accolombo-cv-english.pdf 

show pt: portuguese
	xdg-open output/accolombo-cv-portuguese.pdf 
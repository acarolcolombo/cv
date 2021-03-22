all: english portuguese

output/accolombo-cv-english.pdf: accolombo-cv-english.tex
	latexmk -pdf $< -outdir=output

output/accolombo-cv-portuguese.pdf: accolombo-cv-portuguese.tex
	latexmk -pdf $< -outdir=output

english: output/accolombo-cv-english.pdf

portuguese: output/accolombo-cv-portuguese.pdf

clean: 
	rm -r output
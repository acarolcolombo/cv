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
	@ # Redirect stdout and stderr to /dev/null for silent execution
	xdg-open output/accolombo-cv-english.pdf > /dev/null 2>&1 &

show-pt: portuguese
	@ # Redirect stdout and stderr to /dev/null for silent execution
	xdg-open output/accolombo-cv-portuguese.pdf > /dev/null 2>&1 &

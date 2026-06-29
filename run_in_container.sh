# generate table of contents
pdflatex linux_administration.tex linux_administration.pdf -y
#generate pdf again with table of contents:
pdflatex linux_administration.tex linux_administration.pdf -y
cp linux_administration.pdf /output/

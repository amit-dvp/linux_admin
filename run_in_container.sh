docker build -t linux_learn .
docker run -it -v $(pwd):/output linux_learn
pdflatex linux_administration.tex linux_administration.pdf -y
cp linux_administration.pdf /output/
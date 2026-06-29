# docker build -t linux_learn .
# docker run -it linux learn
# ls /workspaces


FROM ubuntu:24.04


# add from local directory
ADD . /linux_learn
RUN apt-get update -y
RUN apt-get install -y texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended


#RUN sudo apt install texlive-full -y
#RUN pdflatex myfile.tex linux_learn.pdf -y


# --no-install-recommends reduces the Image size by almost 15%,
# but in our case git needs --reinstall ca-certificates to work 

WORKDIR /linux_learn


CMD ["/bin/bash"]


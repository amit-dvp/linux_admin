# docker build -t linux_learn .
# docker run -it -v $(pwd):/output linux_learn
# ./run_in_container.sh



FROM ubuntu:24.04


# add from local directory
ADD . /linux_learn
RUN apt-get update -y
RUN apt-get install -y texlive-full


#RUN sudo apt install texlive-full -y
#RUN pdflatex myfile.tex linux_learn.pdf -y


# --no-install-recommends reduces the Image size by almost 15%,
# but in our case git needs --reinstall ca-certificates to work 

WORKDIR /linux_learn


CMD ["/bin/bash"]



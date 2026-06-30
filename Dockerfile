# docker build -t linux_learn .
# docker run -it -v $(pwd):/output linux_learn
# chmod +x ./run_in_container.sh
# ./run_in_container.sh



FROM ubuntu:24.04


# add from local directory
ADD . /linux_learn
RUN apt-get update -y
# this operation takes many time , but MUST be done
RUN apt-get install -y texlive-full


# --no-install-recommends reduces the Image size by almost 15%,
# but in our case git needs --reinstall ca-certificates to work 

WORKDIR /linux_learn


CMD ["/bin/bash"]



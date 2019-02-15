#
# Create an image that gets a repository from github and build an executable
#

# To build this image: docker build -t mygccimage .
# To run this image: docker run --rm mygccimage

FROM gcc
MAINTAINER eric.paquet@bentley.com

#RUN apt-get update
#RUN apt-get install -y nginx

RUN cd
RUN mkdir dev1
WORKDIR dev1
# RUN git clone https://github.com/EricPaquet/gccHello.git

ADD hello.cc hello.cc

# WORKDIR gccHello
RUN g++ hello.cc -o hello.exe

# Run this command when starting the container
CMD ["./hello.exe"]


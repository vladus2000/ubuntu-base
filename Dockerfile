FROM ubuntu:latest
MAINTAINER vladus2000 <docker@matt.land>

COPY shiz/ /

RUN \
	apt-get update && \
	apt-get -y dist-upgrade && \
	apt-get clean && \
	useradd -s /bin/bash -m user && \
	chmod +x /*.sh

CMD ["/bin/bash"]


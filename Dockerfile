FROM ubuntu:latest
MAINTAINER vladus2000 <docker@matt.land>

COPY shiz/ /

RUN \
	apt-get update && \
	apt-get -y dist-upgrade && \
	apt-get clean && \
	useradd -s /bin/bash -m user && \
	echo alias 'cd..="cd .."' >> /etc/bash.bashrc && \
	echo alias 'l="ls -CF"' >> /etc/bash.bashrc && \
	echo alias 'la="ls -A"' >> /etc/bash.bashrc && \
	echo alias 'll="ls -alF"' >> /etc/bash.bashrc && \
	echo alias 'lld="ls -ald"' >> /etc/bash.bashrc && \
	echo alias 'lrt="ls -lrt"' >> /etc/bash.bashrc && \
	echo alias 'lrta="ls -lrta"' >> /etc/bash.bashrc && \
	echo alias 'p="pgrep -af "' >> /etc/bash.bashrc && \
	echo alias 'netstat="ss"' >> /etc/bash.bashrc && \
	chmod +x /*.sh

CMD /bin/bash -c /startup.sh


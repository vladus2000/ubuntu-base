# grab things necessary to make debugging containers easier
mkdir /etc/bash_completion.d
rm /etc/apt/apt.conf.d/docker-clean
/updatethis.sh
apt-get install -y iproute2 vim wget bash_completion
echo . /etc/bash_completion >> /etc/bash.bashrc
echo . /bashrc >> /etc/bash.bashrc
echo
echo restart bash for completion
echo


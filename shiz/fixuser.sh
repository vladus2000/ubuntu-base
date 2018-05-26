if [[ ! -z "${PUID}" ]]; then
	export runcmd=echo
	export old_id=$(id -u $1)
	export old_gid=$(id -g $1)
	usermod -o -u $PUID $1
	if [[ ! -z "${PGID}" ]]; then
		groupmod -o -g $PGID $1
		if [[ ! $old_gid = $PGID ]]; then
			export runcmd="chown -R $1:$1 /home/$1"
		fi
	fi
	if [[ ! $old_id = $PUID ]]; then
		export runcmd="chown -R $1:$1 /home/$1"
	fi
	$($runcmd)
fi

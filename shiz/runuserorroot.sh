#!/bin/bash
if [[ -z "${PUID}" ]]; then
	$*
else
	/runuser.sh user $*
fi

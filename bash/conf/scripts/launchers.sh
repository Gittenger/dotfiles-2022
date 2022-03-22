vlc() {
	/usr/bin/vlc $1 2> /dev/null &!
}

kate() {
	/usr/bin/kate "$@" 2> /dev/null &!
}

mc() {
	env SHELL=/usr/bin/bash /usr/bin/mc
}


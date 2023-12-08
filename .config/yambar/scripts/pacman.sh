#!/usr/bin/env bash

declare interval aur_helper pacman_num aur_num pkg_num

# Error message in STDERR
_err() {
	printf -- '%s\n' "[$(date +'%Y-%m-%d %H:%M:%S')]: $*" >&2
}

# Display tags before yambar fetch the updates number
printf -- '%s\n' "pacman|int|0"
printf -- '%s\n' "aur|int|0"
printf -- '%s\n' "pkg|int|0"
printf -- '%s\n' ""

while true; do
	# Change interval
	# NUMBER[SUFFIXE]
	# Possible suffix:
	#  "s" seconds / "m" minutes / "h" hours / "d" days
	interval="1m"

	# Change your aur manager
	aur_helper="paru"

	# Get number of packages to update
	pacman_num=$(checkupdates | wc -l)

	if ! hash "${aur_helper}" >/dev/null 2>&1; then
		_err "aur helper not found, change it in the script"
		exit 1
	else
		aur_num=$("${aur_helper}" -Qmu | wc -l)
	fi

	pkg_num=$((pacman_num + aur_num))

	printf -- '%s\n' "pacman|int|${pacman_num}"
	printf -- '%s\n' "aur|int|${aur_num}"
	printf -- '%s\n' "pkg|int|${pkg_num}"
	printf -- '%s\n' ""

	sleep "${interval}"

done

unset -v interval aur_helper pacman_num aur_num pkg_num
unset -f _err

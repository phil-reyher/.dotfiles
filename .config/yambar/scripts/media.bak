#!/usr/bin/env bash
while true; do
  status=$(pgrep -c spotify_player)
	if [[ $status -eq 1 ]]; then
		echo -e "state|bool|true"
    playerctl -p spotify_player metadata -f "status|string|{{status}}"
    playerctl -p spotify_player metadata -f "artist|string|{{artist}}"
    playerctl -p spotify_player metadata -f "title|string|{{title}}"
		else
		echo -e "state|bool|false"
	fi
	echo ""
	sleep 1s
done

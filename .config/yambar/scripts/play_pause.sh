#!/usr/bin/env bash
#
player_status=$(playerctl -p spotify_player status)
if [[ $player_status = "Paused" ]]; then
	playerctl -p spotify_player play
elif [[ $player_status = "Playing" ]]; then
	playerctl -p spotify_player pause
else
	echo -e "Spotify not running"
fi

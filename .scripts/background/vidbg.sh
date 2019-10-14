#!/bin/bash

pkill xwinwrap

sleep 1

#s2='Arknights-Anime-Mobile-Game-Live-Wallpaper.mp4'
#s2='Calm-Bay-and-Blue-Sky-HD-Live-Wallpaper.mp4'
s1='Bloodmoon-Diana-Animated-Live-Wallpaper.mp4'
s2='Iron-Man-Superheroes-Marvel-War-Of-Heroes-Live-Wallpaper.mp4'

#xwinwrap -g 1920x1080+1920+0 -ov -ni -fs -s -st -sp -b -nf -- mpv --mute=yes --loop --wid WID ~/cloud/wall/vid/$vid

vo='vdpau'
xwinwrap -g ${SCREEN_X}x${SCREEN_Y} -ov -ni -s -nf -- mpv --vo=$vo --mute=yes --loop --wid WID ~/cloud/wall/vid/$s1 &
xwinwrap -g ${SCREEN_X}x${SCREEN_Y}+${SCREEN_X}+0 -ov -ni -s -nf -- mpv --vo=$vo --mute=yes --loop --wid WID ~/cloud/wall/vid/$s2 &

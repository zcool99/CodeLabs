#!/bin/sh

pacmd "set-default-sink 1"

sleep 1

echo hola a todos | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte1_v3.mp4 &
(sleep 7.5) && echo "Perdon! Lo se!, Es que me emociono" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte2_v2.mp4 &
(sleep 3.5) && echo "Por supuesto" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte3_v2.mp4 &
(sleep 39.5) && echo "En mi caso, mi cerebro esta esta ubicado en mi pecho, com pueden ver aqui!" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte4_v2.mp4 &
(sleep 26.5) && echo "Yo funciono con la plataforma Intel Edison" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte5_v2.mp4 &

# End Of File
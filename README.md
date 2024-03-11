# packman-for-LPA5

In order to launch docker image on MacOS with graphics:

1) instal XQuartz

2) om XQuartz enable 'Allow connections to network clients' on 'Security' settings tab

3) after running XQuartz in its!!! terminal run - %/opt/X11/bin/xhost + 127.0.0.1

4) in XQuartz terminal run docker image %docker run -it --rm -e DISPLAY=docker.for.mac.host.internal:0 -v /tmp/.X11-unix:/tmp/.X11-unix pacman

5) play


Please note that currently in pacman touching ghosts doen't stop the game (although 'GAME OVER' text is shown)
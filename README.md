# vivaldi-update-workaround
Basic Linux system updater shell script to work around Vivaldi browser bug VB-80663 by closing all active Vivaldi windows, updating the system, then restarting Vivaldi again. Only supports restart of a single window.

VB-80663 - Vivaldi CPU usage increases to 100% on a single core if updated while an active session is running (only occurs on Linux).

-----

How to use:

1 - Download updater.sh, standalone.sh, and (optionally) update.desktop.

2 - Move the two .sh files to permanent directories, and move update.desktop (if downloaded) to a convenient location of your choosing.

3 - Mark the two .sh files as executable.

4 - Edit line 20 of updater.sh in a text editor with your username and the path to standalone.sh.

5 - If you are using package managers other than apt or flatpak, edit the appropriate portions of update.sh to reflect this.

6 - Edit line 5 of update.desktop (if downloaded) with the path to updater.sh and (optionally) line 9 with the path to an icon file of your choosing.

7 - Double click update.desktop to run the script, or run updater.sh directly in the terminal.

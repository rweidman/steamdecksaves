#!/usr/bin/bash 
/usr/bin/rsync -av -e ssh --exclude="windows" --exclude="Program Files" --exclude="ProgramData" --exclude="Program Files (x86)"  deck@192.168.1.72:/home/deck/steamsaves/* ./
/usr/bin/git add .
/usr/bin/git commit -m "Backed up steam save files on $(date)"
/usr/bin/git push main

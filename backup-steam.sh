#!/usr/bin/bash 
rsync -av -e ssh --exclude="windows" --exclude="Program Files" --exclude="ProgramData" --exclude="Program Files (x86)"  deck@192.168.1.72:/home/deck/steamsaves/* ./
git add .
git commit -m "Backed up steam save files on $(date)"
git push main

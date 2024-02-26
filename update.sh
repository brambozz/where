#!/bin/sh

cat ~/.local/share/khal/calendars/private/*.ics > where.ics
git add where.ics
git commit -m 'update where.ics'
git push

#!/bin/sh

rm where.ics
unzip ~/Downloads/*gmail.com.ical.zip
mv *.ics where.ics
rm ~/Downloads/*gmail.com.ical.zip

git add where.ics
git commit -m 'update where.ics'
git push

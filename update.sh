#!/bin/sh

rm where.ics
unzip *.zip
mv *.ics where.ics
rm *.zip

git add where.ics
git commit -m 'update where.ics'
git push

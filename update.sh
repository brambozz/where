#!/bin/sh

echo "BEGIN:VCALENDAR" >> merge;
for file in ~/.local/share/khal/calendars/private/*.ics; do 
cat "$file" | sed -e '$d' $1 | sed -e '1,/VEVENT/{/VEVENT/p;d;}' $2  >> merge; 
done
mv merge where.ics
echo "END:VCALENDAR" >> where.ics;

git add where.ics
git commit -m 'update where.ics'
git push

#!/bin/sh

for i in "0 day" "-1 day" "-2 day" "-3 day" "-4 day" "-5 day"
do
  export today=$(date --date "$i" +'%Y-%m-%d')
  echo "for the date $today"
  ret=$(python3 job1.py)
  # echo ret $ret
  if [ -n "$ret" ]
  then
    rr=$(python3 job2.py)
    echo "CO2 cycle and trend -> $ret and Foreign Exchange rates for GBP to USD is $rr as on date $today"
    exit 0
  fi
done
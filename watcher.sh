#!/usr/bin/env

set -x
set -e

viewer=$1
view_file=$2
rake_goal=${3:-all}

while true;
do

if [ ! -z $PID ]
then
  if ps -p $PID > /dev/null
  then
    kill $PID
  fi
fi

rake $rake_goal
$viewer $view_file &
PID=$!

inotifywait --excludei .swp -r --event=modify .

done


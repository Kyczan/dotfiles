#!/bin/bash

SINK=$(pacmd list-sinks | grep -F '* index') 
DEFSINK=$(echo $SINK | cut -f1 -d' ')
pacmd list-sinks | grep index | while read line
do
  CURSINK=$(echo $line | cut -f2 -d' ')
  if [[ $DEFSINK != $CURSINK ]]; then # not current sink so switch to it
    pacmd set-default-sink $CURSINK
    pacmd list-sink-inputs | grep index | while read line
    do
      pacmd move-sink-input `echo $line | cut -f2 -d' '` $CURSINK 
    done
  fi
done

pkill -SIGRTMIN+10 i3blocks 

#!/bin/bash

## exit script on ^C
trap "exit" INT

echo "Pinging $1... ^C to cancel"

## declare the pingu array
declare -a pingu=(
  " ...        .     ...   ..    ..     .........           "
  " ...     ....          ..  ..      ... .....  .. ..      "
  " ...    .......      ...         ... . ..... BBBBBBB     "
  ".....  ........ .BBBBBBBBBBBBBBB.....  ... BBBBBBBBBB.  ."
  " .... ........BBBBBBBBBBBBBBBBBBBBB.  ... BBBBBBBBBBB    "
  "      ....... BBWWWWBBBBBBBBBBBBBBBB.... BBBBBBBBBBBB    "
  ".    .  .... BBWWBBWWBBBBBBBBBBWWWWBB... BBBBBBBBBBB     "
  "   ..   ....BBBBWWWWBBRRRRRRBBWWBBWWB.. .BBBBBBBBBBB     "
  "    .       BBBBBBBBRRRRRRRRRRBWWWWBB.   .BBBBBBBBBB     "
  "   ....     .BBBBBBBBRRRRRRRRBBBBBBBB.      BBBBBBBB     "
  "  .....      .  BBBBBBBBBBBBBBBBBBBB.        BBBBBBB.    "
  "......     .. . BBBBBBBBBBBBBBBBBB . .      .BBBBBBB     "
  "......       BBBBBBBBBBBBBBBBBBBBB  .      .BBBBBBB      "
  "......   .BBBBBBBBBBBBBBBBBBYYWWBBBBB  ..  BBBBBBB       "
  "...    . BBBBBBBBBBBBBBBBYWWWWWWWWWBBBBBBBBBBBBBB.       "
  "       BBBBBBBBBBBBBBBBYWWWWWWWWWWWWWBBBBBBBBB .         "
  "      BBBBBBBBBBBBBBBYWWWWWWWWWWWWWWWWBB    .            "
  "     BBBBBBBBBBBBBBBYWWWWWWWWWWWWWWWWWWW  ........       "
  "  .BBBBBBBBBBBBBBBBYWWWWWWWWWWWWWWWWWWWW    .........    "
  " .BBBBBBBBBBBBBBBBYWWWWWWWWWWWWWWWWWWWWWW       .... . . "
)

## loop through the pingu array
for i in "${pingu[@]}"; do
  ## loop through each line of the pingu array
  for ((j = 0; j < ${#i}; j++)); do
    ## echo each character
    ## replace "B", "W", "Y", "R" with a colored "#"
    case ${i:$j:1} in
    "B")
      echo -en "\033[0;30m#\033[0m"
      ;;
    "W")
      echo -en "\033[0;37m#\033[0m"
      ;;
    "Y")
      echo -en "\033[0;33m#\033[0m"
      ;;
    "R")
      echo -en "\033[0;31m#\033[0m"
      ;;
    *)
      echo -en "${i:$j:1}"
      ;;
    esac
  done
  ping -c 1 $1 | head -2 | tail -1
  sleep 1
done

## ping indefinitely
while true; do
  echo -n "                                                         "
  ping -c 1 $1 | head -2 | tail -1
  sleep 1
done

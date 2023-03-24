#!/bin/bash

# run the web development model
main() {
  while true
  do
    develop
    wipe
  done
}

# model the development of features for a web app
develop() {
  for i in {1..10}
  do
    LINE=$((7+$i))
    sed -i "$LINE i \\\t\t<li>This is feature number $i</li>" index.html
    sleep 5
  done
}

# remove the so-called features so the model can keep running
wipe() {
  sed -i "8,17d" index.html
}

main

#!/bin/bash

# Демонстрация безпозиционной передачи параметров в bash-скрипт


if [[ $# == 0 ]]
then
  echo "ERROR!!!"
  exit 1
fi

while [[ -n "$1" ]]
do
  echo "$1"
  case "$1" in
    "--env" )
      printenv
     ;;
     "--git" )
       git status
     ;;
     * )
       echo "ERROR!!!"
       exit 1
     ;;
  esac
  shift
done

#!/bin/bash
# AerE 361 Ex 1 Autograder
# Professor Nelson

#FILE1 = "lab2.log"

if [ -e $1 ];
then
    echo -e "Checking that $1 is present....OK"
    if [ -s $1 ];
    then
      ex1="Yes "
      echo -e "Checking that $1 is not empty....OK"
    else
      echo -e "Checking that $1 is not empty....FAILED"
      exit 1
    fi
else
    ex1=" No "
    message="$message Can't find or verify your log file for exercise 1, did you start script?\n"
    echo -e "Checking for $1 file....FAILED"
    exit 1
fi

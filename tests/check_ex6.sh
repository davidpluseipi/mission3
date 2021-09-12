#!/bin/bash
# AerE 361 Ex 6 Autograder
# Professor Nelson

FILE1="unixstuff/result.txt"

if [ -e $FILE1 ];
then
    ex6="Yes "
    echo -e "Checking for $FILE1 file....OK"
    if [ -s $FILE1 ];
    then
      ex1="Yes "
      echo -e "Checking that $FILE1 is not empty....OK"
      if grep -q "7.2222222" $FILE1 && grep -q "138.09353" $FILE1 && grep -q "0.70710678" $FILE1;
        then
          ex6="Yes "
          echo -e "Checking values in $FILE1 file....OK"
        else
          ex6=" No "
          echo -e "Checking values in $FILE1 file....FAILED"
          exit 1
      fi
    else
      echo -e "Checking that $FILE1 is not empty....FAILED"
      exit 1
    fi
else
    ex6=" No "
    message="$message Can't find your result.txt file for exercise 6, check spelling and location\n"
    echo -e "Checking for $FILE1 file....FAILED"
    exit 1
fi

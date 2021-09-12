#!/bin/bash
# AerE 361 Ex 3 Autograder
# Professor Nelson

FILEA="unixstuff/list1"
FILEB="unixstuff/list2"
FILEC="unixstuff/biglist"
FILED="unixstuff/slist"
FILEE="unixstuff/names.txt"

if [ -e $FILEA ] && [ -e $FILEB ] && [ -e $FILEC ] && [ -e $FILED ];
then
  ex3="Yes "
  echo -e "Checking that list1,list2, biglist and slist is present....OK"
  if [ -s $FILEA ];
  then
    echo -e "Checking that list1 is not empty....OK"
  else
    ex3=" No "
    echo -e "Checking that list1 is not empty....FAILED"
    exit 1
  fi
  if [ -s $FILEB ];
  then
    echo -e "Checking that list2 is not empty....OK"
  else
    ex3=" No "
    echo -e "Checking that list2 is not empty....FAILED"
    exit 1
  fi
  if [ -s $FILEC ];
  then
    echo -e "Checking that biglist is not empty....OK"
    if grep -q "apple" $FILEC && grep -q "mango" $FILEC;
    then
      echo -e "Validating answers in biglist....OK"
    else
      echo -e "Validating answers in biglist....FAILED"
      exit 1
    fi
  else
    ex3=" No "
    echo -e "Checking that biglist is not empty....FAILED"
    exit 1
  fi
  if [ -s $FILED ];
  then
    echo -e "Checking that slist is not empty....OK"
  else
    ex3=" No "
    echo -e "Checking that slist is not empty....FAILED"
    exit 1
  fi
  if [ -s $FILEE ];
  then
    echo -e "Checking that names.txt is not empty....OK"
  else
    ex3=" No "
    echo -e "Checking that names.txt is not empty....FAILED"
    exit 1
  fi

else
    ex3=" No "
    message="$message Can't find your list files for exercise 3, check spelling and locations\n"
    echo -e "Checking for list1, list2, biglist, names.txt, and slist files....FAILED"
    exit 1
fi

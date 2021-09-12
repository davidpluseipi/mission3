#!/bin/bash
# AerE 361 Ex 7 Autograder
# Professor Nelson

FILE1="comsol/cylinder_flow.output"
FILE2="comsol/cylinder_flow_solution.mph.status"

if [ -e $FILE1 ] && [ -e $FILE2 ];
then
    ex7="Yes "
    echo -e "Checking for cylinder_flow.output and status file....OK"
    if [ -s $FILE1 ];
    then
      ex1="Yes "
      echo -e "Checking that $FILE1 is not empty....OK"
      if grep -q "Saving model:" $FILE1;
        then
          ex6="Yes "
          echo -e "Checking COMSOL completed in $FILE1 file....OK"
        else
          ex6=" No "
          echo -e "Checking completion in $FILE1 file....FAILED"
          exit 1
      fi
    else
      echo -e "Checking that $FILE1 is not empty....FAILED"
      exit 1
    fi
    if [ -s $FILE2 ];
    then
      ex1="Yes "
      echo -e "Checking that $FILE2 is not empty....OK"
      if grep -q "Done" $FILE2;
        then
          ex6="Yes "
          echo -e "Checking status of Done in $FILE2 file....OK"
        else
          ex6=" No "
          echo -e "Checking status of Done in $FILE2 file....FAILED"
          exit 1
      fi
    else
      echo -e "Checking that $FILE2 is not empty....FAILED"
      exit 1
    fi
else
    ex7=" No "
    message="$message Can't find your output files for exercise 7, check spelling and location\n"
    echo -e "Checking for cylinder_flow.output and status file....FAILED"
    exit 1
fi

#!/bin/bash
name="npm"

dpkg -s $name &> /dev/null  
if [ $? -ne 0 ]
then
  echo "$name"
  echo "not installed"
else
  echo    "installed"
fi



dpkg -s "" &> /dev/null  
if [ $? -ne 0 ]
then
  
else
  echo "already installed."
fi

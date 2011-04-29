#!/bin/bash
if test -z "$1"
then
  find ./ -name .git -type d
else
  find $1 -name .git -type d
fi





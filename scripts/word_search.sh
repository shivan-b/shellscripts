#!/bin/bash

echo "enter word to be searched"
read word

#search=`grep -l -R $word ~/*`

echo the files containing the word $word are:
grep -l -R $word ~/*

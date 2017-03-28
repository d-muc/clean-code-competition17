#!/bin/bash

timer=../xtime.rb
inputFile="test.small 1=MEAN 2=SUM"

echo "Run D"
$timer bin/d $inputFile

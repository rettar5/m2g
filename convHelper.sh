#!/bin/sh

if [ "$#" -eq 1 ] 
then 
    impName=${1}
    expName=${1//.mov/.gif}
    expName=${expName//.MOV/.gif}
    `ffmpeg -i ${impName} -vf scale=640:-1 -r 10 ${expName}`
else
    echo "Usage: m2g <filename>"
fi



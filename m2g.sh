#!/bin/sh

# 出力画像の横幅初期値
WIDTH=320
# ファイルパスの取得
FILEPATH=""

while getopts ":w:f:" OPT
do
    case $OPT in
        w ) WIDTH=${OPTARG} ;;
        f ) FILEPATH=${OPTARG} ;;
    esac
done


if [ "" != "${FILEPATH}" ] 
then 
    impName=${FILEPATH}
    expName=`echo ${FILEPATH} | sed -e "s/\.[a-zA-Z0-9]*$/.gif/g"`

    `ffmpeg -i ${impName} -vf scale=${WIDTH}:-1 -r 10 ${expName}`
else
    echo "Usage: m2g [-w WIDTH] [-f FIILEPATH]"
fi



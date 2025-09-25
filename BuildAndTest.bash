#!/bin/env bash
set -e -x
repository=$1
tagname=$2
# Aux vars:
imagedir="$repository"/"$tagname"
imagefullid=joaojeronimopro/"$repository":"$tagname"

cd $imagedir

echo ========================================
echo ===== Building - $imagefullid:
echo ========================================
docker build -t $imagefullid .

if [[ -f ./SmokeTest.bash ]]
then
    echo ========================================
    echo ===== Smoketest - $imagefullid:
    echo ========================================
    ./SmokeTest.bash $repository $tagname
fi

#!/bin/bash
virtualenv .get_build
source .get_build/bin/activate

pip install treeherder-client==3.0.0
pip install docopt

wget -O get_build.py https://raw.githubusercontent.com/Mozilla-TWQA/Hasal/master/tools/get_build.py

if [ -n "$BuildHash" ]
then
    python get_build.py $Email $Platform --build-hash=$BuildHash
else
    python get_build.py $Email $Platform
fi

rm -rf firefox
filename=$(find *.tar.bz2)
tar xjvf $filename

ln -fs $WORKSPACE/firefox/firefox /usr/bin/

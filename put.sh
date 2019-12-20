#!/bin/bash
dir=`pwd`
tabfile kan_rus.txt
tac kan_rus.ifo | sed -e '1,2d' | tac > kan_rus.ifo~
echo "`./git-revision.sh`" >> kan_rus.ifo~
mv kan_rus.ifo~ kan_rus.ifo
mv $dir/kan_rus.dict.dz $dir/compiled/kan_rus
mv $dir/kan_rus.ifo $dir/compiled/kan_rus
mv $dir/kan_rus.idx $dir/compiled/kan_rus
cd $dir/compiled
zip -9 -r kan_rus.zip kan_rus

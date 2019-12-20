#!/bin/bash
#revisioncount=`git log --oneline | wc -l`
revisioncount=`git log --oneline | wc -l | tr -d ' '`
projectversion=`git describe --tags --long`
#cleanversion=${projectversion%%-*}
date=`date +%d-%m-%Y`

echo "bookname=Tiny Kannada-Russian Vocabulary
sametypesequence=m
description=Based on Anki Deck created by Nikolaj Potanin (nikolaj@potanin.org.ru). Revision $revisioncount, $date
date=$date"

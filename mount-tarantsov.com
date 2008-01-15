#! /bin/bash
test -d /Volumes/tarantsov.com || mkdir /Volumes/tarantsov.com
sshfs andreyvit@tarantsov.com:/sites /Volumes/tarantsov.com -orw -oreconnect -oumask=000 "-ovolname=tarantsov.com"

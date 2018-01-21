#!/bin/bash

readonly DEVDIR=$HOME/.Dev
readonly CURRDIR=`pwd`
readonly BASH_ADDON=$DEVDIR/devFunction
echo -e "All files related to dev will be removed..."
echo -e "Press ctrl+c to cancel or wait 5 seconds.."

COUNTER=5
while [ $COUNTER -gt 0 ]; do
    
    echo -n " $COUNTER"
    let COUNTER=COUNTER-1
    sleep 1
done
echo ""

if [ -d $DEVDIR ]
then
    cd $DEVDIR
    echo -e "Removing files on $DEVDIR"
    sleep 0.5
    echo -e "Removed bash.sh file..."
    sleep 0.5; rm bash.sh
    echo -e "Removed py.py file..."
    sleep 0.5; rm py.py
    echo -e "Removed c.c file..."
    sleep 0.5; rm c.c 
    echo -e "Removed cpp.c++ file..."
    sleep 0.5; rm cpp.c++
    echo -e "Removed java.java file..."
    sleep 0.5; rm java.java 
    echo -e "Removed html.html file..."
    sleep 0.5; rm html.html
    echo -e "Removed Makefile..."
    sleep 0.5; rm Makefile
    echo -e "Removed devFunction file..."
    sleep 0.5; rm devFunction
    cd ..
    rm -rf $DEVDIR
    sleep 0.5
else
    echo -e "Error! $DEVDIR Does Not Exits."
    exit
fi

echo -e "Cleaning .bashrc"
cat .bashrc.no.dev > .bashrc
rm .bashrc.no.dev
sleep 0.5
echo -e "Done!"
sleep 0.5

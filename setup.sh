#!/bin/bash

readonly DEVDIR=$HOME/.Dev
readonly CURRDIR=`pwd`
readonly BASH_ADDON=$DEVDIR/devFunction
echo -e "Creating required Directories..."

mkdir $DEVDIR

if [ -d $DEVDIR ]
then
    echo -e "Adding files to $DEVDIR"
    sleep 0.5
    echo -e "Added bash.sh file..."
    cp bash.sh $DEVDIR; sleep 0.5
    echo -e "Added py.py file..."
    cp py.py $DEVDIR; sleep 0.5
    echo -e "Added c.c file..."
    cp c.c $DEVDIR; sleep 0.5
    echo -e "Added cpp.c++ file..."
    cp cpp.c++ $DEVDIR; sleep 0.5
    echo -e "Added java.java file..."
    cp java.java $DEVDIR; sleep 0.5
    echo -e "Added html.html file..."
    cp html.html $DEVDIR; sleep 0.5
    echo -e "Added Makefile..."
    cp Makefile $DEVDIR; sleep 0.5
    echo -e "Added devFunction file..."
    cp devFunction $DEVDIR; sleep 0.5
    echo -e "Added setup file..."
    cp setup $DEVDIR; sleep 0.5
    echo -e "Added setup.sh file..."
    cp setup.sh $DEVDIR; sleep 0.5
    echo -e "Added removeDev file..."
    cp removeDev $DEVDIR; sleep 0.5
    echo -e "Added removeDev.sh file..."
    cp removeDev.sh $DEVDIR; sleep 0.5
    

else
    echo -e "Error creating $DEVDIR"
    exit
fi

cd $DEVDIR
echo -e ""
echo -e "Setting up user's name"
sed -i 's/Jorge Cardona/'$USER'/g' ./*.*

sleep 0.5

cd $HOME 
echo -e "Setting up .bashrc"
cp .bashrc .bashrc.no.dev
#DO NOT CHANGE >> TO >
cat  $BASH_ADDON >> .bashrc
sleep 0.5
. .bashrc

sleep 0.5

cd $CURRDIR
echo -e ""
echo -e "+++++++++++++++++ dev Command +++++++++++++++++++"
echo -e "+                                \t\t+"
echo -e "+ All set up completed.             \t\t+"
echo -e "+                                 \t\t+"
echo -e "+ Usage: $ dev filename.*          \t\t+"
echo -e "+ Supported file extentions are:\t\t+"
echo -e "+\t .c\t.c++ or .cpp\t.java\t.py     +"
echo -e "+\t .sh and .html           \t\t+"
echo -e "+                                \t\t+"
echo -e "+ Files where stored at:         \t\t+"
echo -e "+ $DEVDIR                            +"
echo -e "+                                \t\t+"
echo -e "+ To remove the 'dev' command:   \t\t+"
echo -e "+ cd $DEVDIR                         +"
echo -e "+ then run the command: make clean \t\t+"
echo -e "+                                \t\t+"
echo -e "+ Re+open terminal to see changes\t\t+"
echo -e "+                                \t\t+"
echo -e "+++++++++++++++++++++ END +++++++++++++++++++++++"
echo -e ""
echo -e "Done!"
echo -e ""

echo -e "
NOTE:
To change the default editor, navigate to:
\tcd $HOME 
and edit at the bottom of .bashrc:
    EDITOR='emacs'
    #EDITOR='vim'                                                              
    #EDITOR='vi'                                                               
    #EDITOR='nano'                                                             
    #EDITOR='pico' 
with your deciered Text editor"
echo -e ""
sleep 0.5

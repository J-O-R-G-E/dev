# Dev
A fun project that populates common files such as C++, C, Java, Python, Bash, and HTML

# Idea
The purpose of this project populate common files when first created.
For example, a C file when first create will have:



    #include <stdio.h>
    
    int main(int argc, char *argv[]){


    	return 0;
    }




Same for Jave Files, and others mentioned above.

# Usage
One important note:
    This script will modify your .bashrc file
    please make a back up to avoid any issues.

git clone https://github.com/J-O-R-G-E/dev.git
cd dev
make
make run

To remove:
cd dev
make clean

# Files
During execution, there are some files and directories
that are created.
$HOME/.Dev/
$HOME/.bashrc.no.dev which is a back up for 'make clean'

# Aditional Info
For help with the dev command, use the following:
$ dev dev
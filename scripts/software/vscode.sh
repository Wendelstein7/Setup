#!/bin/bash

wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
if [ $? -eq 0 ]; then
    sudo apt install ./vscode.deb
else
    echo "Problem downloading vscode.deb, install not attempted."
fi

rm -f ./vscode.deb
#!/bin/bash
# Script for uninstall Fsociety tools

# ----- FSociety Team -----

#

# Coded by: ENI9MA

#  * https://github.com/enigmaDEVELOPERZ/

# Feel free to share any ideas with the
# project!
#
# -------------------------

clear

echo "

";

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then

    INSTALL_DIR="$PREFIX/usr/share/doc/fsociety"

    BIN_DIR="$PREFIX/bin/"

    BASH_PATH="$PREFIX/bin/bash"

    TERMUX=true

elif [ "$(uname)" = "Darwin" ]; then

    INSTALL_DIR="/usr/local/fsociety"

    BIN_DIR="/usr/local/bin/"

    BASH_PATH="/bin/bash"

    TERMUX=false

else

    INSTALL_DIR="$HOME/.fsociety"

    BIN_DIR="/usr/local/bin/"

    BASH_PATH="/bin/bash"

    TERMUX=false

fi

echo "[✔] Checking directories...";

if [ -d "$INSTALL_DIR" ]; then

        rm -rf "$INSTALL_DIR"

        rm "$BIN_DIR/fsociety*"

        sudo rm -rf "$INSTALL_DIR"

        sudo rm "$BIN_DIR/fsociety*"

    else

        echo "[✘] If you want to uninstall you must remove previous installations [✘] ";

        echo "[✘] Failed! [✘] ";

fi

echo "[✔] Cleaning up old directories...";

if [ -d "$ETC_DIR/enigmaDEVELOPERZ" ]; then

    echo "$DIR_FOUND_TEXT"

    if [ "$TERMUX" = true ]; then

        rm -rf "$ETC_DIR/enigmaDEVELOPERZ"

    else

        sudo rm -rf "$ETC_DIR/enigmaDEVELOPERZ"

    fi

fi

clear

clear

echo "[✔] all good!"

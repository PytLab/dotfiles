#!/usr/bin/env bash

set -e

if [ "$1" = "--debug" ]; then
    export DOTFILES_DEUBG=1
    shift
fi

[ -n "${DOTFILES_DEUBG}" ] && set -x
	
if [ "$1" = "--install" ]; then
	chmod +x ./install.sh
    ./install.sh
elif [ "$1" = "--uninstall" ]; then
	chmod +x ./uninstall.sh
	./uninstall.sh
fi

unset DOTFILES_DEUBG


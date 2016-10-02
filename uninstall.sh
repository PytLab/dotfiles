#!/usr/bin/env bash

set -e
[ -n "${DOTFILES_DEBUG}" ] && set -x

RUNNING=$(basename $0)
HOME=${HOME}

# Run script directly.
if [ "$RUNNING" = "uninstall.sh" ]; then
	dotfiles=(".vimrc" ".gitconfig" ".pip")

	for dotfile in "${dotfiles[@]}"
	do
		echo "Remove symlink "${HOME}/${dotfile}"..."
		rm "${HOME}/${dotfile}"
	done

	echo "Done!"
fi


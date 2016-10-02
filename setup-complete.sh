#!/usr/bin/env bash
complete -F _setup_complete_func ./setup.sh

_setup_complete_func()
{
    local cur prev opts
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[COMP_CWORD-1]}"
	opts="--help --debug --install --uninstall"

	if [[ "${cur}" == * ]]; then
        COMPREPLY=($(compgen -W "${opts}" -- ${cur}))     
        return 0
	fi
}


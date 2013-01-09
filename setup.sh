#!/bin/bash

mkdir ~/.bash_it/aliases/enabled
mkdir ~/.bash_it/completion/enabled
mkdir ~/.bash_it/plugins/enabled

aliases () {
    for alias in general git homebrew osx
    do
        bash-it enable alias $alias
    done
    if [ $(uname) = "Darwin" ]
    then
        bash-it enable alias homebrew
        bash-it enable alias osx
    fi
}

completions () {
    for completion in bash-it defaults git ssh tmux
    do
        bash-it enable completion $completion
    done
    if [ $(uname) = "Darwin" ]
    then
        bash-it enable completion brew
    fi
}

plugins () {
    for plugin in base git ssh tmux
    do
        bash-it enable plugin $plugin
    done
}

aliases
completions
plugins

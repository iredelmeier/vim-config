#!/bin/bash

set -eu

CWD="$(cd "$(dirname -- "$0")" && pwd)"

ln -sfn "${CWD}/init.vim" "${HOME}/.vimrc"
ln -sfn "$CWD" "${HOME}/.vim"

ln -sfn "$CWD" "${HOME}/.config/nvim"

vim +'PlugInstall --sync' +qa

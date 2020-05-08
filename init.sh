#!/bin/bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "ln -nfs \"${dir}\" \"$HOME/sh\""
ln -nfs "${dir}" "$HOME/sh"

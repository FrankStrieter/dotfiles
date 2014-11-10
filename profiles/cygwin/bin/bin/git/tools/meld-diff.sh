#!/bin/sh
#
# export GIT_DIFFMERGE_VERBOSE=1 to enable logging
#

script_path=${0%/*}
source "$script_path/diff-and-merge-support.sh"

difftool="/c/Tools/Meld/meld/meld.exe"
get_diff_args "$1" "$2"

"$difftool" --diff "$old" "$new"

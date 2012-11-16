#!/usr/bin/env bash
# Prints current branch in a VCS directory if it could be detected.

# Source lib to get the function get_tmux_pwd
segment_path=$(dirname $0)
source "$segment_path/../lib.sh"

tmux_path=$(get_tmux_cwd)
cd "$tmux_path"

branch_symbol="⭠"
git_colour="colour5"
git_svn_colour="colour34"
svn_colour="colour220"
hg_colour="colour45"

rvm_output=`rvm current | sed 's/ruby-//g' | sed 's/@//g'`

echo $rvm_output

#if [ -n "$branch" ]; then
#	echo "${branch}"
#fi

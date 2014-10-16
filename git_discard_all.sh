#!/bin/sh
# Daniel Spag 2014

if [ $# -gt 1 ] || ([ $# -eq 1 ] && [ "$1" != "--deep" ])
then
	echo "Usage: git_discard_all.sh -> Discard all non-staged changes"
	echo "Usage: git_discard_all.sh --deep -> Discard all staged and non-staged changes"
	exit
fi

if [ "$1" == "--deep" ]
then
	git reset HEAD .
    git submodule foreach "(echo Un-staging staged changes; git reset HEAD .)"
fi

git checkout -- .
git submodule foreach "(echo Discarding changes; git checkout -- .)"

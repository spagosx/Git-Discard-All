Git-Discard-All
===============

A bash shell script with which you can discard all committed and/or uncommitted changes in your project and all its git submodules

So, you have uncommitted changes in your git working copy. Now you want to get rid of all of them to go back to a clean state; you can do `git checkout -- .` and that should be it. 
But what if you have submodules? You need to navigate to each submodule folder and run the same command. This script does it for you:
`./git_discard_all.sh` and you have a clean state in both the main project and all the submodules.

Now, what if you have uncommitted changes that are staged for commit? You need to do `git reset HEAD .` to unstage everything and then `git checkout -- .`; again this simple script comes in handy: `./git_discard_all.sh --deep` and that's it.

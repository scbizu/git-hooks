#!/bin/sh
# Usage: `install.sh` will install all git-hooks in this repository to your local git repository.
#        It will not overwrite any existing git-hooks.

if [ -d ".git" ]; then
  echo "Installing git-hooks to your local git repository..."
  cp -nr hooks/* .git/hooks/
  echo "Done."
else
  echo "You must run this script from the root of your local git repository."
fi

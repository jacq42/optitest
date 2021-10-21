#!/bin/bash

if [ $# -ne 1 ]; then
  echo 1>&2 "Usage: $0 TYPE (HUK|GITHUB)"
  echo
  exit 3
fi

USER_NAME=""
USER_EMAIL=""

if [ $1 == 'HUK' ]; then
  USER_NAME="Jacqueline.Krech"
  USER_EMAIL="Jacqueline.Krech@extern.huk-coburg.de"
fi

if [ $1 == 'GITHUB' ]; then
  USER_NAME="jacq42"
  USER_EMAIL="jacq42@users.noreply.github.com"
fi



echo "old: git config user.name $(git config user.name)"
git config user.name "$USER_NAME"
echo "new: git config user.name $(git config user.name)"
echo

echo "old: git config user.email $(git config user.email)"
git config user.email "$USER_EMAIL"
echo "new: git config user.email $(git config user.email)"
echo

echo "old: git config credential.helper $(git config credential.helper)"
git config credential.helper store
echo "new: git config credential.helper $(git config credential.helper)"
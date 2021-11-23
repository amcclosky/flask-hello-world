#! /usr/bin/env sh
set -e

echo "Install a recent version of pip"
pip install --upgrade pip

pip install pipx
pipx install supervisor

echo "Install depenencies w/ poetry"
pip install -r requirements.txt

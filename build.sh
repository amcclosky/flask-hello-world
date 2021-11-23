#! /usr/bin/env sh
set -e

echo "Install a recent version of pip"
pip install --upgrade pip

export TOOLS_VENV=./.tools
python -m venv ${TOOLS_VENV}

export PIPX_HOME=./.pipx
export PIPX_BIN_DIR=./.tools-bin/bin

mkdir -p ${PIPX_HOME}
mkdir -p ${PIPX_BIN_DIR}

${TOOLS_VENV}/bin/pip install pipx
${TOOLS_VENV}/bin/pipx install supervisor

echo "Install depenencies w/ poetry"
pip install -r requirements.txt

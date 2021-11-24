#! /usr/bin/env sh
set -e

echo "Install a recent version of pip"
pip install --upgrade pip

echo "Install pipx"
export TOOLS_VENV=./.tools
python -m venv ${TOOLS_VENV}

export PIPX_HOME=./.pipx
export PIPX_BIN_DIR=./.local/bin

# ensure the pipx directories exist
mkdir -p ${PIPX_HOME}
mkdir -p ${PIPX_BIN_DIR}

${TOOLS_VENV}/bin/pip install pipx

# Use pipx to install supervisor to an isolated venv
echo "Install supervisord"
${TOOLS_VENV}/bin/pipx install supervisor

echo "Install depenencies w/ poetry"
pip install -r requirements.txt

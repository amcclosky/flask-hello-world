#! /usr/bin/env sh
set -e

echo "Start webserver"
exec gunicorn app:app

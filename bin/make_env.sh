#!/usr/bin/env bash
# Generate a .env file for local development
cat > ${1:?Missing target file} << _EOF
LOCAL_UID=$(id -u)
LOCAL_GID=$(id -g)
FIGMA_FILE=
FIGMA_ACCESS_KEY=
_EOF

#!/usr/bin/env bash
# Generate a .env file for local development
cat > ${1:?Missing target file} << _EOF
LOCAL_UID=$(id -u)
LOCAL_GID=$(id -g)
VUE_APP_FIGMA_FILE=
VUE_APP_FIGMA_ACCESS_KEY=
_EOF

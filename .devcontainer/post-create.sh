#!/bin/bash

set -e

if [[ "${CODESPACES}" == true ]]; then
  echo "Fixing permissions of /tmp for GitHub Codespaces..." >&2
  sudo chmod 1777 /tmp
fi

pnpm install
sudo install-tool php 8.3.4
sudo install-tool composer 2.7.2


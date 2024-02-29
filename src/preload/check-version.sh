#!/usr/bin/env bash

if [[ "${BASH_VERSINFO[0]}" -lt 5 ]]; then
    echo "Bash 5 or later is required to run this script." >&2
    exit 1
fi

#!/usr/bin/env bash

srcdir="$(
    cd "$(dirname "${0}")" || exit 1
    pwd
)"

preload() {
    #shellcheck source=./preload/init.sh
    source "${srcdir}/preload/init.sh"

    #shellcheck source=./preload/check-version.sh
    source "${srcdir}/preload/check-version.sh"

    #shellcheck source=./preload/check-requirements.sh
    source "${srcdir}/preload/check-requirements.sh"
}



main() {
    preload
    build_libaacs
}

main

#!/usr/bin/env bash

set -e

if [[ ! -d /ctsm-api/resources/ctsm ]]; then
    cd /ctsm-api/resources/

    git clone https://github.com/NorESMhub/NorESM ctsm

    cd ctsm

    git checkout 1728491743cc572981863764c13bad4949025590

    ./manage_externals/checkout_externals

    rsync -rv ../overwrites/ .
fi

source /ctsm-api/docker/entrypoint_setup.sh

sudo -s -E -u "$USER" bash <<EOF

cd /ctsm-api

./scripts/migrations_forward.sh


uvicorn app.main:app --host 0.0.0.0

EOF

#!/bin/sh

set -e

# Run from parent directory
cd "$( dirname "$0" )" && cd ..

PRISMA_ENDPOINT_BASE=https://tw-data-52.herokuapp.com/app

prisma login -k $PRISMA_CLI_KEY &>/dev/null

if [[ $CIRCLE_BRANCH == "develop" ]]; then
  PRISMA_ENDPOINT="$PRISMA_ENDPOINT_BASE/staging" \
  PRISMA_SECRET=$PRISMA_SECRET_STAGING \
  prisma deploy
fi

if [[ $CIRCLE_BRANCH == "master" ]]; then
  PRISMA_ENDPOINT="$PRISMA_ENDPOINT_BASE/production" \
  PRISMA_SECRET=$PRISMA_SECRET_PRODUCTION \
  prisma deploy
fi

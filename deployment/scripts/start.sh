#!/bin/bash

case ${TRAVIS_BRANCH} in
    development)
        NODE_ENV=development
        ;;
    staging)
        NODE_ENV=staging
        ;;
    master)
        NODE_ENV=production
        ;;
    *)
        echo "Branch ${TRAVIS_BRANCH}. Not deploying"
        exit 0
esac


if [ "$NODE_ENV" == "" ]; then
  exit
fi

echo "NODE_ENV = ${NODE_ENV}"

echo "Installing dependencies..." &&
npm install &&

echo "Testing..." &&
npm test &&

if [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
    echo "Pull Request. Not packaging"
    echo "Done."
    exit 0
fi

echo "Creating package..." &&
tar czf deployment/artifacts/${TRAVIS_COMMIT}.tgz index.js lib &&

echo "Deploying to server..." &&

echo "Done." &&

exit 0


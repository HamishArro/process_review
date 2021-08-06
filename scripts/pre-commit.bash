#!/usr/bin/env bash

echo "Running pre-commit hook"
./scripts/run-rubocop.bash

if [ $? -ne 0 ]; then
 echo "RuboCop no likey"
 exit 0
fi

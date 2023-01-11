#!/bin/bash -l

set -o errexit
set -o pipefail
set -o nounset

set -o xtrace

lower=$1
upper=$2
echo "lower bound $lower; upper bound $upper"

num_commits=$(awk "BEGIN{srand();print int(rand()*($upper-$lower))+$lower }")
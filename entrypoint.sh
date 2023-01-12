#!/bin/bash -l

set -o errexit
set -o pipefail
set -o nounset

set -o xtrace

lower=$1
upper=$2
user_name=$3
user_email=$4
echo "lower bound $lower; upper bound $upper"

num_commits=$(awk "BEGIN{srand();print int(rand()*($upper-$lower))+$lower }")

echo git config --global user.name $user_name
echo git config --global user.email $user_email

for c in $(seq 1 $num_commits)
do
    # Generate empty commits 
    echo git commit --allow-empty -m "$c"
done
    
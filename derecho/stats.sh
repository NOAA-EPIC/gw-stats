#!/bin/bash

set -x

casename=$1

python ../src/stat4sfs.py --workdir=. --filename=${casename}.stats | tee stats.${casename}


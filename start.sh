#!/bin/bash
set -euf -o pipefail

cp $1 input.txt
python /HelloWorld.py

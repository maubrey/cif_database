#! /bin/bash


BASEDIR=$(dirname "$0")
cd "$BASEDIR"
source $(python ../python/setup.py "PYTHON_PATH")
which python
python ../python/structure_database_robust.py
#!/bin/bash

GBA_DIR="/gbagame"

if [ -z ${GBA_DIR}/tools/agbcc/agbcc ];
then
  cd /home/ubuntu/agbcc
  ./build
  ./install.sh ${GBA_DIR}
fi

if [ -z ${GBA_DIR}/tools/agbcc/agbcc ];
then
  echo "agbcc not present after installation"
  exit 1
fi

echo "agbcc installed"

cd ${GBA_DIR}

if [ $# -gt 0 ];
then
  make -j $1
else
  make
fi

#!/bin/bash
set -e
# libtoolize does not work across bind mounts in devbox
mkdir -p .image/generated
pushd conf
python generate.py
popd
if [ -f nutcracker ]; then
  echo "Already built"
  exit 0
fi
# nutcracker build cannot deal with bind mounts so we copy
mkdir -p /build/twemproxy
cp -R * /build/twemproxy/
pushd /build/twemproxy
autoreconf -fvi
./configure
make
make install
popd
mv /usr/local/sbin/nutcracker nutcracker

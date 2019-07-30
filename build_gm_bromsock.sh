#!/bin/bash

mkdir /output
echo "[*] Building gm_bromsock"
make -C /data/gm_bromsock
mv /data/gm_bromsock/gmsv_bromsock_linux.so /output
echo "[*] Built file 'gmsv_bromsock_linux.so'"
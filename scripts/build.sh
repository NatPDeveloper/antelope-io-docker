#! /bin/bash

sudo docker build -t natpdev/leap-cdt ./leap-cdt
# sudo docker build -t natpdev/leap-cdt-dfuseeos ./leap-cdt-dfuseeos
sudo docker build -t natpdev/dfuseeos ./dfuseeos
sudo docker build -t natpdev/zeus ./zeus
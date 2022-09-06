#! /bin/bash

sudo docker build -t natpdev/leap-cdt .
sudo docker build -t natpdev/zeus ./zeus
sudo docker push natpdev/leap-cdt
sudo docker push natpdev/zeus
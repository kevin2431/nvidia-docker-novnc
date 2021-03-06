#!/bin/bash

echo "********************************************************************************"
echo ""
echo "Setting up the host."
echo ""
echo "********************************************************************************"

cd setup_host
./basics.sh
./install-nvidia-drivers.sh
./install-nvidia-docker2.sh
./add_xhost.sh
cd ..

echo "********************************************************************************"
echo ""
echo "Creating the docker container."
echo ""
echo "********************************************************************************"

docker build -t gui_lab gui_lab

echo "********************************************************************************"
echo ""
echo "All done. Now you can run the container by running run.sh."
echo ""
echo "********************************************************************************"



#!/bin/bash

# run this on a fresh env to get everything for sumulation

sudo apt-get install maxima
sudo apt-get install git

git clone https://github.com/admech/maxima.git --branch gcp --single-branch
git config --global user.email "kiriger@gmail.com"
git config --global user.name "Kirill V. Gerasimov"

echo "   " >> ~/.bashrc
echo "# a handy function for viewing simulation logs" >> ~/.bashrc
echo "view() { less ~/maxima/sol/\$1/out/run.log; }" >> ~/.bashrc

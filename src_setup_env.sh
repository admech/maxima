#!/bin/bash

# run this on a fresh env to get everything for sumulation
# Maxima is being built from source with SBCL - the fast LISP.

sudo apt-get install sbcl
sudo apt-get install make
sudo apt-get install autotools-dev
sudo apt-get install texinfo

sudo apt-get install gnuplot
sudo apt-get install git

mkdir src_maxima
cd src_maxima
wget https://downloads.sourceforge.net/project/maxima/Maxima-source/5.40.0-source/maxima-5.40.0.tar.gz
tar -xvzf maxima-5.40.0.tar.gz
cd maxima-5.40.0

./configure --enable-sbcl
make
make check
sudo make install

cd ~

git clone https://github.com/admech/maxima.git --branch gcp --single-branch
git config --global user.email "kiriger@gmail.com"
git config --global user.name "Kirill V. Gerasimov"

cd maxima
chmod 777 run.sh

echo "   " >> ~/.bashrc
echo "# a handy function for viewing simulation logs" >> ~/.bashrc
echo "view() { less ~/maxima/sol/\$1/out/run.log; }" >> ~/.bashrc

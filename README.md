# synthosphere
 too1-1 yosys
 
Installation guide
https://github.com/YosysHQ/yosys

# Prerequiste dependency

$ sudo apt-get install build-essential clang bison flex \
  libreadline-dev gawk tcl-dev libffi-dev git \
  graphviz xdot pkg-config python3 libboost-system-dev \
  libboost-python-dev libboost-filesystem-dev zlib1g-dev

# installation Flow

$ mkdir yosys-master
$ cd yosys-master
$ git clone https://github.com/YosysHQ/yosys.git
$ sudo apt install make(installing make if you havent done it yet)
$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev
$ cd yosys-master/yosys/
$ make
$ sudo install make


if it doesn't work ( version mismatch might occur when combining other open software )
$ sudo apt install yosys
$ sudo apt upgrade

# progress image 
![IMG-20230825-WA0043](https://github.com/rockymoo/synthosphere/assets/126293037/5fd7d75b-a8f8-4a12-8ec4-3859c2d2c620)

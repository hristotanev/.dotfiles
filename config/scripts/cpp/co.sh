#!/bin/bash

g++ -std=c++17 -O2 -o "${1%.*}" $1 -Wall;

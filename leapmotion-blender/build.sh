#!/bin/bash

swig -c++ -python -o LeapPython.cpp -interface LeapPython Leap.i

g++ -fPIC -I /path/to/python3.3/include/python3.3/ LeapPython.cpp /usr/lib/Leap/libLeap.so -shared -o LeapPython.so

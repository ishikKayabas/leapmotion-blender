#!/bin/bash

#Calls swig to convert LeapPython.cpp into a Python library
swig -c++ -python -o LeapPython.cpp -interface LeapPython Leap.i

#Calls the C++ compiler to compile the original C++ file, LeapPython.cpp, to generate the binary source code, LeapPython.so,
#as it is also needed for Blender to use the generated Python library
g++ -fPIC -I /path/to/python3.3/include/python3.3/ LeapPython.cpp /usr/lib/Leap/libLeap.so -shared -o LeapPython.so

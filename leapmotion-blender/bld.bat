REM Compiles the python setup script
python setup.py install
REM Exits the install if there's any error
if errorlevel 1 exit 1

REM Calls swig to convert LeapPython.cpp into a Python library
swig -c++ -python -o LeapPython.cpp -interface LeapPython Leap.i

REM Calls the C++ compiler to compile the original C++ file, LeapPython.cpp, to generate the binary source code,
REM LeapPython.so, as it is also needed for Blender to use the generated Python library
g++ -fPIC -I /path/to/python3.3/include/python3.3/ LeapPython.cpp /usr/lib/Leap/libLeap.so -shared -o LeapPython.so

leapmotion-blender
==================

OVERVIEW

This is an in-progress commit for a Conda package that allows "one-click" installation of a Blender add-on that allows it 
to receive & interpret data from the Leap Motion user interface device.


WHY IT'S NEEDED

The Leap Motion SDK library is C++ native, while Blender runs on Python. While the SDK also has a Python wrapper library, it
is for Python 2.7, while Blender is built on Python 3.3. The process needed to convert the library into a form Blender can 
comprehend involves multiple steps that a user might not be capable of performing easily.


WHAT IT DOES

The Conda package and environment management system is highly effective at installing packages that have build or runtime
requirement dependencies. We built this package to be installed through Conda so that it can install two needed
dependencies for the package-building process: Swig & Python 3.3. Swig is a program that can build a Python function library
from the SDK's native C++ library. Python 3.3 is needed so that the library constructed is a 3.3 library, instead of a 2.7.


PACKAGE CONTENTS

The setup.py file, while not necessary, simply provides some metadata for the package. Within the /leapmotion-blender
directory are the rest of the package contents. The _init_.py file simply signifies to the Python compiler that the
directory is a package. LeapPython.cpp, LeapPython.h, libLeap.so, and Leap.i are files from the Leap Motion
SDK that are needed by Swig to generate the Python library add-on for Blender. There are two files, bld.bat and build.sh,
which are scripts used in the build process by Windows and UNIX systems, respectively. Finally, the meta.yaml file contains
additional package metadata, but is primarily used by Conda to determine what dependencies are needed for the build process,
i.e. Swig & Python 3.3.


FURTHER DOCUMENTATION

You can find additional info on how to use Conda for this project in the project documentation, found here:



AUTHOR INFO

Ishik Kayabas
- ishikkayabas@gmail.com

(NOTE: If you are a future City Tech student working on this project, please feel free to email me with any questions. I
know that the project documentation is pretty unclear about why and how we used the resources discussed, and you shouldn't
have to suffer because the rest of my team was useless.)

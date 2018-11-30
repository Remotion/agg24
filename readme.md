This is a mirror of the Anti-Grain Geometry Project

It comes with visual c++ 2017 solutions and Projects for all the 
included examples.
To make the examples compile with the vc2017 build chain I had to 
make a number preliminary and slight changes only to the windows 
platform specific files. 
The agg core files have not been modified at all.

This distribution includes a library project that can be linked 
to statically from any project that uses anti-grain geometry.

included solutions: 
./agg24.sln:
Use this solution to build only the agg24 library

./examples/win32_vc2015/agg24examples.sln
This solution includes the agg24  and the agg24winBase libraries together with the 59 example application projects.
The small agg24winBase library includes the platform specific glue code that provides the framework for the example applications.


Hereafter the original Readme of the project:
---------------------------------

The Anti-Grain Geometry Project
A high quality rendering engine for C++
http://antigrain.com

Anti-Grain Geometry - Version 2.4
Copyright (C) 2002-2005 Maxim Shemanarev (McSeem)

Permission to copy, use, modify, sell and distribute this software
is granted provided this copyright notice appears in all copies.
This software is provided "as is" without express or implied
warranty, and with no claim as to its suitability for any purpose.

---------------------------------

Use automake to build the library.

If automake is not available you still can use the old make.
There is a very simple Makefile that can be used. Note that
if you use automake it will overwrite Makefile.

---------------------------------

If building on AmigaOS 4.0 or higher type the following for
instructions on what targets are available.
 make -f Makefile.AmigaOS

To just build and install AGG into the standard AmigaOS SDK
ready for use type:
 make -f Makefile.AmigaOS install

If you just want to build one demo (e.g. lion) use:
 make -f Makefile.AmigaOS bin/lion

If you have any questions about the AmigaOS port please
contact Steven Solie (ssolie@telus.net) for help.

---------------------------------

To build all examples using SDL (Mac or Linux) just type:

cd /examples/sdl
make

Individual examples can be built with

make aa_test

In the same way the native Carbon examples can be built with

cd /examples/macosx_carbon
make

In both cases the static library will be built (if it was not already) 
from the existing global Makefile in /src/.

The Makefiles for both SDL and Carbon will also attempt to download the 
required .bmp files if they are not found in the system for a given 
example. If the files could not be fetched (wget) the user will receive 
a message explaining where to download the samples from (sphere.bmp, 
etc.)  Since all programs reside in the same directory there is no need 
to duplicate the .bmp files for each program that needs to use them.

---------------------------------

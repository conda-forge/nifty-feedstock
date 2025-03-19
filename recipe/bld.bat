@echo ON

mkdir build
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
cd build
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%

cmake .. %CMAKE_ARGS% ^
         -G Ninja ^
         -DDCMAKE_VERBOSE_MAKEFILE=ON ^
         -DBUILD_NIFTY_PYTHON=ON ^
         -DWITH_HDF5=OFF ^
         -DWITH_Z5=ON ^
         -DWITH_ZLIB=ON ^
         -DWITH_BLOSC=ON ^
         -DCMAKE_BUILD_TYPE=Release ^
         -DPython_EXECUTABLE="%PYTHON%"
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%

cmake --build . --target install
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%

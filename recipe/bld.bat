mkdir build
cd build

cmake .. %CMAKE_ARGS% ^
         -G Ninja ^
         -DBOOST_ROOT="%LIBRARY_PREFIX%" ^
         -DBUILD_NIFTY_PYTHON=ON ^
         -DWITH_HDF5=OFF ^
         -DWITH_Z5=ON ^
         -DWITH_ZLIB=ON ^
         -DWITH_BLOSC=ON ^
         -DCMAKE_BUILD_TYPE=Release ^
         -DCMAKE_TRY_COMPILE_CONFIGURATION=Release ^
         -DPython_EXECUTABLE="%PYTHON%"

cmake --build . --target install

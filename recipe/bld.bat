mkdir build
cd build

cmake .. %CMAKE_ARGS% ^
         -G "%CMAKE_GENERATOR%" ^
         -DBOOST_ROOT="%LIBRARY_PREFIX%" ^
         -DBUILD_NIFTY_PYTHON=ON ^
         -DWITH_HDF5=OFF ^
         -DWITH_Z5=ON ^
         -DWITH_ZLIB=ON ^
         -DWITH_BLOSC=ON ^
         -DCMAKE_BUILD_TYPE=Release ^
         -DPython_EXECUTABLE="%PYTHON%"

cmake --build . --target install

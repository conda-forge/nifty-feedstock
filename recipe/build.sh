##
## START THE BUILD
##

mkdir -p build
cd build

if [[ "${target_platform}" == "osx-64" ]]; then
    export CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"
fi

##
## Configure
##
cmake ${CMAKE_ARGS} .. \
\
        -DBOOST_ROOT=${PREFIX} \
        -DBUILD_NIFTY_PYTHON=ON \
        -DWITH_HDF5=OFF \
        -DWITH_Z5=ON \
        -DWITH_BLOSC=ON \
        -DWITH_ZLIB=ON \
        -DWITH_BZIP2=ON \
\
        -DPython_EXECUTABLE=${PYTHON}

##
## Compile and install
##
make -j${CPU_COUNT}
make install

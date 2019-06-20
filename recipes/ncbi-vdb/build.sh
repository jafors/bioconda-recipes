export CC_FOR_BUILD=$CC
./configure \
    --prefix=$PREFIX \
    --build-prefix=ncbi-outdir \
    --with-ngs-sdk-prefix=$PREFIX
make
make install
make -C test/vdb
mv interfaces/* $PREFIX/include/ncbi-vdb

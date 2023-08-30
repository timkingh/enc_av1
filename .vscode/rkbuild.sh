
mkdir -p rkbuild

cd rkbuild || exit

if [[ ! -a aomdec ]]; then
    cmake .. -DCMAKE_BUILD_TYPE=Debug \
             -DCONFIG_AV1_ENCODER=0 \
             -DCONFIG_AV1_DECODER=1 \
             -DAOM_TARGET_CPU=generic \
             -DCONFIG_MULTITHREAD=0 \
             -DENABLE_DOCS=0 
             #-DCMAKE_CXX_COMPILER=/usr/bin/gcc
fi

make -j32

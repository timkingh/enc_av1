
mkdir -p rkbuild

cd rkbuild || exit

if [[ ! -a aomenc ]]; then
    cmake .. -DCMAKE_BUILD_TYPE=Debug \
             -DCONFIG_AV1_ENCODER=1 \
             -DCONFIG_AV1_DECODER=0 \
             -DAOM_TARGET_CPU=generic \
             -DCONFIG_MULTITHREAD=1 \
             -DENABLE_DOCS=0 \
             -DCMAKE_EXPORT_COMPILE_COMMANDS=True \
             -DENABLE_NASM=1
             #-DCMAKE_CXX_COMPILER=/usr/bin/gcc
    ccmake ..
fi

#make -j32

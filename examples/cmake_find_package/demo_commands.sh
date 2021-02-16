mkdir -p build_linux
cd build_linux
conan install .. --profile ../../profiles/linux_gcc_7_release
source activate.sh
cmake ..  -DCMAKE_BUILD_TYPE=Release -DCMAKE_MODULE_PATH=$PWD
cmake --build .   
./regex_exe "Subject: Re: conan"

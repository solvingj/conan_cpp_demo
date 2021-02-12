mkdir -p build_linux
cd build_linux
conan install .. --profile ../../profiles/linux_gcc_7_release
source activate.sh
cmake ..  -DCMAKE_BUILD_TYPE=Release
cmake --build .   
./regex_exe "Subject: Re: conan"
conan create .. --profile ../../profiles/linux_gcc_7_release


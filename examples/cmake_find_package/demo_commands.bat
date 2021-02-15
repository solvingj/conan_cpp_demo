mkdir build_windows
cd build_windows
conan install .. --profile ../../profiles/windows_msvc_16_release
call activate.bat
cmake ..  -DCMAKE_BUILD_TYPE=Release -DCMAKE_MODULE_PATH=%CD:\=/%
cmake --build . --config Release
Release\regex_exe "Subject: Re: conan"
call deactivate.bat
cd ..
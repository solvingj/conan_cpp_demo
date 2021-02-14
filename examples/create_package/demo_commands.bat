mkdir run_windows
cd run_windows
conan install .. --profile ..\..\profiles\windows_msvc_16_release
call activate.bat
cmake ..  -DCMAKE_BUILD_TYPE=Release
cmake --build . --config Release
Release\regex.exe "Subject: Re: conan"
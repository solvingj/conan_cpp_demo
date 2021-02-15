conan create . demo/demo --profile ../profiles/windows_msvc_16_release
mkdir run_windows
cd run_windows
conan install regex/0.1.0@demo/demo -g virtualrunenv --profile ../../profiles/windows_msvc_16_release
call activate_run.bat
regex_exe "Subject: Re: conan"
call deactivate_run.bat
cd ..
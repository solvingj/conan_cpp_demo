conan create . demo/demo --profile ../profiles/linux_gcc_7_release
mkdir run_linux
cd run_linux
conan install regex/0.1.0@demo/demo -g virtualrunenv --profile ../../profiles/linux_gcc_7_release
source activate_run.sh
regex_exe "Subject: Re: conan"
source deactivate_run.sh

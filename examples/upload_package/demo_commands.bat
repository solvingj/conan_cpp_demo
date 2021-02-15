conan remote list
conan remote add artifactory  \
           http://artifactory-ce-demo:8081/artifactory/api/conan/conan-local

conan user -p=password -r=artifactory admin   # Login to Remote

conan upload "regex/0.1.0@demo/demo" -r=artifactory --all
conan search regex/0.1.0@demo/demo -r=artifactory

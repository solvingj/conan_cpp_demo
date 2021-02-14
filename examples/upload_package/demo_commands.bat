conan remote list
conan remote add artifactory http://artifactory:8081/artifactory/api/conan/conan-local

conan remote list
conan upload "regex/0.1.0@demo/demo" -r=artifactory

conan search "*" -r=artifactory
conan search regex/0.1@user/testing -r=artifactory
from conans import ConanFile, CMake

class RegexConan(ConanFile):
    name = "regex"
    version = "0.1.0"
    settings = "os", "arch", "compiler", "build_type"
    generators = "cmake_find_package", "virtualenv"
        
    def requirements(self):
        self.requires("boost/1.74.0@")    # -> depend on boost 1.74.0

    def export_sources(self):
        self.copy("*.cpp")                 # -> copies all .cpp files from working dir to a "source" dir
        self.copy("CMakeLists.txt")        # -> copies CMakeLists.txt from working dir to a "source" dir

    def build(self):
        cmake = CMake(self)                # CMake helper auto-formats CLI arguments for CMake
        cmake.configure()                  # cmake -DCMAKE_TOOLCHAIN_FILE=conantoolchain.cmake
        cmake.build()                      # cmake --build .  

    def package(self):
        cmake = CMake(self)                # For CMake projects which define an install target, leverage it
        cmake.install()                    # cmake --build . --target=install 
                                           # sets CMAKE_INSTALL_PREFIX = <appropriate directory in conan cache>

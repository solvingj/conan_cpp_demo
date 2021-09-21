# Conan Introduction and Demo sample

## Summary

This repository provides a brief introduction to Conan, and some a demo of some
basic operations. It was created to be used at community events such as C++
meetups and conferences. There is a presentation which goes along with it.

## docker_compose environment

In order to make the examples in this repository reproducible, a
`docker-compose.yml` file has been added to the root directory. It provides two
docker containers:

- `conan-terminal-demo`
- `artifactory-ce-demo`

The `conan-terminal-demo` container is provided for users to run the examples in
a completely isolated linux environment. It is not strictly required to use this
environment, we simply provide it as an option.

The `artifactory-ce-demo` container is used for the `upload_package` example and
provides a remote conan repository to push packages to. This is done to
demonstrate examples of working with remotes, without users needing to go
through any additional steps such as provisioning online services, and setting
up credentials. Artifactory CE docker container provides a turn-key solution
which is perfect for our case here.

## Examples

Each example should work properly across all platforms. Each provides a script
in the root directory named `demo_commands` which executes the whole example
(both `.bat` and `.sh` versions of the script are provided).

### cmake_find_package example

This example demonstrates the extremely simple case of using Conan packages in a
CMake project. It uses the [Boost](https://www.boost.org/) C++ libraries as a
dependency. It uses CMake's "Find Package" feature to depend on the
`Boost::regex` component specifically.

One of the highlights of this example is that the `CMakeLists.txt` has no
special code or configuration related to Conan. The use of Conan to provide the
dependencies is completely transparent.

### create_package

This example takes the same project and source code and demonstrates how to
create a Conan package from it. It does this by adding a Conan recipe which
defines how to build the project and capture the build artifacts. Finally, the
example shows how to run the final executable from the Conan package directory
using Conan's virtual environments feature.

### upload_package

This is a very simple example which shows the commands needed to upload a
package to a remote repository. It also demonstrates other relevant commands
related to remotes.

### more_to_come

In the future, it's likely that we'll add more examples to this repository,
which are all cross-platform tested and work within the demo environment. If you
would like to add examples for future users, contributions are definitely welcome!
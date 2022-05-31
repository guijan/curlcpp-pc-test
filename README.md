This repository contains a test project for trying out
[curlcpp](https://github.com/JosephP91/curlcpp)'s _curlcpp.pc_ pkg-config file.

Check [LICENSE](./LICENSE) for licensing details.

## Compiling
Dependencies:
- Any of: a POSIX-compliant Make, CMake, or Meson
- A C++ compiler
- pkg-config

Follow the instructions for your build system below.

### CMake
Compile:
```console
$ cmake -B build -G Ninja && cmake --build build
```

Clean:
```console
$ rm -r build
```

### Meson
The settings the user might want to set are a property of Meson and not of the
project, read the Meson documentation for guidance.

Compile:
```console
$ meson setup build && meson compile -C build
```

Clean:
```console
$ rm -r build
```

### POSIX Make (i.e. any Linux/Unix/BSD)
Set `CXXFLAGS` to customize the compiler flags. Set `LDFLAGS` to customize the
linker flags. Set `CXX` to change the compiler.

Compile:
```console
$ make
```

Clean:
```
$ make clean
```

Example:
```
$ make CXX='g++' CXXFLAGS='-O3 -march=native'
```

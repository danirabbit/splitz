# splitz
Split timer for speedrunners

## Building, Testing, and Installation


You'll need the following dependencies to build:
* libgtk-3-dev
* meson
* valac

Run `meson build` to configure the build environment and then change to the build directory and run `ninja test` to build and run automated tests

    meson build --prefix=/usr 
    cd build
    ninja test

To install, use `ninja install`, then execute with `com.github.danrabbit.splitz`

    sudo ninja install
    com.github.danrabbit.splitz

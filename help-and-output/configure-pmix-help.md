```text
./configure --help
`configure' configures pmix 7.0.0a1 to adapt to many kinds of systems.

Usage: ./configure [OPTION]... [VAR=VALUE]...

To assign environment variables (e.g., CC, CFLAGS...), specify them as
VAR=VALUE.  See below for descriptions of some of the useful variables.

Defaults for the options are specified in brackets.

Configuration:
  -h, --help              display this help and exit
      --help=short        display options specific to this package
      --help=recursive    display the short help of all the included packages
  -V, --version           display version information and exit
  -q, --quiet, --silent   do not print `checking ...' messages
      --cache-file=FILE   cache test results in FILE [disabled]
  -C, --config-cache      alias for `--cache-file=config.cache'
  -n, --no-create         do not create output files
      --srcdir=DIR        find the sources in DIR [configure dir or `..']

Installation directories:
  --prefix=PREFIX         install architecture-independent files in PREFIX
                          [/usr/local]
  --exec-prefix=EPREFIX   install architecture-dependent files in EPREFIX
                          [PREFIX]

By default, `make install' will install all the files in
`/usr/local/bin', `/usr/local/lib' etc.  You can specify
an installation prefix other than `/usr/local' using `--prefix',
for instance `--prefix=$HOME'.

For better control, use the options below.

Fine tuning of the installation directories:
  --bindir=DIR            user executables [EPREFIX/bin]
  --sbindir=DIR           system admin executables [EPREFIX/sbin]
  --libexecdir=DIR        program executables [EPREFIX/libexec]
  --sysconfdir=DIR        read-only single-machine data [PREFIX/etc]
  --sharedstatedir=DIR    modifiable architecture-independent data [PREFIX/com]
  --localstatedir=DIR     modifiable single-machine data [PREFIX/var]
  --runstatedir=DIR       modifiable per-process data [LOCALSTATEDIR/run]
  --libdir=DIR            object code libraries [EPREFIX/lib]
  --includedir=DIR        C header files [PREFIX/include]
  --oldincludedir=DIR     C header files for non-gcc [/usr/include]
  --datarootdir=DIR       read-only arch.-independent data root [PREFIX/share]
  --datadir=DIR           read-only architecture-independent data [DATAROOTDIR]
  --infodir=DIR           info documentation [DATAROOTDIR/info]
  --localedir=DIR         locale-dependent data [DATAROOTDIR/locale]
  --mandir=DIR            man documentation [DATAROOTDIR/man]
  --docdir=DIR            documentation root [DATAROOTDIR/doc/pmix]
  --htmldir=DIR           html documentation [DOCDIR]
  --dvidir=DIR            dvi documentation [DOCDIR]
  --pdfdir=DIR            pdf documentation [DOCDIR]
  --psdir=DIR             ps documentation [DOCDIR]

Program names:
  --program-prefix=PREFIX            prepend PREFIX to installed program names
  --program-suffix=SUFFIX            append SUFFIX to installed program names
  --program-transform-name=PROGRAM   run sed PROGRAM on installed program names

System types:
  --build=BUILD     configure for building on BUILD [guessed]
  --host=HOST       cross-compile to build programs to run on HOST [BUILD]
  --target=TARGET   configure for building compilers for TARGET [HOST]

Optional Features:
  --disable-option-checking  ignore unrecognized --enable/--with options
  --disable-FEATURE       do not include FEATURE (same as --enable-FEATURE=no)
  --enable-FEATURE[=ARG]  include FEATURE [ARG=yes]
  --enable-silent-rules   less verbose build output (undo: "make V=1")
  --disable-silent-rules  verbose build output (undo: "make V=0")
  --enable-dependency-tracking
                          do not reject slow dependency extractors
  --disable-dependency-tracking
                          speeds up one-time build
  --enable-shared[=PKGS]  build shared libraries [default=yes]
  --enable-static[=PKGS]  build static libraries [default=no]
  --enable-wrapper-rpath  enable rpath/runpath support in the wrapper
                          compilers (default=yes)
  --enable-wrapper-runpath
                          enable runpath in the wrapper compilers if linker
                          supports it (default: enabled, unless wrapper-rpath
                          is disabled).
  --enable-dlopen         Whether build should attempt to use dlopen (or
                          similar) to dynamically load components. (default:
                          enabled)
  --enable-devel-check    enable developer-level compiler pickyness when
                          building PMIx (default: disabled)
  --memory-sanitizers     enable developer-level memory sanitizers when
                          building PMIx (default: disabled)
  --enable-debug          enable developer-level debugging code (not for
                          general PMIx users!) (default: disabled)
  --disable-debug-symbols Disable adding compiler flags to enable debugging
                          symbols if --enable-debug is specified. For
                          non-debugging builds, this flag has no effect.
  --enable-per-user-config-files
                          Disable per-user configuration files, to save disk
                          accesses during job start-up. This is likely
                          desirable for large jobs. Note that this can also be
                          achieved by environment variables at run-time.
                          (default: enabled)
  --enable-pretty-print-stacktrace
                          Pretty print stacktrace on process signal (default:
                          enabled)
  --enable-pmix-timing    enable PMIx developer-level timing code (default:
                          disabled)
  --enable-pmix-binaries  enable PMIx tools
  --enable-python-bindings
                          enable Python bindings (default: disabled)
  --enable-nonglobal-dlopen
                          enable non-global dlopen (default: enabled)
  --enable-pty-support    Enable/disable PTY support for STDIO forwarding.
                          (default: enabled)
  --enable-dummy-handshake
                          Enables psec dummy component intended to check the
                          PTL handshake scenario (default: disabled)
  --enable-test-build     Force-build all test and environment-specific
                          components (including those that wrap an optional
                          third-party library, using non-functional shim
                          headers where needed) so they can be
                          compile-checked. The resulting components are not
                          functional; intended for developers and CI (default:
                          disabled)
  --enable-ipv6           Enable IPv6 support, but only if the underlying
                          system supports it (default: disabled)
  --enable-fast-install[=PKGS]
                          optimize for fast installation [default=yes]
  --disable-libtool-lock  avoid locking (might break parallel builds)
  --enable-sphinx         Force configure to fail if Sphinx is not found
                          (Sphinx is used to build the HTML docs and man
                          pages). This option is likely only useful for
                          developers; end users who are building from
                          distribution tarballs do ***not*** need to have
                          Sphinx installed
  --enable-visibility     enable visibility feature of certain
                          compilers/linkers (default: enabled)
  --disable-libevent-lib-checks
                          If --disable-libevent-lib-checks is specified,
                          configure will assume that -levent is available
  --disable-hwloc-lib-checks
                          If --disable-hwloc-lib-checks is specified,
                          configure will assume that -lhwloc is available
  --enable-mca-no-build=LIST
                          Comma-separated list of <type>-<component> pairs
                          that will not be built. Example:
                          "--enable-mca-no-build=pgpu,pcompress-zlib" will
                          disable building all pgpu components and the "zlib"
                          pcompress component.
  --enable-mca-dso=LIST   Comma-separated list of types and/or type-component
                          pairs that will be built as run-time loadable
                          components (as opposed to statically linked in), if
                          supported on this platform.
  --enable-mca-static=LIST
                          Comma-separated list of types and/or type-component
                          pairs that will be built statically linked into the
                          library. The default (if DSOs are supported) is to
                          build all components as DSOs. Enabling a component
                          as static disables it building as a DSO. The default
                          is to build all components statically.
  --disable-pmix-dlopen   Disable the PMIx "dlopen" PDL component (and
                          probably force the use of the "libltdl" PDL
                          component).

  --enable-werror         Treat compiler warnings as errors

Optional Packages:
  --with-PACKAGE[=ARG]    use PACKAGE [ARG=yes]
  --without-PACKAGE       do not use PACKAGE (same as --with-PACKAGE=no)
  --with-pmix-platform-patches-dir=DIR
                          Location of the platform patches directory. If you
                          use this option, you must also use --with-platform.
  --with-pmix-platform=FILE
                          Load options for build from FILE. Options on the
                          command line not in FILE are used. Options on the
                          command line and in FILE are replaced by what is in
                          FILE.
  --with-wrapper-cflags   Extra flags to add to CFLAGS when using mpicc
  --with-wrapper-cflags-prefix
                          Extra flags (before user flags) to add to CFLAGS
                          when using mpicc
  --with-wrapper-ldflags  Extra flags to add to LDFLAGS when using wrapper
                          compilers
  --with-wrapper-libs     Extra flags to add to LIBS when using wrapper
                          compilers
  --with-pmix-headers     Install the PMIx header files (pmix.h and friends)
                          (default: enabled)
  --with-tests-examples   Whether or not to install the tests and example
                          programs.
  --with-ident-string=STRING
                          Embed an ident string into PMIx object files
  --with-python-sys-prefix
                          use Python's sys.prefix and sys.exec_prefix values
  --with-python_prefix    override the default PYTHON_PREFIX
  --with-python_exec_prefix
                          override the default PYTHON_EXEC_PREFIX
  --with-pic[=PKGS]       try to use only PIC/non-PIC objects [default=use
                          both]
  --with-aix-soname=aix|svr4|both
                          shared library versioning (aka "SONAME") variant to
                          provide on AIX, [default=aix].
  --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
  --with-sysroot[=DIR]    Search for dependent libraries within DIR (or the
                          compiler's sysroot if not specified).
  --with-pmix-package-string=STRING
                          Use a branding string throughout PMIx
  --with-libevent=DIR     Search for libevent headers and libraries in DIR
  --with-libevent-libdir=DIR
                          Search for libevent libraries in DIR
  --with-libevent-extra-libs=LIBS
                          Add LIBS as dependencies of Libevent
  --with-hwloc=DIR        Search for hwloc headers and libraries in DIR
  --with-hwloc-libdir=DIR Search for hwloc libraries in DIR
  --with-hwloc-extra-libs=LIBS
                          Add LIBS as dependencies of hwloc
  --with-jansson(=DIR)    Build jansson support (default=no), optionally
                          adding DIR/include, DIR/lib, and DIR/lib64 to the
                          search path for headers and libraries
  --with-jansson-libdir=DIR
                          Search for Jansson libraries in DIR
  --with-curl(=DIR)       Build curl support (default=no), optionally adding
                          DIR/include, DIR/lib, and DIR/lib64 to the search
                          path for headers and libraries
  --with-curl-libdir=DIR  Search for Curl libraries in DIR
  --with-show-load-errors Set the default value for the MCA parameter
                          mca_base_component_show_load_errors (but can be
                          overridden at run time by the usual
                          MCA-variable-setting mechansism). (default: "none")
  --with-zlib=DIR         Search for zlib headers and libraries in DIR
  --with-zlib-libdir=DIR  Search for zlib libraries in DIR
  --with-zlibng=DIR       Search for zlib-ng headers and libraries in DIR
  --with-zlibng-libdir=DIR
                          Search for zlib-ng libraries in DIR
  --with-libltdl(=DIR)    Build libltdl support, optionally adding
                          DIR/include, DIR/lib, and DIR/lib64 to the search
                          path for headers and libraries
  --with-libltdl-libdir=DIR
                          Search for libltdl libraries in DIR
  --with-pgpu-test        Build the pgpu test component used to exercise the
                          GPU setup path (default: no)
  --with-smtp=DIR         Search for esmtp headers and libraries in DIR
  --with-smtp-libdir=DIR  Search for esmtp libraries in DIR
  --with-simptest         Include simptest fabric support
  --with-tcp              Include TCP/UDP static-port fabric support
  --with-munge=DIR        Search for munge headers and libraries in DIR
  --with-munge-libdir=DIR Search for munge libraries in DIR

Some influential environment variables:
  CC          C compiler command
  CFLAGS      C compiler flags
  LDFLAGS     linker flags, e.g. -L<lib dir> if you have libraries in a
              nonstandard directory <lib dir>
  LIBS        libraries to pass to the linker, e.g. -l<library>
  CPPFLAGS    (Objective) C/C++ preprocessor flags, e.g. -I<include dir> if
              you have headers in a nonstandard directory <include dir>
  PYTHON      the Python interpreter
  LT_SYS_LIBRARY_PATH
              User-defined run-time library search path.
  CPP         C preprocessor
  CC_FOR_BUILD
              build system C compiler

Use these variables to override the choices made by `configure' or to help
it to find libraries and programs with nonstandard names/locations.

Report bugs to <https://github.com/openpmix/openpmix/issues>.
```

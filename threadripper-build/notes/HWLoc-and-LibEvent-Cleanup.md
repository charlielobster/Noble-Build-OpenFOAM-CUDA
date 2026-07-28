# HWLoc and `libevent` Clean-Up on Threadripper

OpenMPI likes a modern hwloc and libevent and all these tools are written by the same organization. Let's build all the latest versions of these tools. (See Consolidated Repos)

```bash
rm -rf /opt/<everything after ucx>
apt purge libhwloc* (worked) libevent... (i needed to fully qualify all of the libevents)

```

# `libevent`

```bash
cd libevent
./autogen.sh
./configure --help
mkdir build && cd build
../configure --prefix=/opt/libevent
make
make verify
sudo make install
```

# `hwloc`

```bash
cd hwloc
git checkout tags/hwloc-2.14.0
./autogen.sh
./configure --help
mkdir build && cd build
../configure --with-cuda=/usr/local/cuda --prefix=/opt/hwloc
make
sudo make install
```

These steps were completed between the Threadripper Build Notes after UCX build and prior to OpenMPI main build (OpenPMIx).
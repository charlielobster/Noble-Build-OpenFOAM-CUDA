## ParaView v5.12.1? Error: Linux v7 Kernel and Nvidia Driver 570 (closed)

Haswell is running kernel 6.17 and this is tightly coupled to the sm_61. Updating to kernel 7 is therefore not an option for Haswell, but `sudo apt upgrade -y` executed without issue on Threadripper. So I decided to split the kernel version across the two machines, given kernel 7's significantly better performance in several areas like memory and GPU management. Hopefully this doesn't bite me.

On Haswell, hwe is looking at v7 kernel related errors, instead of using the current generic v6.17 kernel. It appears to be solved by this change.

```bash
sudo dpkg --purge linux-generic-hwe-24.04 linux-image-generic-hwe-24.04 linux-headers-generic-hwe-24.04 linux-headers-7.0.0-28-generic linux-image-7.0.0-28-generic linux-modules-7.0.0-28-generic linux-hwe-7.0-headers-7.0.0-28 linux-hwe-7.0-tools-7.0.0-28

# stragglers
sudo rm -rf /lib/modules/7.0.0-28-generic
```

## De-Coupling OpenFOAM Build Components from ParaView

I'm dropping the parafoam plugin build from the larger OpenFOAM build, and going with the current version of ParaView (instructions in `builds.md`), after some clean-up:

```bash
# clear the crash logs
sudo rm -rf /var/crash/*
```
Remove the remaining QT 5 dependencies (More ParaView v5.12.1 Clean-Up)

```bash
sudo apt purge libqt5x11extras5-dev libqt5help5 qttools5-dev qtxmlpatterns5-dev-tools libqt5svg5-dev qtbase5-dev qtchooser qt5-qmake
```

# ParaView v5.12.1 Build Notes (Broken Build - Do Not Use)

Begin with a fork or clone of ParaView-v5.12.1 from kitmare's git: 

`https://github.com/Kitware/ParaView`

## Prerequisites

For the OpenFOAM `.com` build, use the ParaView version recommended for the OpenFOAM version. This resolves some headaches with qt versions 5 and 6 mismatches (edit: this is not true).

```bash
sudo apt install cmake libgl1-mesa-dev libxt-dev libqt5x11extras5-dev libqt5help5 qttools5-dev qtxmlpatterns5-dev-tools libqt5svg5-dev python3-numpy libtbb-dev ninja-build qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libxcursor-dev
```

## Build

```bash
mkdir paraview-build
cd paraview-build
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_CUDA_ARCHITECTURES="61" -DCMAKE_BUILD_TYPE=Release ../
ninja -j$(nproc) 
sudo ninja install
```


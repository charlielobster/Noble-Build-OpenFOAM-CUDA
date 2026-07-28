clear
sudo apt install cuda-toolkit-12-8
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1.all
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1.all.deb
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt install cuda-toolkit-12-8
sudo apt update
sudo apt list
sudo apt upgrade -y
clear
sudo apt install cuda-toolkit-12-8
reboot
nvidia-smi
apt list | grep "nvidia"
sudo apt install nvidia-driver-570
reboot
sudo apt upgrade -y
sudo apt autoremove
sudo apt upgrade -y
clear
nvidia-smi
sudo apt install vscode git gh
sudo apt install code --classic
sudo snap install code --classic
sudo apt install git gh
gh auth login
git config --global user.name charlielobster
git config --global user.email chrl3.lawbstr@gmail.com
ls
rm cuda-keyring_1.1-1_all.deb 
ls
clear
ls
mkdir repos
sudo apt upgrade -y
cd repos/
git clone https://github.com/charlielobster/Backward-Facing-Step_Fluent-v-OpenFOAM.git
cd Backward-Facing-Step_Fluent-v-OpenFOAM/
git pull
git add .
cd repos/Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "bash log"
git push
git add .
git commit -m "unused refs"
git push
cd repos
git clone --recursive https://github.com/charlielobster/ucx
xrandr --listproviders
cd repos/Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "display issues"
git pull
cd ..
cd ucx
git pull
./configure --help
ls
cd ..
ls
cd Backward-Facing-Step_Fluent-v-OpenFOAM/
ls
git add .
git commit -m "prereqs and bashrc"
git push
echo $CUDA_PATH
nvcc --version
echo $LD_LIBRARY_PATH
sudo apt update
sudo apt upgrade -y
sudo apt install build-essential automake autoconf pkg-config
ls
cd repos/ucx/
ls
./configure --help
ls
configure --help
grep "AC_ARG_ENABLE" configure.ac
grep "AC_ARG_WITH" configure.ac
./autoconf.sh
ls
./autogen.sh
sudo apt install libtool
cd repos
ls
cd ucx
ls
./autogen.sh
./configure --help
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda
make clean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode=arch=conpute_61,code=sm_61 --enable-mt
make clean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="arch=conpute_61,code=sm_61" --enable-mt
make clean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="arch=compute_61,code=sm_61" --enable-mt
make clean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt
make clean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode=arch=compute_61\,code=sm_61 --enable-mt
make clean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt
make -j$(nproc)
make distclean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --enable-mt
clear
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61 -gencode=arch=compute_80,code=sm_80" --enable-mt
make -j$(nproc)
clear
make distclean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt
make -j$(nproc)
make distclean
clear
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt --disable-test-app --disable-gtest
make -j$(nproc)
clear
make distclean
clear
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt
make distclean
clear
./configure --help
make distclean
clear
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt
make distclean
make clean
ls
make distclean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt --disable-test-app --disable-gtest
make -j$(nproc)
make distclean
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt --disable-test-app --disable-gtest
make distclean
clear
./autogen.sh
./configure --prefix=/opt/ucx --with-cuda=/usr/local/cuda --with-nvcc-gencode="-gencode=arch=compute_61,code=sm_61" --enable-mt --disable-test-app --disable-gtest
make -j$(nproc)
sudo make install
ucx_info -v
ucx_info -d | grep -E -A l -i "cuda"
ucx_info -d | grep -E -A 1 -i "cuda"
cd repos/Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "src/tools/perf removal"
git push
cd repos
git clone --recursive https://github.com/charlielobster/ompi.git
sudo apt update
sudo apt upgrade -y
clear
sudo apt install perl python3 python3-pip virtualenv flex bison libbevent-dev libhwloc-dev
sudo apt install perl python3 python3-pip virtualenv flex bison libevent-dev libhwloc-dev
cd repos/ompi
ld
ls
cd 3rd-party/
ls
ldd libevent-dev
ldd libevent
cd openpmix/
ls
virtualenv venv
source venv/bin/activate
pip install sphinx sphinx-rtd-theme
pip install -r docs/requirements.txt
cd ..
cd prrte/
virtualenv venv
pip install sphinx sphinx-rtd-theme
exit
cd ..
cd skooby/repos/
ls
cd ompi/
ls
clear
cd 3rd-party/
cd prrte/
virtualenv venv
source venv/src/activate
source venv/bin/activate
pip install sphinx sphinx-rtd-theme
pip install -r docs/requirements.txt
exit
cd ..
ls
cd skooby/repos/
cd ompi
ls
cd 3rd-party/
dir
cd openpmix/
ls
./autogen.pl
./configure --prefix=/opt/pmix
make distclean
clear
./configure --prefix=/opt/pmix
make -j$(nproc)
sudo make install
clear
cd repos
cd ompi/3rd-party/prrte/
./autogen.pl
./configure --prefix=/opt/prrte --with-pmix=/opt/pmix
make -j$(nproc)
sudo make install
clear
prrte_info
prrte --version
prrte-info
echo $PATH
ls /opt/prrte/bin
prte-info
./prte-info
./ompi-prte
./prte_info
ls /opt/prrte/bin -rla
./ompi-prte-info
ompi-prte-info
clear
ls /opt/prrte/bin -rla
prte_info
clear
cd ..
ls
cs skooby/repos/ompi/
cd skooby/repos/ompi/
ls
./autogen.pl
virtualenv venv
source venv/bin/activate
pip install sphinx sphinx-rtd-theme
pip install -r docs/requirements.txt
exit
cd repos/ompi
./configure --help
cd 3rd-party/
ls
cd prrte/
cd ..
cd openpmix/
./configure --prefix=/opt/pmix --enabled-sphinx
./configure --prefix=/opt/pmix --enable-sphinx
./configure --prefix=/opt/pmix --enable-sphinx --with-sphinx=/venv/bin/sphinx-build
./configure --prefix=/opt/pmix --enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build
./configure --prefix=/opt/pmix --enable-sphinx --with-sphinx=venv/bin/sphinx-build
source venv/bin/activate
./configure --prefix=/opt/pmix --enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build
make -j$(nproc)
sudo make install
quit
ls
deactivate
cd ../prrte/
ls
source venv/bin/activate
./configure --prefix=/opt/prrte --with-pmix=/opt/pmix --enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build
deactivate
make -j$(nproc)
sudo make install
cd ..
ls
source venv/bin/activate
deactivate
./autogen.pl
source venv/bin/activate
./configure --prefix=/opt/ompi --with-libevent=external --with-hwloc=external --with-pmix=/opt/pmix --with-prrte=/opt/prrte --with-ucx=/opt/ucx --with-ucx-libdir=/opt/ucx/lib --with-cuda=/usr/local/cuda --with-cuda-libdir=/usr/local/cuda/lib64/stubs --enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build
deactivate
make -j$(nproc)
sudo make install
ompi_info
cd repos
cd ompi/
ls
source venv/bin/activate
./configure --prefix=/opt/ompi --with-libevent=external --with-hwloc=external --with-pmix=/opt/pmix --with-prrte=/opt/prrte --with-ucx=/opt/ucx --with-ucx-libdir=/opt/ucx/lib --with-cuda=/usr/local/cuda --with-cuda-libdir=/usr/local/cuda/lib64/stubs --enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build
deactivate
make -j$(nproc)
which gfortran
gfortran
sudo apt install gfortran
which gfortran
source venv/bin/activate
./configure --prefix=/opt/ompi --with-libevent=external --with-hwloc=external --with-pmix=/opt/pmix --with-prrte=/opt/prrte --with-ucx=/opt/ucx --with-ucx-libdir=/opt/ucx/lib --with-cuda=/usr/local/cuda --with-cuda-libdir=/usr/local/cuda/lib64/stubs --enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build
make -j$(nproc)
sudo make install
deactivate
ompi_info
cd repos/
cd Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "open mpi complete"
git push
sudo mandb
clear
man mpirun
cd repos/Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "manpath"
git push
cd repos
cd Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "openfoam.com notes"
git push
ls
cd repos
ls
mkdir OpenFOAM
cd OpenFOAM/
git clone --recursive https://gitlab.comm/openfoam/core/OpenFOAM.git OpenFOAM-v2606
git clone --recursive https://gitlab.com/openfoam/core/OpenFOAM.git OpenFOAM-v2606
git clone --recursive https://gitlab.com/openfoam/core/ThirdParty-common.git ThirdParty-v2606
cd repos/Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "clean-up, .com"
git push
cd repos/Backward-Facing-Step_Fluent-v-OpenFOAM/
git commit -m "checkpoint"
git add .
git commit -m "checkpoint"
git push
git add .
git commit -m "checkpoint"
git push
apt list --installed | grep python3-dev
apt list --installed | grep python3-numpy
sudo apt install cmake libgl1-mesa-dev libxt-dev libqt5x11extras5-dev libqt5help5 qttools5-dev qtxmlpatterns5-dev-tools libqt5svg5-dev python3-numpy libtbb-dev ninja-build qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tool 
sudo apt install cmake libgl1-mesa-dev libxt-dev libqt5x11extras5-dev libqt5help5 qttools5-dev qtxmlpatterns5-dev-tools libqt5svg5-dev python3-numpy libtbb-dev ninja-build qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools 
cd repos
git clone --recursive https://github.com/charlielobster/ParaView-v5.12.1.git
cd ParaView-v5.12.1/
git remote add upstream https://github.com/kitware
git fetch upstream --tags
git remote -vv
git remote -v
git remote add upstream https://github.com/kitware/ParaView
git remote remove upstream
git remote add upstream https://github.com/kitware/ParaView
git fetch upstream --tags
cd VTK
ls
ls -la VTK
cd ..
ls -la VTK
cd VTK
git checkout b50bab2bf856f65b9b652b7f55b34163851618da
cd ..
rm -rf VTK
git clone https://github.com/kitware/VTK.git
cd VTK
git checkout b50bab2bf856f65b9b652b7f55b34163851618da
cd ..
git fetch upstream --tags
git submodule sync
git checkout tags/v5.12.1 -b local-v5.12.1-build
git submodule update --init --recursive
cd VTK
git checkout b50bab2bf856f65b9b652b7f55b34163851618da
git checkout tags/v5.12.1 -b local-v5.12.1-build
cd ..
git checkout tags/v5.12.1 -b local-v5.12.1-build
mkdir paraview-build
cd paraview-build
ls
sudo apt update
apt list --upgradable
help apt upgrade
info apt
sudo apt list
clear
sudo apt list \p
sudo apt list
sudo apt list -r
apt list
apt list --installed
clear
apt list --installed
cd ..
ls
rm -rf ParaView-v5.12.1/
git clone --recursive https://github.com/charlielobster/ParaView
cd ParaView/VTK
ls
cd ..
ls
git fetch upstream --tags
git remote add upstream https://github.com/kitware/ParaView
git fetch upstream --tags
git checkout tags/v5.12.1 -b local-v5.12.1-build
git submodule update --init --recursive
mkdir paraview-build && cd paraview-build
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_BUILD_TYPE=Release ../
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_CUDA_ARCHITECTURES="61" -DCMAKE_BUILD_TYPE=Release ../
cmake --build ../ target clean
ls
rm -rf *
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_CUDA_ARCHITECTURES="61" -DCMAKE_BUILD_TYPE=Release ../
rm -rf *
sudo apt install libxcursor-dev
clear
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_CUDA_ARCHITECTURES="61" -DCMAKE_BUILD_TYPE=Release ../
ninja -j$(nproc)
clear
ninja -j$(nproc)
cd repos/ParaView/
ls
cd paraview-build/
ninja -j$(nproc)
unattended-upgrade -v --dry-run
sudo unattended-upgrade -v --dry-run
sudo unattended-upgrade -v
ls -lh /var/var/crash/
ls -lh /var/crash/
less /var/crash/nvidia-dkms-570.0.crash 
ls /boot
ls /boot/grub
less /boot/grub/grub.cfg
sudo less /boot/grub/grub.cfg
uname -r
apt list --installed
clear
apt list --installed
apt list --installed | grep linux
apt list --installed | grep linux-tools
apt list --installed | grep linux-tools-7
sudo apt purge linux-tools-7.0.0-28-generic
sudo apt list --installed
apt-cache depends linux-generic-hwe-24.04
sudo apt install --no-install-recommends linux-generic-hwe-24.04 --dry-run
sudo apt list --installed | grep hwe
less /lib/udev/hwdb.d/90-hwe-ubuntu.hwdb
sudo dpkg --purge linux-generic-hwe-24.04 linux-image-generic-hwe-24.04 linux-headers-generic-hwe-24.04 linux-headers-7.0.0-28-generic linux-image-7.0.0-28-generic linux-modules-7.0.0-28-generic linux-hwe-7.0-headers-7.0.0-28 linux-hwe-7.0-tools-7.0.0-28
sudo rm -rf /lib/modules/7.0.0-28-generic
apt list --installed | grep hwe
apt list --installed
dkms --status
dkms -status
dkms status
sudo rm -rf /var/crash/*
reboot
ls
cd repos
cd ..
cd repos
cd ParaView/
ls
rm -rf paraview-build/
mkdir paraview-build && cd paraview-build
cd paraview-build
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_CUDA_ARCHITECTURES="61" -DCMAKE_BUILD_TYPE=Release ../
ninja -j$(nproc)
sudo apt purge libqt5x11extras5-dev libqt5help5 qttools5-dev qtxmlpatterns5-dev-tools libqt5svg5-dev qtchooser
cd ..
rm -rf paraview-build/
ls
cd ..
rm -rf ParaView/
git clone --recursive https://github.com/charlielobster/ParaView.git
cd ParaView/
mkdir paraview-build && cd paraview-build
ls
apt list --installed grep "mesa-common-dev|mesa-utils|libgl1-mesa-dev|freeglut3-dev|xsltproc|libxkbcommon-dev|qt6-5compat-dev|qt6-base-dev|qt6-tools-dev|qt6-svg-dev"
apt list --installed grep "mesa\-common\-dev|mesa-utils|libgl1\-mesa\-dev|freeglut3\-dev|xsltproc|libxkbcommon\-dev|qt6\-5compat\-dev|qt6\-base\-dev|qt6\-tools\-dev|qt6\-svg\-dev"
apt list --installed | grep -E 'mesa-common-dev|mesa-utils|libgl1-mesa-dev|freeglut3-dev|xsltproc|libxkbcommon-dev|qt6-5compat-dev|qt6-base-dev|qt6-tools-dev|qt6-svg-dev'
apt install mesa-common-dev mesa-utils freeglut3-dev xsltproc libxkbcommon-dev qt6-5compat-dev qt6-base-dev qt6-tools-dev qt6-svg-dev
sudo apt install mesa-common-dev mesa-utils freeglut3-dev xsltproc libxkbcommon-dev qt6-5compat-dev qt6-base-dev qt6-tools-dev qt6-svg-dev
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_CUDA_ARCHITECTURES="61" -DVTK_CUDA_ARCHITECTURES="61" -DCMAKE_BUILD_TYPE=Release ../
rm -rf *
cmake -GNinja -DCMAKE_INSTALL_PREFIX=/opt/paraview -DPARAVIEW_USE_PYTHON=ON -DPARAVIEW_USE_CUDA=ON -DPARAVIEW_USE_MPI=ON -DVTK_SMP_IMPLEMENTATION_TYPE=TBB -DCMAKE_CUDA_ARCHITECTURES="61" -DCMAKE_BUILD_TYPE=Release ../
clear
ninja -j$(nproc)
cd repos/ParaView/paraview-build/
ninja -j$(nproc)
sudo ninja install
paraview
paraview &
cd repos/Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "massive fixes to various issues"
git push
cd repos
cd OpenFOAM/
mv OpenFOAM-v2606/ OpenFOAM
mv ThirdParty-v2606/ ThirdParty
ls
cd ..
ls
mv OpenFOAM OpenFOAM-v2606
mkdir OpenFOAM
cd OpenFOAM
git init -b main
gh repo create OpenFOAM --private --source=. --remote=origin
git submodule add https://gitlab.com/openfoam/core/openfoam.git  OpenFOAM-v2606
git submodule add https://gitlab.com/openfoam/core/thirdparty-common.git  ThirdParty-v2606
ls
git add .
git commit -m "current .com repo"
git push
git push -u origin main
git pull
paraview --version
cd repos
git clone --recursive https://github.com/charlielobster/hypre
git clone --recursive https://github.com/charlielobster/umpire
cd hypre/
git pull
cd ../
ls
cd umpire/
git pull
clear
cmake ../
mkdir build && cd build
cmake ../
cmake -DCMAKE_CUDA_ARCHITECTURES="61" ../
clear
cmake -DUMPIRE_ENABLE_CUDA ../
cmake -DUMPIRE_ENABLE_CUDA=ON ../
cmake-DBLT_ENABLE_CUDA=ON -DUMPIRE_ENABLE_CUDA=ON ../
cmake -DBLT_ENABLE_CUDA=ON -DUMPIRE_ENABLE_CUDA=ON ../
clear
cmake -DBLT_ENABLE_CUDA=ON -DUMPIRE_ENABLE_CUDA=ON ../
cmake -DBLT_ENABLE_CUDA=1 -DBLT_ENABLE_OPENMP=1 -DBLT_ENABLE_MPI=1 -DUMPIRE_ENABLE_CUDA=1 -DUMPIRE_ENABLE_OPENMP=1 -DUMPIRE_ENABLE_MPI=1 ../
cmake -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON ../
cmake -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_MPI3=ON ../
cmake -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON ../
cmake -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON ../
cmake -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON ../
cmake -DENABLE_MPI -DENABLE_CUDA -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON ../
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON ../
cd ..
ls
cd ~
ls
pwd
sudo install python3-sphinx python3-sphinx-rtd-theme
sudo apt install python3-sphinx python3-sphinx-rtd-theme
cd ~/repos
python3 -m virtualenv venv --system-site-packages
cd ..
cd repos
cd umpire/
cd build
source ~/repos/venv/bin/activate
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON ../
deactivate
clear
pip install ../docs/requirements.txt
source ~/repos/venv/bin/activate
pip install ../docs/requirements.txt
pip install -r ../docs/requirements.txt
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON ../
deactivate
sudo apt install doxygen
clear
source ~/repos/venv/bin/activate
pip install -r ../docs/requirements.txt
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON ../
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -CMAKE_BUILD_TYPE=Release ../
deactivate
source ~/repos/venv/bin/activate
pip install -r ../docs/requirements.txt
cd ..
ls
rm -rf venv
cd umpire/
cd build/
rm -rf *
python3 -m virtualenv venv --system-site-packages
source venv/bin/activate
deactivate
ls
rm -rf venv
clear
python3 -m virtualenv venv --system-site-packages
source venv/bin/activate
pip install -r ../docs/requirements.txt
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release ../
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=61 ../
deactivate
rm -rf *
clear
python3 -m virtualenv venv --system-site-packages
source venv
source ./venv
source venv/bin/activate
pip install -r ../docs/requirements.txt
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=61 ../
make -j$(nproc)
deactivate
rm -rf *
clear
python3 -m virtualenv venv --system-site-packages
source venv/bin/activate
pip install -r ../docs/requirements.txt
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=61 -DUMPIRE_ENABLE_RESOURCE_AWARE_POOL=OFF ../
deactivate
make -j$(nproc)
python3 -m virtualenv venv --system-site-packages
source venv/bin/activate
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=61 -DUMPIRE_ENABLE_RESOURCE_AWARE_POOL=OFF -DCMAKE_INSTALL_PREFIX=/opt/umpire ../
sudo make install
deactivate
clear
sudo make install
rm -rf *
sudo rm -rf *
ls
clear
python3 -m virtualenv venv --system-site-packages
source venv/bin/activate
pip install -r ../docs/requirements.txt
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=61 -DUMPIRE_ENABLE_RESOURCE_AWARE_POOL=OFF -DCMAKE_INSTALL_PREFIX=/opt/umpire ../
deactivate
rm -rf *
clear
python3 -m virtualenv venv --system-site-packages
source venv/bin/activate
pip install -r ../docs/requirements.txt
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_INSTALL_PREFIX=/opt/umpire ../
deactivate
make -j$(nproc)
sudo make install
clear
cd ..
ls
cd hypre/
ls
git pull
cd build
clear
ls
ls -rla
rm -rf *
ls -rla
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DUMPIRE_DIR=/opt/umpire -DCMAKE_INSTALL_PREFIX=/opt/hypre ../
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DUMPIRE_DIR=/opt/umpire -DCMAKE_INSTALL_PREFIX=/opt/hypre ../src
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DUMPIRE_DIR=/opt/umpire -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
cd ../../
cd umpire/
source venv/bin/activate
cd build
source venv/bin/activate
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=61 -DUMPIRE_ENABLE_C=ON -DCMAKE_INSTALL_PREFIX=/opt/umpire ../
deactivate
make -j$(nproc)
sudo make install
cd ../../
cd hypre/
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DUMPIRE_DIR=/opt/umpire -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DUMPIRE_DIR=/opt/umpire -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
clear
rm -rf *
clear
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
clear
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_DIR=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_DIR=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
ls /opt/ompi/include
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
make -j$(nproc)
sudo make install
hypre-info
hypre_info
hypre --version
ls /opt/hypre
ls /opt/umpire/bin
cd repos/hypre/build/
ls
clear
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_OPENMP=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
make -j$(nproc)
sudo make install
rm -rf /opt/hypre
sudo rm -rf /opt/hypre
sudo make install
sudo rm -rf /opt/hypre
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_OPENMP=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.a ../src
make -j$(nproc)
sudo make install
ls /opt/hypre
clear
ls
cd ../../
ls
rm -rf OpenFOAM
ls
mmkdir OpenFOAM && cd OpenFOAM
mkdir OpenFOAM && cd OpenFOAM
git clone --recursive https://gitlab.com/openfoam/core/OpenFOAM
git clone --recursive https://gitlab.com/openfoam/core/ThirdParty-common
cd ..
rm -rf OpenFOAM
mkdir OpenFOAM && cd OpenFOAM
git init -b main
gh repo create OpenFOAM --private --source=. --remote=origin
git submodule add https://gitlab.com/openfoam/core/OpenFOAM.git
git submodule add https://gitlab.com/openfoam/core/ThirdParty-common.git

git init -b main
gh repo create OpenFOAM --private --source=. --remote=origin
git add .
git commit -m "Added OpenFOAM .com submodules"
git push -u origin main
git pull
git submodule update --init --recursive
cd ..
rm -rf OpenFOAM
git clone --recursive https://github.com/charlielobster/OpenFOAM.git
ls
rm -rf OpenFOAM
clear
mkdir OpenFOAM_com && cd OpenFOAM_com
git init -b main
gh repo create OpenFOAM_com --public --source=. --remote=origin
git submodule add https://gitlab.com/openfoam/core/OpenFOAM.git
git submodule add https://gitlab.com/openfoam/core/ThirdParty-common.git
git add .
git commit -m "OpenFOAM.com submodules"
git push -u origin main
cd ..
rm -rf OpenFOAM_com/
git clone --recursive https://github.com/charlielobster/OpenFOAM_com.git
git pull
cd OpenFOAM_com/
git pull
git submodule update --remote
git submodule update --remote --merge
cd ..
ls
rm -rf OpenFOAM-v2606/
ls
cd OpenFOAM_com/
cd ..
clear
ls
clear
cd Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "notes clean-up"
git push
git add .
git commit -m "notes clean-up"
git push
git add .
git commit -m "notes clean-up"
git push
git add .
git commit -m "notes clean-up"
git push
git add .
git commit -m "notes clean-up"
git push
git add .
git commit -m "notes clean-up"
git push
cd repos/Backward-Facing-Step_Fluent-v-OpenFOAM/
git pull
orterun --version
mpirun --version
mpi-selector
ls opt
ls /opt
paraview --version
vtk --version
llvm
clear
cd repos
ls
mv fftw-3.3.11 xxfftw-3.3.11
mkdir fftw-3.3.11 && cd fftw-3.3.11
git init -b main
mv ../xxfftw-3.3.11/ .
ls
mv xxfftw-3.3.11/ .
mv xxfftw-3.3.11/* .
rmdir xxfftw-3.3.11/
ls
gh repo create fftw-3.3.11 --public --source=. --remmote=origin
gh repo create fftw-3.3.11 --public --source=. --remote=origin
git add .
git commit -m "fork of pre-built source"
git push
git push --set-upstream origin main
lscpu
cd ..
ls
rm -rf fftw-3.3.11/
git clone https://github.com/charlielobster/fftw-3.3.11
cd fftw-3.3.11/
./configure --prefix=/opt/fftw --enable-shared --enable-threads --enable-openmp --enable-sse2 --enable-avx --enable-avx2 LDFLAGS="-Wl,-rpath,/opt/fftw/lib"
make -j$(nproc)
sudo make install
sudo apt update && sudo apt install texinfo
clear
make -j$(nproc)
sudo make install
ldd /opt/fftw/lib/
ldd /opt/fftw/lib/libfftw.so
ldd /opt/fftw/lib/libfftw3_omp.so
ls /opt/fftw
ls /opt/fftw/bin
ls /opt/fftw
ls /opt/fftw/bin
fftw-wisdom --version
fftw-wisdom-to-conf
fftw-wisdom-to-conf --help
fftw-wisdom-to-conf --version
sudo apt update
sudo apt install libcgal-dev libgmp-dev libmpfr-dev libboost-system-dev
clear
cd repos
ls
git clone --recursive https://github.com/charlielobster/KaHIP
cd KaHIP/
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/kahip -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -D64BITVERTEXINFOTYPE=ON -D64BITMODE=ON -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_INSTALL_RPATH=/opt/kahip/lib ..
cmake -DCMAKE_INSTALL_PREFIX=/opt/kahip -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -D64BITVERTEXINFOTYPE=ON -D64BITMODE=ON -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_INSTALL_LIBDIR=/opt/kahip/lib -DCMAKE_INSTALL_RPATH=/opt/kahip/lib ..
rm -rf *
cmake -DCMAKE_INSTALL_PREFIX=/opt/kahip -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -D64BITVERTEXINFOTYPE=ON -D64BITMODE=ON -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_INSTALL_LIBDIR=/opt/kahip/lib -DCMAKE_INSTALL_RPATH=/opt/kahip/lib ..
rm -rf *
cmake -DCMAKE_INSTALL_PREFIX=/opt/kahip -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -D64BITMODE=ON -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_INSTALL_LIBDIR=/opt/kahip/lib -DCMAKE_INSTALL_RPATH=/opt/kahip/lib ..
make -j$(nproc)
sudo make install
ls /opt/kahip
ls /opt/kahip/bin
parhip --version
toolbox --version
toolbox --help
clear
ls /opt/kahip/bin
edge_evaluator --version
edge_evaluator --help
cd repos
mkdir KarypisLab
cd KarypisLab/
gh repo create KarypisLab --private --source=. --remote=origin
git init -b main
gh repo create KarypisLab --private --source=. --remote=origin
git submodule add https://github.com/KarypisLab/GKlib.git
https://github.com/KarypisLab/METIS.git
git submodule add https://github.com/KarypisLab/METIS.git
git submodule add https://github.com/KarypisLab/ParMETIS.git
git add .
git commit -m "Added KarypisLabs tools GKLib, METIS, and ParMETIS"
git push -u origin main
git submodule --init --recursive
cd ..
rm -rf KarypisLab/
git clone --recursive https://github.com/charlielobster/KarypisLab.git
cd KarypisLab/
ls
cd GKlib/
mkdir build && cd build
which mpicc
ls /opt/prrte/libb
ls /opt/prrte/lib
ls /opt/pmix/lib
ls /opt/ucx/lib
;s
ls
clear
cmake -DCMAKE_INSTALL_PREFIX=/opt/gklib -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/gklib/lib -DCMAKE_INSTALL_RPATH=/opt/gklib/lib ..
make -j$(nproc)
sudo make install
ls /opt/gklib
ls /opt/gklib/bin
csrcnv --version
csrcnv -help
clear
ls /opt/gklib/lib
cd repos
ls
cd KarypisLab/
ls
cd METIS/
ls
mkdir build && cd build
echo $LD_LIBRARY_PATH
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
make -j$(nproc)
mkdir xinclude
cp ../include/metis.h xinclude
cp ../include/CMakeLists.txt xinclude
ls xinclude
make -j$(nproc)
clear
ls
ls build/
ls xinclude/
cd ..
rm -rf libmetis
rm -rf programs
ls
rm -rf *
git pull
cd ..
git pull
git pull --recursive
cd ..
rm -rf KarypisLab/
git clone --recursive https://github.com/charlielobster/KarypisLab.git
cd KarypisLab/
cd METIS
ls
mkdir build && cd build
ls
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
make -j$(nproc)
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
make -j$(nproc)
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
make -j$(nproc)
rm -rf *
cd ..
mkdir metis-build && cd metis-build
ls
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
make -j$(nproc)
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
make -j$(nproc)
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_INSTALL_RPATH=/opt/metis/lib -DCMAKE_REQUIRED_INCLUDES=/opt/metis/include ..
make -j$(nproc)
make --verbose
make --debug
make --verbose
make -d
clear
make VERBOSE=1
clear
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/metis/lib -DCMAKE_INSTALL_PREFIX=/opt/metis -DGKLIB_PATH=/opt/gklib -DCMAKE_C_FLAGS="-DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64" -DCMAKE_INSTALL_RPATH=/opt/metis/lib ..
make VERBOSE=1
sudo make install
ls /opt/metis
ls /opt/metis/bin
mpmetis --help
cd ..
ls
cd skooby/repos/
ls
cd KarypisLab/
cd ParMETIS/
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DCMAKE_INSTALL_PREFIX=/opt/parmetis -DCMAKE_INSTALL_LIBDIR=/opt/parmetis/lib -DCMAKE_INSTALL_RPATH=/opt/parmetis/lib -DGKLIB_PATH=/opt/gklib -DMETIS_PATH=/opt/metis -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_C_FLAGS="-DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64" ..
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DCMAKE_INSTALL_PREFIX=/opt/parmetis -DCMAKE_INSTALL_LIBDIR=/opt/parmetis/lib -DCMAKE_INSTALL_RPATH=/opt/parmetis/lib -DGKLIB_PATH=/opt/gklib -DMETIS_PATH=/opt/metis -DCMAKE_C_FLAGS="-DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64" ..
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DCMAKE_INSTALL_PREFIX=/opt/parmetis -DCMAKE_INSTALL_LIBDIR=/opt/parmetis/lib -DCMAKE_INSTALL_RPATH=/opt/parmetis/lib -DGKLIB_PATH=/opt/gklib -DMETIS_PATH=/opt/metis -DCMAKE_C_FLAGS="-DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64" ..
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DCMAKE_INSTALL_PREFIX=/opt/parmetis -DCMAKE_INSTALL_RPATH=/opt/parmetis/lib -DGKLIB_PATH=/opt/gklib -DMETIS_PATH=/opt/metis -DCMAKE_C_COMPILER=mpicc -DCMAKE_C_FLAGS="-DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64" ..
make VERBOSE=1
clear
rmm -rf *
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_PREFIX=/opt/parmetis -DCMAKE_INSTALL_RPATH=/opt/parmetis/lib -DGKLIB_PATH=/opt/gklib -DMETIS_PATH=/opt/metis -DCMAKE_C_COMPILER=mpicc -DCMAKE_C_FLAGS="-DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64 -Wno-error=incompatible-pointer-type" ..
rm -rf *
clear
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_PREFIX=/opt/parmetis -DCMAKE_INSTALL_RPATH=/opt/parmetis/lib -DGKLIB_PATH=/opt/gklib -DMETIS_PATH=/opt/metis -DCMAKE_C_COMPILER=mpicc -DCMAKE_C_FLAGS="-DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64 -Wno-error=incompatible-pointer-types" ..
make VERBOSE=1
sudo make install
ls /opt/parmetis/
ls /opt/parmetis/lib
cd repos
ls
mkdir Scotch
cd Scotch/
git init -b main
git remote add upstream https://gitlab.inria.fr/scotch/scotch.git
git remote -v
git remote add origin git@github.com:charlielobster/Scotch.git
git remote -v
git fetch upstream
git merge upstream/master
git push origin master
git push origin main
get remote set-url origin https://github.com/charlielobster/scotch.git
git remote set-url origin https://github.com/charlielobster/scotch.git
git remote -v
git push origin master
cd ..
ls
rm -rf Scotch
git clone https://github.com/charlielobster/Scotch.git
git remote add upstream https://gitlab.inria.fr/scotch/scotch.git
cd Scotch
git remote add upstream https://gitlab.inria.fr/scotch/scotch.git
git remote -v
git fetch upstream
git merge upstream/master
git push origin master
git push origin main
cd ..
rm -rf Scotch/
git clone --recursive https://github.com/charlielobster/Scotch.git
cd Scotch/
ls
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/scotch -DCMAKE_INSTALL_LIBDIR=/opt/scotch/lib -DCMAKE_INSTALL_RPATH=/opt/scotch/lib -DINTSIZE=64 -DINSTALL_METIS_HEADERS=OFF -DCOMMON_PTHREAD=ON -DSCOTCH_PTHREAD=ON -DCOMMON_PTHREAD_AFFINITY_LINUX=ON -DMPI_THREAD_MULTIPLE=ON -DCMAKE_C_COMPILER=mpicc ..
cd ..
rm -rf build
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/scotch -DCMAKE_INSTALL_LIBDIR=/opt/scotch/lib -DCMAKE_INSTALL_RPATH=/opt/scotch/lib -DINTSIZE=64 -DINSTALL_METIS_HEADERS=OFF -DMPI_THREAD_MULTIPLE=ON -DCMAKE_C_COMPILER=mpicc ..
clear
cd ..
rm -rf build
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/scotch -DCMAKE_INSTALL_LIBDIR=/opt/scotch/lib -DCMAKE_INSTALL_RPATH=/opt/scotch/lib -DINTSIZE=64 -DINSTALL_METIS_HEADERS=OFF -DMPI_THREAD_MULTIPLE=ON -DCMAKE_C_COMPILER=mpicc ..
make VERBOSE=1
sudo make install
ls /opt/scotch/bin
ls /opt/scotch/lib
gord --version
gord --help
gord -help
gord -V
cd repos
git clone --recursive https://github.com/charlielobster/Zoltan.git
cd Zoltan/
mkdir build && cd build
clear
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/zoltan -DCMAKE_INSTALL_LIBDIR=/opt/zoltan/lib -DCMAKE_INSTALL_RPATH=/opt/zoltan/lib -DZoltan_ENABLE_ParMETIS=ON -DParMETIS_INCLUDE_DIRS=/opt/parmetis/include -DParMETIS_LIBRARY_DIRS=/opt/parmetis/lib -DMETIS_INCLUDE_DIRS=/opt/metis/include -DMETIS_LIBRARY_DIRS=/opt/metis/lib -DZoltan_ENABLE_Scotch=ON -DScotch_INCLUDE_DIRS=/opt/scotch/include -DScotch_LIBRARY_DIRS=/opt/scotch/lib -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_C_FLAGS=-DZOLTAN_BIG_IDS -DCMAKE_CXX_FLAGS=-DZOLTAN_BIG_IDS ..
cd ..
rm -rf build
mkdir build && cd build
./configure   --prefix="/opt/zoltan"   --with-id-type="ulong"   --enable-mpi   CC="mpicc"   CXX="mpicxx"   --with-metis-incdir="/opt/metis/include"   --with-metis-libdir="/opt/metis/lib"   --with-parmetis-incdir="/opt/parmetis/include"   --with-parmetis-libdir="/opt/parmetis/lib"   --with-scotch-incdir="/opt/scotch/include"   --with-scotch-libdir="/opt/scotch/lib"   CFLAGS="-O3 -fPIC"   CXXFLAGS="-O3 -fPIC" ..
cd ..
./configure   --prefix="/opt/zoltan"   --with-id-type="ulong"   --enable-mpi   CC="mpicc"   CXX="mpicxx"   --with-metis-incdir="/opt/metis/include"   --with-metis-libdir="/opt/metis/lib"   --with-parmetis-incdir="/opt/parmetis/include"   --with-parmetis-libdir="/opt/parmetis/lib"   --with-scotch-incdir="/opt/scotch/include"   --with-scotch-libdir="/opt/scotch/lib"   CFLAGS="-O3 -fPIC"   CXXFLAGS="-O3 -fPIC"
cd build/
../configure   --prefix="/opt/zoltan"   --with-id-type="ulong"   --enable-mpi   CC="mpicc"   CXX="mpicxx"   --with-metis-incdir="/opt/metis/include"   --with-metis-libdir="/opt/metis/lib"   --with-parmetis-incdir="/opt/parmetis/include"   --with-parmetis-libdir="/opt/parmetis/lib"   --with-scotch-incdir="/opt/scotch/include"   --with-scotch-libdir="/opt/scotch/lib"   CFLAGS="-O3 -fPIC"   CXXFLAGS="-O3 -fPIC"
cd ..
rm -rf build && mkdir build && cd build
../configure   --prefix="/opt/zoltan"   --with-id-type="ulong"   --enable-mpi   --enable-gzip   CC="mpicc"   CXX="mpicxx"   --with-parmetis-incdir="/opt/parmetis/include"   --with-parmetis-libdir="/opt/parmetis/lib"   --with-scotch-incdir="/opt/scotch/include"   --with-scotch-libdir="/opt/scotch/lib"   CFLAGS="-O3 -fPIC"   CXXFLAGS="-O3 -fPIC"
../configure   --prefix="/opt/zoltan"   --with-id-type="ulong"   --enable-mpi   --enable-gzip   CC="mpicc"   CXX="mpicxx"   --with-parmetis-incdir="/opt/parmetis/include"   --with-parmetis-libdir="/opt/parmetis/lib"   --with-scotch-incdir="/opt/scotch/include"   --with-scotch-libdir="/opt/scotch/lib"   CFLAGS="-O3 -fPIC"   CXXFLAGS="-O3 -fPIC" --enable-scotch --enable-parmetis
../configure   --prefix="/opt/zoltan"   --with-id-type="ulong"   --enable-mpi   --enable-gzip   CC="mpicc"   CXX="mpicxx"   --with-parmetis-incdir="/opt/parmetis/include"   --with-parmetis-libdir="/opt/parmetis/lib"   --with-scotch-incdir="/opt/scotch/include"   --with-scotch-libdir="/opt/scotch/lib"   CFLAGS="-O3 -fPIC"   CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis
clear
cd ..
rm -rf build
mkdir build && cd build
../configure --prefix=/opt/zoltan --with-id-type=ulong --enable-mpi --enable-gzip CC=mpicc CXX=mpicxx --with-parmetis-incdir=/opt/parmetis/include --with-parmetis-libdir=/opt/parmetis/lib --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis
make everything -j$(nproc)
cd ..
rm -rf build
mkdir build && cd build
../configure --prefix=/opt/zoltan --with-id-type=ulong --enable-mpi --enable-gzip CC=mpicc CXX=mpicxx --with-parmetis-incdir=/opt/parmetis/include --with-parmetis-libdir=/opt/parmetis/lib --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis CPPFLAGS="-I/opt/metis/include"
make everything -j$(nproc)
make everything VERBOSE=1
cd ..
rm -rf build
mkdir build && cd build
../configure --prefix=/opt/zoltan --with-id-type=ulong --enable-mpi --enable-gzip CC=mpicc CXX=mpicxx --with-parmetis-incdir=/opt/parmetis/include --with-parmetis-libdir=/opt/parmetis/lib --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis CPPFLAGS="-I/opt/metis/include -DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64"
make VERBOSE=1
clear
cd .. && rm -rf build && mkdir build && cd build
../configure --prefix=/opt/zoltan --with-id-type=ulong --enable-mpi CC=mpicc CXX=mpicxx --with-parmetis-incdir=/opt/parmetis/include --with-parmetis-libdir=/opt/parmetis/lib --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis CPPFLAGS="-I/opt/metis/include -DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64"
make everything -j$(nproc)
cd .. && rm -rf build && mkdir build && cd build
clear
../configure --prefix=/opt/zoltan --with-id-type=ulong --enable-mpi CC=mpicc CXX=mpicxx --with-parmetis-incdir=/opt/parmetis/include --with-parmetis-libdir=/opt/parmetis/lib --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis CPPFLAGS="-I/opt/metis/include -DIDXTYPEWIDTH=64 -DREALTYPEWIDTH=64" LDFLAGS="-L/opt/metis/lib"
make everything $(nproc)
make everything -j$(nproc)
sudo make install
ls /opt/zoltan
cd ..
ls
cd ..
ls
git clone --recursive https://github.com/charlielobster/petsc
cd Backward-Facing-Step_Fluent-v-OpenFOAM/
git add .
git commit -m "notes"
git push
git pull
echo $LD_LIBRARY_PATH
cd repos/petsc
ls
mkdir build
ls
cd build
clear
cd repos
ls
cd petsc
cd build
clear
ls
clear
./configure --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-64-bit-indices=1 --with-mpi-dir=/opt/ompi --with-metis-dir=/opt/metis --with-parmetis-dir=/opt/parmetis --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre CUDAFLAGS="-arch=sm_61" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
clear
./configure --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-64-bit-indices=1 --with-mpi-dir=/opt/ompi --with-metis-dir=/opt/metis --with-parmetis-dir=/opt/parmetis --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre CUDAFLAGS="-arch=sm_61" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
../configure --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-64-bit-indices=1 --with-mpi-dir=/opt/ompi --with-metis-dir=/opt/metis --with-parmetis-dir=/opt/parmetis --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre CUDAFLAGS="-arch=sm_61" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
ls ..
../configure
cd ..
./configure --help
clear
./configure --help
clear
./configure --with-petsc-arch=build
rm -rf build
mkdir build
../configure --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-64-bit-indices=1 --with-mpi-dir=/opt/ompi --with-metis-dir=/opt/metis --with-parmetis-dir=/opt/parmetis --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre CUDAFLAGS="-arch=sm_61" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
./configure --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-64-bit-indices=1 --with-mpi-dir=/opt/ompi --with-metis-dir=/opt/metis --with-parmetis-dir=/opt/parmetis --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre CUDAFLAGS="-arch=sm_61" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
rm -rf build
mkdir build
./configure --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-64-bit-indices=1 --with-mpi-dir=/opt/ompi --with-metis-dir=/opt/metis --with-parmetis-dir=/opt/parmetis --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre CUDAFLAGS="-arch=sm_61" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
grep -E "HYPRE_BIGINT|HYPRE_MIXEDINT" /opt/hypre/include/HYPRE_config.h
less /opt/hypre/include/HYPER_utilities.h
ls /opt/hypre/include
less /opt/hypre/include/HYPRE_utilities.h
less /opt/hypre/include/HYPRE_config.h
clear
cd fftw
cd ..
cd fftw-3.3.11/
ls
./configure --prefix=/opt/fftw --enable-shared --enable-threads --enable-openmp --enable-mpi --enable-sse2 --enable-avx --enable-avx2 LDFLAGS="-Wl,-rpath,/opt/fftw/lib"
make -j$(nproc)
make distclean
./configure --prefix=/opt/fftw --enable-shared --enable-threads --enable-openmp --enable-mpi --enable-sse2 --enable-avx --enable-avx2 LDFLAGS="-Wl,-rpath,/opt/fftw/lib"
make -j$(nproc)
rm -rf /opt/fftw
sudo rm -rf /opt/fftw
sudo make install
cd ..
cd kahip
cd KaHIP
ls
rm -rf build && mkdir build && cd build
ls
clear
cmake -DCMAKE_INSTALL_PREFIX=/opt/kahip -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_INSTALL_LIBDIR=/opt/kahip/lib -DCMAKE_INSTALL_RPATH=/opt/kahip/lib ..
make -j$(nproc)
sudo rm -rf /opt/kahip
sudo make install
grep -n "typedef" /opt/kahip/include/kaapi.h
ls /opt/kahip/include
grep -n "typedef" /opt/kahip/include/*
less /opt/kahip/include/kaHIP_interface.h 
cd ..
ls
cd KarypisLab/
cd GKlib/
rm -rf build
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/karypis -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
make -j$(nproc)
sudo make install
cd ..
cd METIS
rm -rf build
mkdir build && cd build
clear
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
history
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
cd ..
rm -rf build
mkdir build && cd build
clear
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
make VERBOSE=1
history
cd ..
rm -rf build
mkdir metis-build && cd metis-build
rm -rf metis-build
cd ..
git reset --hard HEAD
cd METIS/
ls
git reset --hard HEAD
mkdir metis-build && cd metis-build
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
cd ..
rm -rf metis-build
mkdir metis-build && cd metis-build
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
make VERBOSE=1
clear
make VERBOSE=1
clear
make VERBOSE=1
clear
cd ..
rm -rf metis-build
mkdir metis-build && cd metis-build
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DIDXTYPEWIDTH=32 -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
clear
make VERBOSE=1
clear
cd ..
ls
cd GKlib/
ls
rm -rf build
mkdir build && cd build
sudo rm -rf /opt/karypis
sudo rm -rf /opt/gklib /opt/metis /opt/parmetis /opt/scotch /opt/zoltan
ls /opt
ls
cmake -DCMAKE_INSTALL_PREFIX=/opt/karypis -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
make VERBOSE=1
sudo make install
cd ..
cd METIS
ls
rm -rf metis-build/
mkdir metis-build && cd metis-build
clear
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
make VERBOSE=1
clear
cd ..
rm -rf metis-build/
mkdir metis-build && cd metis-build
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_C_FLAGS="-march=native -O3 -DIDXTYPEWIDTH=32" -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
make VERBOSE=1
clear
cd .. && rm -rf metis-build
mkdir metis-build && cd metis-build
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_C_FLAGS="-march=native -O3 -DIDXTYPEWIDTH=32 -DREALTYPEWIDTH=32" -DCMAKE_INSTALL_LIBDIR=/opt/karypis/lib -DCMAKE_INSTALL_PREFIX=/opt/karypis -DGKLIB_PATH=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib ..
make VERBOSE=1
sudo make install
cd repos/KarypisLab/ParMETIS/
ls
rm -rf build
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DSHARED=ON -DOPENMP=ON -DCMAKE_INSTALL_PREFIX=/opt/karypis -DCMAKE_INSTALL_RPATH=/opt/karypis/lib -DGKLIB_PATH=/opt/karypis -DMETIS_PATH=/opt/karypis -DCMAKE_C_COMPILER=mpicc -DCMAKE_C_FLAGS="-DIDXTYPEWIDTH=32 -DREALTYPEWIDTH=32" ..
make VERBOSE=1
cd ..
ls
cd ..
ls
cd ..
ls
cd Scotch/
ls
rm -rf build
mkdir build && cd build
ls
clear
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/scotch -DCMAKE_INSTALL_LIBDIR=/opt/scotch/lib -DCMAKE_INSTALL_RPATH=/opt/scotch/lib -DINSTALL_METIS_HEADERS=OFF -DMPI_THREAD_MULTIPLE=ON -DCMAKE_C_COMPILER=mpicc ..
clear
make -j$(nproc)
sudo make install
ls /opt/scotch
echo $LD_LIBRARY_PATH
clear
cd repos/Zoltan/
ls
rm -rf build
mkdir build && cd build
../configure --prefix=/opt/zoltan --enable-mpi CC=mpicc CXX=mpicxx --with-parmetis-incdir=/opt/karypis/include --with-parmetis-libdir=/opt/karypis/lib --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis CPPFLAGS="-I/opt/karypis/include -DIDXTYPEWIDTH=32-DREALTYPEWIDTH=32" LDFLAGS="-L/opt/karypis/lib"
make everything
cd ..
cd ../KarypisLab/ParMETIS/
cd build/
sudo make install
cd ../../
cd ..
cd Zoltan/build/
make everything
clear
ls
cd ..
rm -rf build
mkdir build && cd build
../configure --prefix=/opt/zoltan --enable-mpi CC=mpicc CXX=mpicxx --with-parmetis-incdir=/opt/karypis/include --with-parmetis-libdir=/opt/karypis/lib --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis CPPFLAGS="-I/opt/karypis/include -DIDXTYPEWIDTH=32-DREALTYPEWIDTH=32" LDFLAGS="-L/opt/karypis/lib"
clear
make everything VERBOSE=1
cd .. && rm -rf build
mkdir build && cd build
../configure --prefix=/opt/zoltan --enable-mpi CC=mpicc CXX=mpicxx --with-parmetis-incdir=/opt/karypis/include --with-parmetis-libdir=/opt/karypis/lib --with-scotch-incdir=/opt/scotch/include --with-scotch-libdir=/opt/scotch/lib CFLAGS="-O3 -fPIC" CXXFLAGS="-O3 -fPIC" --with-scotch --with-parmetis CPPFLAGS="-I/opt/karypis/include -DIDXTYPEWIDTH=32 -DREALTYPEWIDTH=32" LDFLAGS="-L/opt/karypis/lib"
make everything VERBOSE=1
sudo make install
ls /opt/zoltan
cd ../../petsc
ls
rm -rf build && mkdir build && cd build
cd ../../
ls
git clone --recursive https://github.com/charlielobster/amgx
ls 
cd amgx
ls
mkdir build && cd build
ls
clean
clear
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx ..
make -j$(nproc)
cd ..
rm -rf build
mkdir build && cd build
clear
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DMPI_C_INCLUDE_PATH=/opt/ompi/include -DMPI_CXX_INCLUDE_PATH=/opt/ompi/include ..
make -j$(nproc)
make clean
clear
make -j$(nproc) VERBOSE=1
clear
cd .. && rm -rf build
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_CUDA_FLAGS="-I/opt/ompi/include" ..
make -j$(nproc) VERBOSE=1
cd ..
rm -rf build
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_CUDA_FLAGS="-I/opt/ompi/include" -DCMAKE_EXE_LINKER_FLAGS="-L/opt/ompi/lib -lmpi" ..
clear
make -j$(nproc) VERBOSE=1
cd ..
rm -rf build
mkdir build && cd build
clear
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_CUDA_FLAGS="-I/opt/ompi/include" -DCMAKE_EXE_LINKER_FLAGS="-L/opt/ompi/lib -lmpi -lmpi_cxx" ..
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_CUDA_FLAGS="-I/opt/ompi/include" -DCMAKE_EXE_LINKER_FLAGS="-L/opt/ompi/lib -lmpi -lmpi_cpp" ..
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_CUDA_FLAGS="-I/opt/ompi/include" -DCMAKE_SHARED_LINKER_FLAGS="-Wl,-rpath,/opt/ompi/lib -L/opt/ompi/lib -lmpi" -DCMAKE_EXE_LINKER_FLAGS="-Wl,-rpath,/opt/ompi/lib -L/opt/ompi/lib -lmpi" ..
clear
make -j$(nproc) VERBOSE=1
cd .. && rm -rf build
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_CUDA_FLAGS="-I/opt/ompi/include" -DCMAKE_SHARED_LINKER_FLAGS="-Wl,-rpath,/opt/ompi/lib -L/opt/ompi/lib -lmpi" -DCMAKE_EXE_LINKER_FLAGS="-Wl,-rpath,/opt/ompi/lib -L/opt/ompi/lib -lmpi" ..
clear
make -j$(nproc) VERBOSE=1
cd /home/skooby/repos/amgx/build/src && /usr/bin/cmake -E cmake_link_script CMakeFiles/amgx_tests_launcher.dir/link.txt --verbose=1
/usr/bin/g++ -Wl,-rpath,/opt/ompi/lib -L/opt/ompi/lib -lmpi @CMakeFiles/amgx_tests_launcher.dir/objects1.rsp -o amgx_tests_launcher @CMakeFiles/amgx_tests_launcher.dir/linkLibs.rsp -L"/usr/local/cuda/targets/x86_64-linux/lib/stubs" -L"/usr/local/cuda/targets/x86_64-linux/lib"
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/amgx -DCMAKE_CUDA_ARCHITECTURES=61 -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_CUDA_FLAGS="-I/opt/ompi/include" -DCMAKE_SHARED_LINKER_FLAGS="-Wl,-rpath,/opt/ompi/lib -L/opt/ompi/lib -lmpi" -DCMAKE_EXE_LINKER_FLAGS="-Wl,-rpath,/opt/ompi/lib -L/opt/ompi/lib -lmpi" ..
make -j$(nproc) VERBOSE=1
cd ..
make -j$(nproc) VERBOSE=1
sudo make install
ls /opt/amgx
cd repos
cd petsc
cd build
cd ..
clear
echo $LD_LIBRARY_PATH
clear
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-metis-dir=/opt/karypis --with-parmetis-dir=/opt/karypis --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre CUDAFLAGS="-arch=sm_61" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
rm -rf build
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch \
  --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc \
  --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi \
  --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan \
  --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre \
  --with-metis-include=/opt/karypis/include \
  --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" \
  --with-parmetis-include=/opt/karypis/include \
  --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" \
  CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" \
  COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"

./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre   --with-metis-include=/opt/karypis/include   --with-metis-lib="[-L/opt/karypis/lib,-lmetis,-lGKlib]"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="[-L/opt/karypis/lib,-lparmetis]"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre   --with-metis-include=/opt/karypis/include   --with-metis-lib="-L/opt/karypis/lib,-lmetis,-lGKlib"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="-L/opt/karypis/lib,-lparmetis"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=na
rm -rf build
rm -f configure.log.bkp
rm -rf .pytest_cache/
find . -name "*.pyc" -delete
clear
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
clear
rm -rf build
rm -f configure.log.bkp
find . -name "*.pyc" -delete
rm -rf .pytest_cache/
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
rm -rf build
rm -f configure.log.bkp
find . -name "*.pyc" -delete
rm -rf .pytest_cache/
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --download-fblaspack=1
rm -rf build
rm -f configure.log.bkp
find . -name "*.pyc" -delete
rm -rf .pytest_cache/
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --download-fblaslapack=1
sudo apt-get install libopenblas-dev liblapack-dev
cd repos/petsc
rm -rf build
rm -f configure.log.bkp
find . -name "*.pyc" -delete
rm -rf .pytest_cache/
clear
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-dir=/opt/hypre --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
ls /opt/hypre
clear
rm -rf build
rm -f configure.log.bkp
find . -name "*.pyc" -delete
rm -rf .pytest_cache/
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
clear
rm -rf build
rm -f configure.log.bkp
find . -name "*.pyc" -delete
rm -rf .pytest_cache/
./configure --with-hwloc=1 --with-boost=1 --with-openmp=1   --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda   --with-hypre-include=/opt/hypre/include   --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so"   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
cat /opt/hypre/include/HYPRE_config.h
rm -rf build/ configure.log.bkp
./configure --with-hwloc=1 --with-boost=1 --with-openmp=1   --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda   --with-hypre-include=/opt/hypre/include   --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so"   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
rm -rf build/ configure.log.bkp
./configure --with-hwloc=1 --with-boost=1 --with-openmp=1   --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda   --with-hypre-include=/opt/hypre/include   --with-hypre-lib="/opt/hypre/lib/libHYPRE.a /opt/umpire/lib/libumpire.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so"   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
./configure --with-hwloc=1 --with-boost=1 --with-openmp=1   --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda   --with-hypre-include=/opt/hypre/include   --with-hypre-lib="/opt/hypre/lib/libHYPRE.a"   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
rm -rf build/ configure.log.bkp
./configure --with-hwloc=1 --with-boost=1 --with-openmp=1   --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch   --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc   --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi   --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan   --with-cuda=1 --with-cuda-dir=/usr/local/cuda   --with-hypre-include=/opt/hypre/include   --with-hypre-lib="/opt/hypre/lib/libHYPRE.a"   --with-metis-include=/opt/karypis/include   --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include   --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3"   COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native"
rm -rf build/ configure.log.bkp
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.a /opt/umpire/lib/libumpire.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
ls /opt/umpire/lib
clear
rm -rf build/ configure.log.bkp
ls /opt/umpire/lib
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.a /opt/umpire/lib/libumpire.a /opt/umpire/lib/libcamp.a /opt/umpire/lib/libfmt.a /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build all
rm -rf build/ configure.log.bkp
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda -with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-libdir=/opt/umpire/lib/libumpire.a --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.a /opt/umpire/lib/libumpire.a /opt/umpire/lib/libcamp.a /opt/umpire/lib/libfmt.a /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
rm -rf build/ configure.log.bkp
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-libdir=/opt/umpire/lib/libumpire.a --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.a /opt/umpire/lib/libumpire.a /opt/umpire/lib/libcamp.a /opt/umpire/lib/libfmt.a /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"   --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
rm -rf build/ configure.log.bkp
clear
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.a --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.a /opt/umpire/lib/libumpire.a /opt/umpire/lib/libcamp.a /opt/umpire/lib/libfmt.a /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build all
ls /opt/ompi/lib
cd ..
cd umpire/
ls
rm -rf build
mkdir build && cd build
cmake -DENABLE_MPI=ON -DENABLE_CUDA=ON -DBLT_ENABLE_CUDA=ON -DBLT_ENABLE_OPENMP=ON -DBLT_ENABLE_MPI=ON -DBUILD_SHARED_LIBS=ON -DUMPIRE_ENABLE_CUDA=ON -DUMPIRE_ENABLE_OPENMP=ON -DUMPIRE_ENABLE_MPI=ON -DUMPIRE_ENABLE_IPC_SHARED_MEMORY=ON -DUMPIRE_ENABLE_MPI3_SHARED_MEMORY=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=61 -DUMPIRE_ENABLE_C=ON -DCMAKE_INSTALL_PREFIX=/opt/umpire ../
make -j$(nproc)
rm -rf /opt/umpire
sudo rm -rf /opt/umpire
sudo make install
cd ../../
cd hypre/
ls
rm -rf build
mkdir build && cd build
ls /opt/umpire/lib
cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_OPENMP=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.so ../src
make -j$(nproc)
sudo rm -rf /opt/hypre
sudo make install
ls /opt/hypre/libb
ls /opt/hypre/lib
clear
cd ../ && rm -rf build
mkdir build && cd build
cmake -DCMAKE_BUILD_SHARED_LIBRARIES=ON -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_OPENMP=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.so ../src
cd ../ && rm -rf build
mkdir build && cd build
clear
cmake -DCMAKE_BUILD_SHARED_LIBS=ON -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_OPENMP=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.so ../src
mkdir build && cd build
cd ..
cd ../ && rm -rf build
mkdir build && cd build
clear
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DHYPRE_ENABLE_CUDA=ON -DMPI_INCLUDE_PATH=/opt/ompi/include -DCMAKE_CUDA_ARCHITECTURES=61 -DHYPRE_ENABLE_GPU_AWARE_MPI=ON -DHYPRE_ENABLE_OPENMP=ON -DHYPRE_ENABLE_UMPIRE=ON -DHYPRE_ENABLE_UMPIRE_HOST=ON -DHYPRE_ENABLE_UMPIRE_DEVICE=ON -DCMAKE_INSTALL_PREFIX=/opt/hypre -DTPL_UMPIRE_INCLUDE_DIRS=/opt/umpire/include -DTPL_UMPIRE_LIBRARIES=/opt/umpire/lib/libumpire.so ../src
make -j$(nproc)
sudo rm -rf /opt/hypre
sudo make install
ls /opt/hypre/lib
ls /opt/karypis/lib
ls /opt/scotch/lib
ls /opt/kahip/lib
cd ../../
cd petsc
ls
rm -rf build/ configure.log.bkp
clear
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build all
sudo make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build install
ls /opt/petsc
make PETSC_DIR=/opt/petsc PETSC_ARCH="" check
clear
make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build check
prterun --version
echo $PATH
echo $LD_LIBRARY_PATH
make PETSC=DIR/opt/petsc PETSC_ARCH="" check
cd repos/petsc
make PETSC_DIR=/opt/petsc PETSC_ARCH="" check
ldd /opt/petsc/lib/libpetsc.so | grep -E "hypre|umpire|cuda|mpi"
sudo chown -R skooby:skooby /home/skooby/repos/petsc
export PRTE_MCA_schizo_allow_all=1
make PETSC_DIR=/opt/petsc PETSC_ARCH="" check
ls /opt/petsc/lib/
ls /opt/petsc/lib/libpetsc.so
ldd /opt/petsc/lib/libpetsc.so
echo $WM_PROJECT_DIR
echo $PETSC_DIR
echo $PETSC_ARCH_PATH
./Allwmake -j$(nproc)
cd repos/OpenFOAM_com/OpenFOAM
clear
./Allwmake -j$(nproc)
./Allwmake --clean
./Allwmake -clean
wmake -help
./Allwclean
ls
ls build
rm -rf build/*
rm -rf build platforms
find src applications -type d -name "lnInclude" -exec rm -rf {} +
echo $FOAM_PETSC_DIR
find /home/skooby/repos/OpenFOAM_com/OpenFOAM/platforms/ -name "libpetscFoam.so"
cd repos/OpenFOAM_com/OpenFOAM
ls
echo $WM_THIRD_PARTY_DIR
./Allwmake -j$(nproc)
echo "=== CORES VERIFICATION ==="
foamHasLibrary -verbose petscFoam metisDecomp ptscotchDecomp
foamHasLibrary
foamHasLibrary -verbose
foamHasLibrary -verbose metisDecomp
foamHasLibrary -verbose metisDecomp ptscotchDecomp petscFoam
cd repos/petsc
ls
rm -rf build
mkdir build && cd build
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --with-fc=gfortran
cd ..
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --with-fc=gfortran
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --with-fc=mpif90
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --with-fc=/opt/ompi/bin/mpif90
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --with-fortran-bindings=1
make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build all
sudo rm -rf /opt/petsc
PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build install
sudo make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build install
make PETSC_DIR=/opt/petsc PETSC_ARCH="build" check
make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH="build" check
cd ../OpenFOAM_com/OpenFOAM/
cd modules
ls
cd external-solver/
clear
ls
Allwclean
./Allwclean
./Allwmake
foamHasLibrary -verbose metisDecomp ptscotchDecomp petscFoam
ldd /home/skooby/OpenFOAM/skooby-v2606/platforms/linux64GccDPInt32Opt/lib/libpetscFoam.so | grep petsc
nm -D /opt/petsc/lib/libpetsc.so.3.025 | grep -i kspconvergedskip
cd ~/repos/petsc
ls
rm -rf build
clear
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --with-fortran-bindings=1 --with-fortran-mangling=underscore 
rm -rf build
./configure --prefix=/opt/petsc             --with-debugging=0             --with-shared-libraries=1             --with-fortran-bindings=0             --with-fortran-kernels=0             --with-fortranlib-autodetect=0             --with-openmp             --with-mpi-dir=/opt/ompi             --with-scotch-dir=/opt/scotch             --with-ptscotch=1             --with-ptscotch-dir=/opt/scotch             --with-zoltan-dir=/opt/zoltan             --with-cuda=1             --with-cuda-dir=/usr/local/cuda             --with-cuda-arch=61             --with-umpire=1             --with-umpire-include=/opt/umpire/include             --with-umpire-lib=/opt/umpire/lib/libumpire.so             --with-hypre=1             --with-hypre-include=/opt/hypre/include             --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so"             --with-metis-include=/opt/karypis/include             --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"             --with-parmetis-include=/opt/karypis/include             --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so"
rm -rf build
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" --with-CUDAOPTFLAGS="-O3" --with-COPTFLAGS="-O3 -march=native" --with-CXXOPTFLAGS="-O3 -march=native" --with-FOPTFLAGS="-O3 -march=native" --with-openmp --with-fortran-bindings=1 --with-fortran-kernels=0 --with-fortranlib-autodetect=0
clear
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp --with-fortran-bindings=1 --with-fortran-kernels=0 --with-fortranlib-autodetect=0
make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build all
sudo rm -rf /opt/petsc
sudo make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build install
nm -D /opt/petsc/lib/libpetsc.so.3.025 | grep -i kspconvergedskip
clear
rm -rf build
./configure --with-hwloc=1 --with-boost=1 --with-ptscotch=1 --with-ptscotch-dir=/opt/scotch --with-amgx-dir=/opt/amgx --with-petsc-arch=build --prefix=/opt/petsc --with-debugging=0 --with-shared-libraries=1 --with-mpi-dir=/opt/ompi --with-scotch-dir=/opt/scotch --with-zoltan-dir=/opt/zoltan --with-cuda=1 --with-cuda-dir=/usr/local/cuda --with-umpire=1 --with-umpire-include=/opt/umpire/include --with-umpire-lib=/opt/umpire/lib/libumpire.so --with-hypre=1 --with-hypre-include=/opt/hypre/include --with-hypre-lib="/opt/hypre/lib/libHYPRE.so /opt/umpire/lib/libumpire.so /opt/umpire/lib/libcamp.so /opt/umpire/lib/libfmt.so /usr/local/cuda/lib64/libcudart.so /usr/local/cuda/lib64/libcublas.so /usr/local/cuda/lib64/libcusparse.so" --with-metis-include=/opt/karypis/include --with-metis-lib="/opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" --with-parmetis-include=/opt/karypis/include --with-parmetis-lib="/opt/karypis/lib/libparmetis.so /opt/karypis/lib/libmetis.so /opt/karypis/lib/libGKlib.so" CUDAFLAGS+="-arch=sm_61" CUDAOPTFLAGS="-O3" COPTFLAGS="-O3 -march=native" CXXOPTFLAGS="-O3 -march=native" FOPTFLAGS="-O3 -march=native" --with-openmp
make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build all
sudo rm -rf /opt/petsc
sudo make PETSC_DIR=/home/skooby/repos/petsc PETSC_ARCH=build install
nm -D /opt/petsc/lib/libpetsc.so.3.025 | grep -i kspconvergedskip
nm -D /opt/petsc/libb/libpetsc.so.3.025
nm -D /opt/petsc/lib/libpetsc.so.3.025
clear
nm -D /opt/petsc/lib/libpetsc.so.3.025 | grep -i kspconvergedskip

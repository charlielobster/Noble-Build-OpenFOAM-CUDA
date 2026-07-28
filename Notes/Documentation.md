# Documentation

In each 3rd-party application folder, and for the ompi folder in the last step, `cd` into each directory

```bash
# Setup a virtual environment to safely install Sphinx
virtualenv venv
source venv/bin/activate
pip install sphinx sphinx-rtd-theme
pip install -r docs/requirements.txt
```

Make sure to add the `--enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build` flag on all the calls to `./configure` inside a `source venv/bin/activate` block, like in this example for `openpmix`:

```bash
source venv/bin/activate # you should see (venv) to the left of the prompt
./configure --prefix=/opt/pmix --enable-sphinx --with-sphinx=$VIRTUAL_ENV/bin/sphinx-build
deactivate
```
Note that although this method will work, it is not the best way to do this for all three tools. It's better to install the sphinx tools just once for all three.

As each tool is built, add its `bin` and `lib` folders to the `PATH` and `LD_LIBRARY_PATH` variables in `~/.bashrc`. Eventually variable assignments should look like this:

```bash
# set PATH so it includes ompi, prrte, pmix, and cuda bin folders
export PATH="/opt/ompi/bin:/opt/prrte/bin:/opt/pmix/bin:/usr/local/cuda/bin:$PATH"
# set LD_LIBRARY_PATH so it includes ompi, prrte, pmix, and cuda lib folders
export LD_LIBRARY_PATH="/opt/ompi/lib:/opt/prrte/lib:/opt/pmix/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
```

Then append each tool's `man` folder to each of the sublists of `MANPATH` items in the `/etc/manpath.config` file, where `<3pt>` is the tool name.

```properties
MANDATORY_MANPATH /opt/<3pt>/share/man
...
MANPATH_MAP /opt/<3pt>/bin /opt/<3pt>/share/man
...
MANDB_MAP /opt/<3pt>/share/man /var/cache/man/<3pt>
```

Eventually, `manpath.config` will contain all three new sets of entries:

```properties
MANDATORY_MANPATH /opt/pmix/share/man
MANDATORY_MANPATH /opt/prrte/share/man
MANDATORY_MANPATH /opt/ompi/share/man
...
MANPATH_MAP	/opt/pmix/bin	/opt/pmix/share/man
MANPATH_MAP	/opt/prrte/bin	/opt/prrte/share/man
MANPATH_MAP	/opt/ompi/bin	/opt/ompi/share/man
...
MANDB_MAP /opt/pmix/share/man /var/cache/man/pmix
MANDB_MAP /opt/prrte/share/man /var/cache/man/prrte
MANDB_MAP /opt/ompi/share/man /var/cache/man/ompi
```

### OpenPMIx

```bash
cd <pmix home>
./autogen.pl |& tee autogen.out
./configure --prefix=/opt/pmix |& tee configure.out 
make -j$(nproc) |& tee make.out
sudo make install |& tee install.out
```

### PRRTE
```bash
cd <prrte home>
./autogen.pl |& tee autogen.out
./configure --prefix=/opt/prrte --with-pmix=/opt/pmix |& tee configure.out
make -j$(nproc) |& tee make.out
sudo make install |& tee install.out
```

### OpenMPI
```bash
cd <ompi home>
./autogen.pl |& tee autogen.out
./configure --prefix=/opt/ompi \
  --with-pmix=/opt/pmix \
  --with-prrte=/opt/prrte \
  --with-cuda=/usr/local/cuda \
  --with-cuda-libdir=/usr/local/cuda/lib64/stubs |& tee configure.out

make -j$(nproc) |& tee make.out
sudo make install |& tee install.out
```
## Sphinx Documentation Revisited

For Umpire, we are back to wrapping configuration/cmake details within `activate/deactivate` blocks for the Umpire build.

```bash
sudo apt install doxygen python3-sphinx python3-sphinx-rtd-theme

# in each root directory where you need sphinx configured,
cd repos/my_tool

# create venv
python3 -m virtualenv venv --system-site-packages

# activate
source venv/bin/activate
pip install -r ../docs/requirements.txt

# ./configure --enable-sphinx, cmake, or whatever else requires sphinx

deactivate
```
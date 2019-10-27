# lp_solve_py3
lp_solve for Python 3+

This project is intended to be a replacement for the Python package that is distributed with the official lp_solve source.

The original Python package was intended for Python 2.x, and thus causes problems when building with Python 3.x.

Current target is lp_solve ver. 5.5.2.5 https://sourceforge.net/projects/lpsolve/files/lpsolve/5.5.2.5/

The base sources are available from the lp_solve sourceforge site.

1. lp_solve 5.5.2.5 https://sourceforge.net/projects/lpsolve/files/lpsolve/5.5.2.5/lp_solve_5.5.2.5_source.tar.gz/download
2. lp_solve Python https://sourceforge.net/projects/lpsolve/files/lpsolve/5.5.2.5/lp_solve_5.5.2.5_Python_source.tar.gz/download

Tested on continuumio/anaconda3:latest Docker image.

# Install

1. Install required packages: build-essential and lp-solve.

2. Clone or download this repository.

3. Run bash_build.sh

4. Modify LD_LIBRARY_PATH to include path to liblpsolve55.so.

e.g.
```export LD_LIBRARY_PATH=/usr/lib/lp_solve:$LD_LIBRARY_PATH```

If your liblpsolve55.so is installed elsewhere modify it accordingly. If you are not sure try the following command, which will point to the location you have your liblpsolve installed.

```dpkg-query -L lp_solve```


```
...
/usr/lib/lp_solve
/usr/lib/lp_solve/liblpsolve55.so
/usr/share
...
```

5. Check that Python package is installed properly.

```python -c "from lpsolve55 import *"```

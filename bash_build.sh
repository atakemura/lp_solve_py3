#!/bin/bash
cd lp_solve_5.5/lpsolve55
sh ccc
cd ../extra/Python
python setup.py install
echo 'Do not forget to add /usr/lib/lp_solve to LD_LIBRARY_PATH'
echo 'export LD_LIBRARY_PATH=/usr/lib/lp_solve:$LD_LIBRARY_PATH'

#!/bin/bash
#SBATCH --output=ex4_job_a.out

a=1
b=-3
c=2

module load python/3.5.0
python -c "from ex4 import *; roots('$a', '$b', '$c')"
#!/bin/bash
#SBATCH --output=ex4_job_b.out
#SBATCH --dependency=afterok:5842187

a=1
b=-25
c=0

module load python/3.5.0
python -c "from ex4 import *; roots('$a', '$b', '$c')"
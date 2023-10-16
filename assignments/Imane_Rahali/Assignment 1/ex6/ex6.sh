#!/bin/bash
#SBATCH --output=ex6_output.log
#SBATCH --error=ex6_error.log
#SBATCH --mail-user=imane.rahali@um6p.ma
#SBATCH --mail-type=fail

python doesnt_exist.py || exit 11
echo "Script finished!"
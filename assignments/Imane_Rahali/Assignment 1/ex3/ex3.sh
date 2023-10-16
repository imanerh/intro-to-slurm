#!/bin/bash
#SBATCH --array=2-11%2

line=$(sed -n ${SLURM_ARRAY_TASK_ID}p config.txt)

ArrayTaskID=$(echo "$line" | awk '{print $1}')
SampleName=$(echo "$line" | awk '{print $2}')
Sex=$(echo "$line" | awk '{print $3}')

output_message="This is array task ${ArrayTaskID}, the sample name is ${SampleName} and the sex is ${Sex}."

echo "$output_message" >> output.txt
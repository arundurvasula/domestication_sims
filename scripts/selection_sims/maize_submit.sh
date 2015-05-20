#!/bin/bash -l
#SBATCH --array=0-999
#SBATCH -o log/out-%j
#SBATCH -e log/err-%j
#SBATCH -p bigmeml

slim example_maize.txt | awk '/#OUT:/ {seen = 1} seen {print}' | cut -d " " -f 2-9 > example_results/slim.out.$SLURM_ARRAY_TASK_ID

#!/bin/bash
#SBATCH -D /home/adurvasu/domestication_sims/
#SBATCH -o /home/adurvasu/domestication_sims/results/neutral_sims/slurm/slim-pipeline-out-%j.txt
#SBATCH -e /home/adurvasu/domestication_sims/results/neutral_sims/slurm/slim-pipeline-err-%j.txt
#SBATCH -J slim-pipeline
#SBATCH --array=0-1
#SBATCH -p bigmemm

#set -e
#set -u

module load libsequence

for i in {0..1}
do
    Rscript scripts/neutral_sims/generate_slim_params.r $SLURM_JOB_ID $i | awk '/\/\// {seen = 1} seen {print}' | /home/adurvasu/software/msstats > /home/adurvasu/domestication_sims/results/neutral_sims/slim-stats.$SLURM_JOB_ID.$i
done

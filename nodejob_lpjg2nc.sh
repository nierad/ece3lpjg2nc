#!/bin/bash -x
#SBATCH --job-name=o2nc
#SBATCH -n 1
####SBATCH --cpus-per-task=32
#SBATCH --account=lu2021-2-41
#SBATCH --time=1:15:00

time python ece3lpjg2nc-remap.py $1 $2 

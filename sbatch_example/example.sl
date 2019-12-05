#!/bin/bash

# Slurm submission script, serial job
# CRIHAN v 1.00 - Jan 2017 
# support@criann.fr

#SBATCH --share
#SBATCH --time 48:00:00
#SBATCH --mem 10000 
#SBATCH --mail-type ALL
#SBATCH --mail-user user.user@insa-rouen.fr
#SBATCH --partition insatp
#SBATCH --gres gpu:1
#SBATCH --nodes 1
#SBATCH --cpus_per_task 12
#SBATCH --output %J.out
#SBATCH --error %J.err

module load cuda/9.0
module load python3-DL/keras/2.2.4

# Start the calculation on the first gpu
python3 mnist.py

#!/bin/bash

# Slurm submission script, serial job
# CRIHAN v 1.00 - Jan 2017 
# support@criann.fr

#SBATCH --share
#SBATCH --time 1:00:00
#SBATCH --mem 10000 
#SBATCH --mail-type ALL
#SBATCH --mail-user user.user@insa-rouen.fr
#SBATCH --partition insa
#SBATCH --gres gpu:1
#SBATCH --nodes 1
#SBATCH --cpus_per_task 12
#SBATCH --output %J.out
#SBATCH --error %J.err

# Loads the conda module
module load conda3/1907

# Activate a pre-created conda env with the correct install
conda activate mnist

# Start the calculation on the gpu
python mnist.py

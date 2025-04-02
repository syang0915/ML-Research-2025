#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --gres=gpu:v100-pcie:1
#SBATCH --time=08:00:00
#SBATCH --job-name=mini_flow
#SBATCH --mem=10GB
#SBATCH --ntasks=1
#SBATCH --output=train.%j.out
#SBATCH --error=train.%j.err

module load anaconda3/2022.05 cuda/12.1
source activate /home/yang.soph/envs/pytorch_env
python /home/yang.soph/ML-Research-2025/Normalizing.Flow.Model.py --flow_type multiscale

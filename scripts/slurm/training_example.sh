#!/bin/bash
#SBATCH --job-name=unet_training
#SBATCH --time=5:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --partition=paula
#SBATCH --gres=gpu:a30:1
#SBATCH --mem=12G
#SBATCH --cpus-per-task=4
#SBATCH -o /home/sc.uni-leipzig.de/gp51ucex/logs/%x.out-%j

source .venv/bin/activate

python src/runs/train/unet.py

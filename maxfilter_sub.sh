#!/bin/sh
#SBATCH --job-name=syntax-maxfilt
#SBATCH --time=6:00:00
#SBATCH --partition=shared-cpu
#SBATCH --output=/home/gercek/worker-logs/syntax-maxfilter.out
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=128GB

7z x /home/gercek/livenv.zip -o/tmp/
source /tmp/gercek_li_venv/bin/activate
mne_bids_pipeline --config $HOME/scratch/syntax_im/mnebids_pipeline_config.py  --subject PilotC --session 01 --steps preprocessing/maxfilter --task syntaxIM

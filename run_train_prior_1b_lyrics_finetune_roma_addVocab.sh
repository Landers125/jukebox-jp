#!/bin/bash
mpiexec -n 1 python jukebox/train.py \
--hps=vqvae,prior_1b_lyrics_addVocab,all_fp16,cpu_ema \
--name=prior_1b_lyrics_finetune_roma_addVocab \
--sample_length=786432 \
--bs=1 \
--aug_shift \
--aug_blend \
--audio_files_dir=/workspace/dataset/wav_dataset_006/wav_data \
--labels=True \
--train \
--test \
--prior \
--levels=3 \
--level=2 \
--weight_decay=0.01 \
--save_iters=1000 \
--epochs=100 \
--jp_lyrics=True \
--v3_ftune=False
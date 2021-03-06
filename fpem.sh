game=./rts/game_MC/game \
model_file1=./rts/game_MC/fpem_model \
model_file2=./rts/game_MC/oppo_pool \
model=actor_critic \
python3 train_fpem.py \
    --num_games 1024 \
    --batchsize 128 \
    --tqdm \
    --players "fs=50,type=AI_NN;fs=50,type=AI_NN" \
    --trainer_stats winrate \
    --additional_labels id,last_terminal,seq \
    --gpu 0 \
    --T 20 \
    --shuffle_player \
    --keys_in_reply V \
    --load1 ./model/fpem/fpeminit.bin \
    --load2 ./model/oppo_pool/fpem/oppoinit.bin
    #--save_dir1 ./fpem   --save_dir2 ./oppo/feem
    #--save_prefix1 fpem  ----save_prefix2 oppo

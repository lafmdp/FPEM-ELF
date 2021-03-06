game=./rts/game_MC/game \
model=actor_critic \
model_file=./rts/game_MC/fpem_model \

python3 train.py \
    --num_games 1024 \
    --batchsize 128 \
    --freq_update 50 \
    --players "type=AI_NN,fs=50,args=backup/AI_SIMPLE|start/500|decay/0.99;type=AI_SIMPLE,fs=20" \
    --tqdm \
    --gpu 0 \
    --T 20 \
    --additional_labels id,last_terminal \
    --trainer_stats winrate \
    --keys_in_reply V \

#    --sample_nodes="pi,a;s_pi,p"
#    --policy_action_nodes="pi,a;s_pi,p"
#    --verbose_collector
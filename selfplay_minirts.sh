MODEL=$1

game=./rts/game_MC/game model_file=./rts/game_MC/model model=actor_critic python3 selfplay.py  --num_games 1024 --batchsize 128 --tqdm --players "fs=50,type=AI_NN;fs=50,type=AI_NN" --trainer_stats winrate --additional_labels id,last_terminal,seq --load ./smv1/spinit.bin --gpu 0 --T 20 --shuffle_player --keys_in_reply V --save_dir ./smv1 --save_prefix selfplay
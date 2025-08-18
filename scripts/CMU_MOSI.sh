

for ratio in 0.5
do 
    CUDA_VISIBLE_DEVICES=0 python main.py \  
        --modality AIN \
        --data CMU_MOSI \
        --missing_ratio "$ratio" \
        --batch_size 256 \
        --num_experts 8 \
        --top_k 2 \
        --label 3 \
        --seq_len 50 \
        --dropout 0.1 \
        --datapath /home/nathan/Missing_Modality/Trust_MoE/data/CMU-MOSI/Processed/ \
        --TokenLevelConf True \
        --experiment_setting II 
done
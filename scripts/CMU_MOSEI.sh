

for ratio in 0 0.1 0.2 0.3 0.4 0.5
do
    CUDA_VISIBLE_DEVICES=0 python main.py \   # 改成绝对路径
        --modality AIN \
        --data CMU_MOSEI \
        --missing_ratio "$ratio" \
        --batch_size 256 \
        --num_experts 8 \
        --top_k 2 \
        --label 3 \
        --seq_len 50 \
        --dropout 0.1 \
        --datapath /home/nathan/Missing_Modality/Trust_MoE/data/CMU-MOSEI/Processed/ \
        --TokenLevelConf True
done
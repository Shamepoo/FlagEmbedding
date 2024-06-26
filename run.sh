/opt/anaconda3/envs/FlagEmbedding/bin/torchrun --nproc_per_node 1 \
-m FlagEmbedding.baai_general_embedding.finetune.run \
--output_dir ./checkpoints \
--model_name_or_path /Users/limite/Documents/respositries/learning/huggingface/models/BAAI/bge-base-en \
--train_data /Users/limite/Documents/respositries/kaggle/Quora/train.csv \
--file_type csv \
--learning_rate 1e-5 \
--num_train_epochs 5 \
--per_device_train_batch_size 4 \
--dataloader_drop_last True \
--normlized True \
--temperature 0.02 \
--query_max_len 256 \
--passage_max_len 256 \
--train_group_size 8 \
--negatives_cross_device \
--logging_steps 10 \
--query_instruction_for_retrieval "" \
--use_cpu True
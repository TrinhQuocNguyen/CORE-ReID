## step 1 Source-domain pre-training
# CUDA_VISIBLE_DEVICES=1,2 python source_pretrain.py -ds market -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid  --logs-dir logs/market2cuhk03np_ECAB_BFMN/source_pretraining -b 128 --arch resnet101_source

# ## step 2 Target-domain fine-tuning
# CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2cuhk03np_ECAB_BFMN/target_fine_tuning_700 --initial-weights logs/market2cuhk03np_ECAB_BFMN/source_pretraining -b 128 --num-clusters 700 --arch resnet101

# ## step 3 Evaluate in the target domain
# CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2cuhk03np_ECAB_BFMN/target_fine_tuning_700/model_best.pth.tar --num-classes 700 --arch resnet101 

# ## step 2 Target-domain fine-tuning
# CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2cuhk03np_ECAB_BFMN/target_fine_tuning_500 --initial-weights logs/market2cuhk03np_ECAB_BFMN/source_pretraining -b 128 --num-clusters 500 --arch resnet101

# ## step 3 Evaluate in the target domain
# CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2cuhk03np_ECAB_BFMN/target_fine_tuning_500/model_best.pth.tar --num-classes 500 --arch resnet101 

# ## step 2 Target-domain fine-tuning
# CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2cuhk03np_ECAB_BFMN/target_fine_tuning_900 --initial-weights logs/market2cuhk03np_ECAB_BFMN/source_pretraining -b 128 --num-clusters 900 --arch resnet101

# ## step 3 Evaluate in the target domain
# CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2cuhk03np_ECAB_BFMN/target_fine_tuning_900/model_best.pth.tar --num-classes 900 --arch resnet101 


## step 2 Target-domain fine-tuning
CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2cuhk03np_ECAB_BFMN/target_fine_tuning_900_NoECAB --initial-weights logs/market2cuhk03np_ECAB_BFMN/source_pretraining -b 128 --num-clusters 900 --arch resnet101

## step 3 Evaluate in the target domain
CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2cuhk03np_ECAB_BFMN/target_fine_tuning_900_NoECAB/model_best.pth.tar --num-classes 900 --arch resnet101 
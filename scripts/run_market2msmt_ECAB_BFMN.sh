## step 1 Source-domain pre-training
# Market to Duke
# CUDA_VISIBLE_DEVICES=2,3 python source_pretrain.py -ds market -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2msmt_ECAB_BFMN/source_pretraining -b 128 --arch resnet101_source

# ## step 2 Target-domain fine-tuning
# # Market to Duke
# CUDA_VISIBLE_DEVICES=2,3 python target_train.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2msmt_ECAB_BFMN/target_fine_tuning_3000 --initial-weights logs/market2msmt_ECAB_BFMN/source_pretraining -b 128 --num-clusters 3000 --arch resnet101

# ## step 3 Evaluate in the target domain
# # Market to Duke
# CUDA_VISIBLE_DEVICES=2,3 python model_test.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2msmt_ECAB_BFMN/target_fine_tuning_3000/model_best.pth.tar --num-classes 3000 --arch resnet101



## step 2 Target-domain fine-tuning
# Market to Duke
# CUDA_VISIBLE_DEVICES=2,3 python target_train.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2msmt_ECAB_BFMN/target_fine_tuning_2500 --initial-weights logs/market2msmt_ECAB_BFMN/source_pretraining -b 128 --num-clusters 2500 --arch resnet101

## step 3 Evaluate in the target domain
# Market to Duke
# CUDA_VISIBLE_DEVICES=2,3 python model_test.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2msmt_ECAB_BFMN/target_fine_tuning_2500/model_best.pth.tar --num-classes 2500 --arch resnet101


## step 2 Target-domain fine-tuning
# Market to Duke
CUDA_VISIBLE_DEVICES=2,3 python target_train.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2msmt_ECAB_BFMN/target_fine_tuning_3500 --initial-weights logs/market2msmt_ECAB_BFMN/source_pretraining -b 128 --num-clusters 3500 --arch resnet101

## step 3 Evaluate in the target domain
# Market to Duke
# CUDA_VISIBLE_DEVICES=2,3 python model_test.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2msmt_ECAB_BFMN/target_fine_tuning_3500/model_best.pth.tar --num-classes 3500 --arch resnet101



############# NO ECAB

# step 2 Target-domain fine-tuning
# Market to Duke
# CUDA_VISIBLE_DEVICES=2,3 python target_train.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2msmt_ECAB/target_fine_tuning_2500 --initial-weights logs/market2msmt_ECAB_BFMN/source_pretraining -b 128 --num-clusters 2500 --arch resnet101

# ## step 1 Source-domain pre-training
# CUDA_VISIBLE_DEVICES=1,2 python source_pretrain.py -ds market -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid  --logs-dir logs/market2cuhk03np_resnet50/source_pretraining -b 128 --arch resnet50_source
# ## step 2 Target-domain fine-tuning
# CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2cuhk03np_resnet50/target_fine_tuning_900 --initial-weights logs/market2cuhk03np_resnet50/source_pretraining -b 128 --num-clusters 900 --arch resnet50
# ## step 3 Evaluate in the target domain
# CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2cuhk03np_resnet50/target_fine_tuning_900/model_best.pth.tar --num-classes 900 --arch resnet50 


## step 1 Source-domain pre-training
# CUDA_VISIBLE_DEVICES=1,2 python source_pretrain.py -ds market -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid  --logs-dir logs/market2cuhk03np_resnet152/source_pretraining -b 128 --arch resnet152_source
## step 2 Target-domain fine-tuning
CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2cuhk03np_resnet152/target_fine_tuning_900 --initial-weights logs/market2cuhk03np_resnet50/source_pretraining -b 128 --num-clusters 900 --arch resnet152
## step 3 Evaluate in the target domain
CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt cuhk03np --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2cuhk03np_resnet152/target_fine_tuning_900/model_best.pth.tar --num-classes 900 --arch resnet152 

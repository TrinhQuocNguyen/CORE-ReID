## step 1 Source-domain pre-training
# Market to Duke
CUDA_VISIBLE_DEVICES=2,3 python source_pretrain.py -ds market -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2duke_101_all_merge_ECAB/source_pretraining -b 128 --arch resnet101_source #--dropout 0.3

# ## step 2 Target-domain fine-tuning
# # Market to Duke
CUDA_VISIBLE_DEVICES=2,3 python target_train.py -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2duke_101_all_merge_ECAB/target_fine_tuning --initial-weights logs/market2duke_101_all_merge_ECAB/source_pretraining -b 128 --num-clusters 900 --arch resnet101

## step 3 Evaluate in the target domain
# Market to Duke
CUDA_VISIBLE_DEVICES=2,3 python model_test.py -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2duke_101_all_merge_ECAB/target_fine_tuning/model_best.pth.tar --num-classes 900 --arch resnet101
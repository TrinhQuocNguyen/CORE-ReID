## step 1 Source-domain pre-training
# for example, duke-to-market
CUDA_VISIBLE_DEVICES=1,2 python source_pretrain.py -ds duke -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/duke2msmt_101_all_merge/source_pretraining -b 128 --arch resnet101_source

## step 2 Target-domain fine-tuning
CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/duke2msmt_101_all_merge/target_fine_tuning --initial-weights logs/duke2msmt_101_all_merge/source_pretraining -b 128 --num-clusters 3000 --arch resnet101

## step 3 Evaluate in the target domain
CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt msmt17 --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/duke2msmt_101_all_merge/target_fine_tuning/model_best.pth.tar --num-classes 3000 --arch resnet101
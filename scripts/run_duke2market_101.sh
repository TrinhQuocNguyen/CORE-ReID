## step 1 Source-domain pre-training
# for example, duke-to-market
CUDA_VISIBLE_DEVICES=1,2 python source_pretrain.py -ds duke -dt market --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/duke2market_101/source_pretraining -b 128 --arch resnet101_source

## step 2 Target-domain fine-tuning
# for example, duke-to-market
CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt market --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/duke2market_101/target_fine_tuning --initial-weights logs/duke2market_101/source_pretraining -b 128 --num-clusters 700 --arch resnet101

## step 3 Evaluate in the target domain
# for example, duke-to-market
CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt market --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/duke2market_101/target_fine_tuning/model_best.pth.tar --num-classes 700 --arch resnet101
## step 1 Source-domain pre-training
# for example, duke-to-market
# CUDA_VISIBLE_DEVICES=1,2 python source_pretrain.py -ds duke -dt market --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/duke2market/source_pretraining -b 128

## step 2 Target-domain fine-tuning
# for example, duke-to-market
# CUDA_VISIBLE_DEVICES=1,2 python target_train.py -dt market --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/duke2market/target_fine_tuning --initial-weights logs/duke2market/source_pretraining -b 128 --num-clusters 700

## step 3 Evaluate in the target domain
# for example, duke-to-market
CUDA_VISIBLE_DEVICES=1,2 python model_test.py -dt market --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/duke2market/target_fine_tuning/model_best.pth.tar --num-classes 700
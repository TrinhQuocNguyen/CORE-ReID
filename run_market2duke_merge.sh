## step 1 Source-domain pre-training
# Market to Duke
# python source_pretrain.py -ds market -dt duke --data-dir /mnt/AIProjects/trinh/DATA/reid --logs-dir logs/market2duke_merge/source_pretraining -b 128

## step 2 Target-domain fine-tuning
# Market to Duke
# python target_train.py -dt duke --data-dir /mnt/AIProjects/trinh/DATA/reid --logs-dir logs/market2duke_merge/target_fine_tuning --initial-weights logs/market2duke_merge/source_pretraining -b 128 --num-clusters 900

## step 3 Evaluate in the target domain
# Market to Duke
python model_test.py -dt duke --data-dir /mnt/AIProjects/trinh/DATA/reid --resume logs/market2duke_merge/target_fine_tuning/model_best.pth.tar --num-classes 900
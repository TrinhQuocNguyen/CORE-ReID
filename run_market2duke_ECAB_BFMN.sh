## step 1 Source-domain pre-training
# for example, market-to-duke
# CUDA_VISIBLE_DEVICES=2,3 python source_pretrain.py -ds market -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid  --logs-dir logs/market2duke_ECAB_BFMN/source_pretraining -b 128 --arch resnet101_source

## step 2 Target-domain fine-tuning
# for example, market-to-duke
CUDA_VISIBLE_DEVICES=2,3 python target_train.py -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2duke_ECAB_BFMN/target_fine_tuning_700 --initial-weights logs/market2duke_ECAB_BFMN/source_pretraining -b 128 --num-clusters 700 --arch resnet101

## step 3 Evaluate in the target domain
# for example, market-to-duke
CUDA_VISIBLE_DEVICES=2,3 python model_test.py -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2duke_ECAB_BFMN/target_fine_tuning_700/model_best.pth.tar --num-classes 700 --arch resnet101 

## step 2 Target-domain fine-tuning
# for example, market-to-duke
CUDA_VISIBLE_DEVICES=2,3 python target_train.py -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2duke_ECAB_BFMN/target_fine_tuning_500 --initial-weights logs/market2duke_ECAB_BFMN/source_pretraining -b 128 --num-clusters 500 --arch resnet101

## step 3 Evaluate in the target domain
# for example, market-to-duke
CUDA_VISIBLE_DEVICES=2,3 python model_test.py -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2duke_ECAB_BFMN/target_fine_tuning_500/model_best.pth.tar --num-classes 500 --arch resnet101 

## step 2 Target-domain fine-tuning
# for example, market-to-duke
CUDA_VISIBLE_DEVICES=2,3 python target_train.py -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --logs-dir logs/market2duke_ECAB_BFMN/target_fine_tuning_900 --initial-weights logs/market2duke_ECAB_BFMN/source_pretraining -b 128 --num-clusters 900 --arch resnet101

## step 3 Evaluate in the target domain
# for example, market-to-duke
CUDA_VISIBLE_DEVICES=2,3 python model_test.py -dt duke --data-dir /home/ccvn/Workspace/trinh/data/reid --resume logs/market2duke_ECAB_BFMN/target_fine_tuning_900/model_best.pth.tar --num-classes 900 --arch resnet101 
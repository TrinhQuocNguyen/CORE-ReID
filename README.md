[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/core-reid-comprehensive-optimization-and/unsupervised-domain-adaptation-on-cuhk03-to-1)](https://paperswithcode.com/sota/unsupervised-domain-adaptation-on-cuhk03-to-1?p=core-reid-comprehensive-optimization-and)

# CORE-ReID
CORE-ReID: Comprehensive Optimization and Refinement through Ensemble fusion in Domain Adaptation for person re-identification

Our project page: https://trinhquocnguyen.github.io/core-reid-homepage/

## TODO
- [ ] Explain step by step how to run the source code with tutorial videos
- [ ] Update Readme.md file
- [ ] Provide the pretrained models
- [ ] Fix the absolute path
- [X] Initialize the source code

## Updates
- **[2023/07/14: Source code is released!]** ![new](https://img.alicdn.com/imgextra/i4/O1CN01kUiDtl1HVxN6G56vN_!!6000000000764-2-tps-43-19.png)
    * The first version of source code has been initialized.
- **[2024/06/03: CORE-ReID is published by MDPI!]**
    * The paper of CORE-ReID is publised by MDPI: https://www.mdpi.com/2674-113X/3/2/12 
- **[2024/05/27: CORE-ReID is accepted by MDPI!]**
    * The paper of CORE-ReID is accepted by MDPI.

## Installation
This codebase has been developed with python version 3.8, PyTorch version 1.8.1, CUDA 12.1 and torchvision 0.9.1
- pip:
    - contourpy==1.1.1
    - cycler==0.12.1
    - fonttools==4.53.0
    - h5py==3.11.0
    - importlib-resources==6.4.0
    - joblib==1.4.2
    - kiwisolver==1.4.5
    - matplotlib==3.7.5
    - numpy==1.21.6
    - opencv-python==4.4.0.46
    - packaging==24.1
    - pillow==9.1.0
    - pyparsing==3.1.2
    - python-dateutil==2.9.0.post0
    - scikit-learn==1.0.2
    - scipy==1.9.3
    - six==1.16.0
    - threadpoolctl==3.5.0
    - torch==1.8.1
    - torchvision==0.9.1
    - typing-extensions==4.12.2
    - zipp==3.19.2
- We used serveral servers to train the models:
    - NVIDIA Quadro RTX 8000 x 2


## Training 
### 1. Train CycleGAN models
Comming...
### 2. Generate the training datataset
Comming...
### 3. Train the ReID model - Step 1: Pretraining on Source Domain
Comming...
### 4. Train the ReID model - Step 2: Fine-Tuning on Target Domain
Comming...
### 5. Train the ReID model - Step 1: Evaluation on Target Domain
Comming...

## Acknowledgement
Thank you for great works below:
- [open-reid](https://github.com/Cysu/open-reid)
- [MEB-Net](https://github.com/YunpengZhai/MEB-Net)
- [LF2](https://github.com/DJEddyking/LF2)
- [CBAM](https://github.com/luuuyi/CBAM.PyTorch)

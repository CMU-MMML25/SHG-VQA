#!bin/bash
conda create --name SHG-VQA python=3.7 --file conda_requirements.txt -y
conda activate SHG-VQA

# export pip path to make sure package location is correct
export PATH=/opt/conda/envs/SHG-VQA/bin:$PATH

sudo apt update
sudo apt install -y ffmpeg libavcodec-dev libavformat-dev libavdevice-dev libavutil-dev libswscale-dev libswresample-dev

pip install av

pip install -r pip_requirements.txt
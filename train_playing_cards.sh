#!/usr/bin/env bash
# Download dataset from https://universe.roboflow.com/autoproject/betercarddetector/dataset/9
git submodule init
git submodule update
cp datasets/playing_cards.yaml yolov5/data/playing_cards.yaml
cp modified_detect.py yolov5/modified_detect.py
cp playing_cards.pt yolov5/playing_cards.pt
cd yolov5
python train.py --img 800 --batch 8 --epochs 100 --data playing_cards.yaml --weights card.pt --project ../trained_models/playing_cards --rect
# python modified_detect.py --source 0 --weights best.pt --imgsz 800 --hide-conf

#!/usr/bin/env bash

cp datasets/playing_cards.yaml yolov5/data/playing_cards.yaml
cd yolov5
python train.py --img 640 --batch 32 --epochs 300 --data playing_cards.yaml --weights yolov5n.pt --single-cls

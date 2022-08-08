#!/usr/bin/env bash
git submodule init
git submodule update
cp datasets/csgo.yaml yolov5/data/csgo.yaml
cd yolov5
python train.py --img 608 --batch 128 --epochs 100 --data csgo.yaml --weights yolov5n.pt --project ../trained_models/csgo

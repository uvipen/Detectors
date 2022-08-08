#!/usr/bin/env bash
git submodule init
git submodule update
cp datasets/playing_cards.yaml yolov5/data/playing_cards.yaml
cd yolov5
python train.py --img 608 --batch 128 --epochs 100 --data playing_cards.yaml --weights yolov5n.pt --project ../trained_models/playing_cards

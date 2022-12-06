# Detectors

## Introduction

Here is my python source code for training and testing a playing card detector. The trained model could be used to detect different hands in Poker
<p align="center">
  <img src="demo/card.gif" width=600><br/>
  <i>Poker demo</i>
</p>

The demo could also be found at [youtube demo](https://youtu.be/7rFL5GeAdBc)

## Train

First you need to initialize submodule by running the 2 following commands:
- `git submodule init`
- `git submodule update`

As the next step, you need to download the dataset at [dataset](https://universe.roboflow.com/autoproject/betercarddetector/dataset/9). Then you need to extract the downloaded one and rename it to **PlayingCards** and move it to **datasets** folder

Then run the following command to copy necessary files to yolov5 folder:
- `cp datasets/playing_cards.yaml yolov5/data/playing_cards.yaml`
- `cp modified_detect.py yolov5/modified_detect.py`
- `cp playing_cards.pt yolov5/playing_cards.pt`
- `cd yolov5`

Finally you could start the training by running:
- `train.py --img 800 --batch 8 --epochs 100 --data playing_cards.yaml --weights card.pt --rect`

## Inference

Run the application by:

`python modified_detect.py --source 0 --weights best.pt --imgsz 800 --hide-conf`

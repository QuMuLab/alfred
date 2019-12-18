#!/bin/bash


if [ "$1" = "json" ]
then

    echo "Downloading JSONs ..."
    wget https://storage.googleapis.com/alfred_dataset/data/json_2.1.0.zip
    unzip json_2.1.0.zip && rm json_2.1.0.zip
    echo "data folder: json_2.1.0"

elif [ "$1" = "json_feat" ]
then

    echo "Downloading JSONs and Resnet18 feats ..."
    wget https://storage.googleapis.com/alfred_dataset/data/json_feat_2.1.0.zip
    unzip json_feat_2.1.0.zip && rm json_feat_2.1.0.zip
    echo "data folder: json_feat_2.1.0"

elif [ "$1" = "full" ]
then

    echo "Downloading JSONs, Resnet18 feats, Images, Videos, and PDDL states ..."
    echo "TODO"
    echo "data folder: full_2.1.0"

else
    echo "Failed: Usage download_data.sh json | json_feat | full"
    exit 1
fi

#!/bin/bash

# Needed for the tensorflow modules to install properly!
sudo apt-get install build-essential libeigen3-dev libyaml-dev libfftw3-dev libtag1-dev libchromaprint-dev

# Download essentia model weights for metadata labels
model_path=models/essentia
mkdir -p $model_path
# Feature embedding model
curl https://essentia.upf.edu/models/feature-extractors/discogs-effnet/discogs-effnet-bs64-1.pb --output $model_path/discogs-effnet-bs64-1.pb
# Genre classification
curl https://essentia.upf.edu/models/classification-heads/genre_discogs400/genre_discogs400-discogs-effnet-1.pb --output $model_path/genre_discogs400-discogs-effnet-1.pb
# Mood classification
curl https://essentia.upf.edu/models/classification-heads/mtg_jamendo_moodtheme/mtg_jamendo_moodtheme-discogs-effnet-1.pb --output $model_path/mtg_jamendo_moodtheme-discogs-effnet-1.pb
# Instrument classification
curl https://essentia.upf.edu/models/classification-heads/mtg_jamendo_instrument/mtg_jamendo_instrument-discogs-effnet-1.pb --output $model_path/mtg_jamendo_instrument-discogs-effnet-1.pb
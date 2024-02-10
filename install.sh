# Copyright 2023 DeepMind Technologies Limited
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

# !/bin/bash
set -e
set -x

python -m venv .venv
source .venv/bin/activate

pip install -r working_requirements.txt

DATA=ag_ckpt_vocab
mkdir -p $DATA
wget https://github.com/mrthinger/alphageometry-but-runs/releases/download/data-upload/checkpoint_10999999 -O $DATA/checkpoint_10999999
wget https://github.com/mrthinger/alphageometry-but-runs/releases/download/data-upload/geometry.757.model -O $DATA/geometry.757.model
wget https://github.com/mrthinger/alphageometry-but-runs/releases/download/data-upload/geometry.757.vocab -O $DATA/geometry.757.vocab

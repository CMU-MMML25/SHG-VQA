# Debugging Setup for STAR and SHG-VQA

**Note that NO model checkpoint is provided in this repo.**

## Prerequisites
1. **STAR Dataset**: Ensure the STAR dataset is set up in a parallel folder.
```
git clone git@github.com:CMU-MMML25/STAR_Benchmark.git
mv STAR_Benchmark STAR
cd STAR
bash get_data.sh
```

2. **ActionGenome Dataset**: Ensure the ActionGenome dataset is set up in a parallel folder.

```
# in root directory
git clone git@github.com:Jamesding000/ActionGenome.git
cd ActionGenome
bash get_data.sh
python tools/dump_frames.py --video_dir "../STAR_Benchmark/data/Charades_v1_480"
```

## Configuration
Verify that the hardcoded paths in `SHG-VQA/AGQA/src/tasks/star_data.py` are correct:

```python
self.annotation_dir = root_dir + 'STAR/annotations/STAR_classes/'
self.video_dir = root_dir + 'STAR/data/Charades_v1_480'
self.frame_dir = root_dir + 'ActionGenome/dataset/ag/frames/'
self.pose_dir = root_dir + 'STAR/data/pose/'
```

`data/` folder contains preprocessed classes and annotations, copy them to the corresponding folders:

```
cp SHG-VQA/data/* STAR/data/classes/
cp SHG-VQA/data/*  STAR/data/
```
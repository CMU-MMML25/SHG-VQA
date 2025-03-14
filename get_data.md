# Debugging Setup for STAR and SHG-VQA

**Note that NO model checkpoint is provided in this repo.**

## Prerequisites
1. **STAR Dataset**: Ensure the STAR dataset is set up in a parallel folder.
2. **ActionGenome Dataset**: Ensure the ActionGenome dataset is set up in a parallel folder.

```
cd ActionGenome
python tools/dump_frames.py
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
cp SHG-VQA/data/ ../../STAR/data/classes/
cp SHG-VQA/data/ ../../STAR/data/
```
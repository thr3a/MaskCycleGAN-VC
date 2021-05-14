```
docker run --cpuset-cpus 0 --gpus 0 -v $(pwd):/app  --rm voice-change bash -lc 'conda run --name MaskCycleGAN-VC python test.py'

conda activate MaskCycleGAN-VC
```

python data_preprocessing/preprocess_vcc2018.py \
  --data_directory data \
  --preprocessed_data_directory converted_data \
  --speaker_ids fujitou tsuchiya
```



docker run -v $(pwd):/app  --rm voice-change bash -lc 'conda run --name MaskCycleGAN-VC python test.py'

```
python -W ignore::UserWarning -m mask_cyclegan_vc.train \
    --name mask_cyclegan_vc_fujitou_tsuchiya \
    --seed 0 \
    --save_dir results/ \
    --preprocessed_data_dir converted_data \
    --speaker_A_id fujitou \
    --speaker_B_id tsuchiya \
    --epochs_per_save 100 \
    --epochs_per_plot 10 \
    --num_epochs 6172 \
    --batch_size 1 \
    --lr 5e-4 \
    --decay_after 1e4 \
    --sample_rate 22050 \
    --num_frames 64 \
    --max_mask_len 25 \
    --gpu_ids 0 \
```

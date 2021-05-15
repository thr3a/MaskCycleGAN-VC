```
docker run --cpuset-cpus 0 --gpus all -v $(pwd):/app -it --rm voice-change bash
conda activate MaskCycleGAN-VC
```

```
python data_preprocessing/preprocess_vcc2018.py \
  --data_directory data \
  --preprocessed_data_directory converted_data \
  --speaker_ids takion suzuka
```

```
docker run --cpuset-cpus 0 --gpus all -v $(pwd):/app  --rm voice-change bash -lc 'conda run --name MaskCycleGAN-VC bash train.sh'
```

```
python -W ignore::UserWarning -m mask_cyclegan_vc.test \
    --name mask_cyclegan_vc_fujitou_tsuchiya \
    --save_dir results/ \
    --preprocessed_data_dir converted_data \
    --gpu_ids 0 \
    --speaker_A_id fujitou \
    --speaker_B_id tsuchiya \
    --ckpt_dir results/mask_cyclegan_vc_fujitou_tsuchiya/ckpts \
    --load_epoch 500 \
    --model_name generator_A2B \
```


docker run -v $(pwd):/app -p 6006:6006 --rm voice-change bash -lc 'conda run --name MaskCycleGAN-VC tensorboard --logdir results/logs --bind_all'

Traceback (most recent call last):
  File "/app/data_preprocessing/preprocess_vcc2018.py", line 99, in <module>
    preprocess_dataset(data_path=data_path, speaker_id=speaker_id,
  File "/app/data_preprocessing/preprocess_vcc2018.py", line 71, in preprocess_dataset
    mel_normalized, mel_mean, mel_std = normalize_mel(data_path)
  File "/app/data_preprocessing/preprocess_vcc2018.py", line 43, in normalize_mel
    assert mel.shape[-1] >= 64, f"Mel spectogram length must be greater than 64 frames, but was {mel.shape[-1]}"
AssertionError: Mel spectogram length must be greater than 64 frames, but was 52
短すぎる

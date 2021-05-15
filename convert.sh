python -W ignore::UserWarning -m mask_cyclegan_vc.test \
    --name mask_cyclegan_vc_takion_suzuka \
    --save_dir results/ \
    --preprocessed_data_dir converted_data \
    --gpu_ids 0 \
    --speaker_A_id takion \
    --speaker_B_id suzuka \
    --ckpt_dir results/mask_cyclegan_vc_takion_suzuka/ckpts \
    --load_epoch 1540 \
    --model_name generator_B2A \

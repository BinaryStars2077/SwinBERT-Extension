python ./prepro/extract_frames.py \
--video_root_dir ./datasets/MSVD/videos/ \
--save_dir ./datasets/MSVD/ \
--video_info_tsv ./datasets/MSVD/train.img.tsv \
--num_frames 32

python ./prepro/create_image_frame_tsv.py \
--dataset MSVD \
--split train \
--image_size 224 \
--num_frames 32
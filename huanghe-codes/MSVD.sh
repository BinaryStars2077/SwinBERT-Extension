export CUDA_VISIBLE_DEVICES=0,1,2,3
EVAL_DIR='./models/32frm/msvd/best-checkpoint/'
python -m torch.distributed.launch --nproc_per_node=1 --nnodes=1  src/tasks/run_caption_VidSwinBert.py \
 --val_yaml MSVD/val_32frames.yaml \
 --do_eval true \
 --do_train false \
 --eval_model_dir $EVAL_DIR
# Experimental environment: A10
PYTHONPATH=../../.. \
CUDA_VISIBLE_DEVICES=0 \
python llm_infer.py \
    --model_id_or_path damo/nlp_polylm_13b_text_generation \
    --model_revision master \
    --sft_type lora \
    --template_type default-generation \
    --dtype bf16 \
    --ckpt_dir "output/polylm-13b/vx_xxx/checkpoint-xxx" \
    --eval_human false \
    --dataset advertise-gen-zh \
    --max_length 2048 \
    --quantization_bit 4 \
    --bnb_4bit_comp_dtype bf16 \
    --max_new_tokens 2048 \
    --temperature 0.9 \
    --top_k 20 \
    --top_p 0.9 \
    --do_sample true \
    --merge_lora_and_save false \
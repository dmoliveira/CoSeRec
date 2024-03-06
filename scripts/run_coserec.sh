#!/usr/bin/env bash
# Run CoSeRec example:
#     ./run_coserec --config "my.cfg.yml"

CFG_FILE="$2"

grepx() { grep -Po "^($1):\s+\K.*$" "./${CFG_FILE}" ; }
get() { echo " --$1 $( grepx $1 )" ; }

#$(get do_eval) \
#$(get no_cuda) \
python3 ../src/main.py \
    $(get data_dir) \
    $(get output_dir) \
    $(get data_name) \
    $(get gpu_id) \
    $(get noise_ratio) \
    $(get training_data_ratio) \
    $(get augment_threshold) \
    $(get similarity_model_name) \
    $(get augmentation_warm_up_epoches) \
    $(get base_augment_type) \
    $(get augment_type_for_short) \
    $(get tao) \
    $(get gamma) \
    $(get beta) \
    $(get substitute_rate) \
    $(get insert_rate) \
    $(get max_insert_num_per_pos) \
    $(get temperature) \
    $(get n_views) \
    $(get model_name) \
    $(get hidden_size) \
    $(get num_hidden_layers) \
    $(get num_attention_heads) \
    $(get hidden_act) \
    $(get attention_probs_dropout_prob) \
    $(get hidden_dropout_prob) \
    $(get initializer_range) \
    $(get max_seq_length) \
    $(get lr) \
    $(get batch_size) \
    $(get epochs) \
    $(get seed) \
    $(get cf_weight) \
    $(get rec_weight) \
    $(get weight_decay) \
    $(get adam_beta1) \
    $(get adam_beta2)

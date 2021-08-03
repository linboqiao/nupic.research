#!/bin/zsh

# 
CSV=~/nta/nupic.research/projects/transformers/results/finetuning_results.csv
MD=~/nta/nupic.research/projects/transformers/results/finetuning_results.md
rm ${CSV}

# Many of these models had bugs, for instance, there were a series of bugs with the 80% sparse model.
# There are 3 models that had the 'desparsification' bug as well.
# I'm leaving them commented out for context, for now. But I want to get this file down to the essentials.

# python ../export_finetuning_results.py ~/nta/tmp/finetuning/finetuning_bert100k_glue_simple_no_ESC --model_name bert_100k_simple_no_esc_unsparsified --csv ${CSV}
# python ../export_finetuning_results.py ~/nta/tmp/finetuning/finetuning_bert_sparse_trifecta_100k_glue_simple_no_ESC --model_name trifecta_80_simple_no_esc_unsparsified --csv ${CSV} 

# python ../export_finetuning_results.py ~/nta/tmp/finetuning/finetuning_bert_sparse_80_trifecta_100k_glue --model_name trifecta_80_glue_unsparsified --csv ${CSV}
# python ../export_finetuning_results.py ~/nta/tmp/finetuning/finetuning_bert_sparse_85_trifecta_100k_glue --model_name trifecta_85_glue_unsparsified --csv ${CSV}
# python ../export_finetuning_results.py ~/nta/tmp/finetuning/finetuning_bert_sparse_90_trifecta_100k_glue --model_name trifecta_90_glue_unsparsified --csv ${CSV}

# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_trifecta_100k_glue --model_name trifecta_80_glue_nlb_not_unsparsify --csv ${CSV}
# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_85_trifecta_100k_glue --model_name trifecta_85_glue_nlb_not_unsparsify --csv ${CSV}
# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_90_trifecta_100k_glue --model_name trifecta_90_glue_nlb_not_unsparsify --csv ${CSV} 

# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_trifecta_100k_glue_get_info --model_name trifecta_80_glue_get_info --csv ${CSV}
# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_85_trifecta_100k_glue_get_info --model_name trifecta_85_glue_get_info --csv ${CSV}
# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_90_trifecta_100k_glue_get_info --model_name trifecta_90_glue_get_info --csv ${CSV}

# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_trifecta_100k_glue_get_info_MC_direct --model_name trifecta_80_glue_get_info_MC_direct --csv ${CSV}
# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_trifecta_100k_glue_get_info_bug_fixed --model_name trifecta_80_glue_get_info_bug_fixed --csv ${CSV} 
# python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_trifecta_100k_glue_get_info_bug_fixed_again --model_name trifecta_80_glue_get_info_bug_fixed_again --csv ${CSV}

## Base bert

# Bert 100k: earliest finetuning result, and hp chase
python ../export_finetuning_results.py ~/nta/tmp/finetuning/finetuning_bert100k_glue_simple_no_ESC --model_name bert_100k_simple --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/bert_100k_hp_chase --model_name bert_100k_hp_chase --csv ${CSV}

# Trifecta: 80, 85, 90, 2x
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_trifecta_100k_glue_get_info_nb --model_name trifecta_80_100k_glue_get_info --csv ${CSV} --md ${MD}
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_85_trifecta_100k_glue_get_info --model_name trifecta_85_glue_get_info --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_90_trifecta_100k_glue_get_info --model_name trifecta_90_glue_get_info --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_bert_sparse_trifecta_2x_get_info --model_name trifecta_2x_glue_get_info --csv ${CSV}

# Trifecta hp chase: 80, 85, 90
python ../export_finetuning_results.py ~/nta/finetuning/trifecta_80_hp_chase --model_name trifecta_80_glue_hp_chase --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/trifecta_85_hp_chase --model_name trifecta_85_glue_hp_chase --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/trifecta_90_hp_chase --model_name trifecta_90_glue_hp_chase --csv ${CSV}

## Small bert

# Bert small 100k: 
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_small_bert_100k_glue --model_name small_bert_100k_get_info --csv ${CSV}

# Trifecta small: 80, 85, 90, 2x, 4x
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_small_bert_trifecta_100k_glue --model_name trifecta_small --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_small_bert_sparse_85_trifecta_100k_glue --model_name trifecta_small_85_get_info --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_small_bert_sparse_90_trifecta_100k_glue --model_name trifecta_small_90_get_info --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_small_bert_sparse_2x_trifecta_100k_glue --model_name trifecta_small_2x_get_info --csv ${CSV}
python ../export_finetuning_results.py ~/nta/finetuning/finetuning_small_bert_sparse_4x_trifecta_100k_glue --model_name trifecta_small_4x_get_info --csv ${CSV} --md ${MD}

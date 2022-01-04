#!/bin/bash

domain="$1"
upper=`echo "$1" | tr '[:lower:]' '[:upper:]'`
base=`dirname $0`

python ./scripts/prep_hdf5.py \
    --w2v ./w2v/glove.6B.300d.txt \
    --name ./data/preprocessed/"$upper"_MATE \
    --data ./data/train/"$domain".trn \
    --lemmatize

echo

#python ./scripts/prep_hdf5_test.py \
#    --data ./data/gold/aspects/"$domain"-tst.asp \
#    --name ./data/preprocessed/"$upper"_MATE_TEST \
#    --vocab ./data/preprocessed/"$upper"_MATE_word_mapping.txt \
#    --products ./data/preprocessed/"$upper"_MATE_product_mapping.txt \
#    --lemmatize

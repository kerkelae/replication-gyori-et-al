#!/bin/bash

fitmcmicro 2-shell_HARDI_preprocessed/dwi.nii.gz smt_params.nii.gz \
    --bvals 2-shell_HARDI_preprocessed/dwi.bval \
    --bvec 2-shell_HARDI_preprocessed/dwi.bvec \
    --mask 2-shell_HARDI_preprocessed/brain_mask.nii.gz

#!/bin/bash

mkdir -p 2-shell_HARDI_intermediate
mrconvert -fslgrad 2-shell_HARDI_raw/dwi.bvec 2-shell_HARDI_raw/dwi.bval 2-shell_HARDI_raw/dwi.nii.gz 2-shell_HARDI_intermediate/dwi.mif
dwidenoise 2-shell_HARDI_intermediate/dwi.mif 2-shell_HARDI_intermediate/dwi_denoised.mif
dwiextract -bzero 2-shell_HARDI_intermediate/dwi.mif - | mrmath -axis 3 - mean 2-shell_HARDI_intermediate/mean_b0.nii.gz
mrcat -axis 3 2-shell_HARDI_intermediate/mean_b0.nii.gz 2-shell_HARDI_raw/dwi_negpe.nii.gz 2-shell_HARDI_intermediate/b0s.nii.gz
dwifslpreproc -pe_dir AP -rpe_pair -se_epi 2-shell_HARDI_intermediate/b0s.nii.gz 2-shell_HARDI_intermediate/dwi_denoised.mif 2-shell_HARDI_intermediate/dwi_preprocessed.mif
mkdir -p 2-shell_HARDI_preprocessed
mrconvert -export_grad_fsl 2-shell_HARDI_preprocessed/dwi.bvec 2-shell_HARDI_preprocessed/dwi.bval 2-shell_HARDI_intermediate/dwi_preprocessed.mif 2-shell_HARDI_preprocessed/dwi.nii.gz
bet2 2-shell_HARDI_preprocessed/dwi.nii.gz 2-shell_HARDI_preprocessed/brain -n -m -f 0.3

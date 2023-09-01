#!/usr/bin/env bash

docker run \
    --mount type=bind,src=$(pwd -P)/INPUTS,dst=/INPUTS \
    --mount type=bind,src=$(pwd -P)/OUTPUTS,dst=/OUTPUTS \
    hipsthomasdocker:test \
    bash -c "\
    cp /INPUTS/MEAN_T1_RAW/mrt1.nii.gz /OUTPUTS/t1.nii.gz && \
    cd /OUTPUTS && \
    hipsthomas_csh -i t1.nii.gz -t1 \
    "

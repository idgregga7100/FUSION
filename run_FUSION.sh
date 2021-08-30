#!/bin/bash

#shell script to run FUSION software, example files for Schlidkraut cancer sumstats and Chatterjee models

FILES=/home/isabelle/Chatterjee_pwas/Schlidkraut/sumstats/*_hg38_rsid.txt

for f in ${FILES}
do

for n in {1..22}
do

Rscript FUSION.assoc_test.R \
--sumstats ${f} \
--weights /home/isabelle/Chatterjee_pwas/PWAS_EA/Plasma_Protein_EA_hg38.pos \
--weights_dir /home/isabelle/Chatterjee_pwas/PWAS_EA/Plasma_Protein_weights_EA/ \
--ref_ld_chr /home/isabelle/Chatterjee_pwas/LDref/EUR/chr \
--chr ${n} \
--out ${f:52:(-9)}_chr${n}.dat

done

done

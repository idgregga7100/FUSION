#!/bin/bash
#pull lines with specific genes of interest from Manhattan script output file of the total combined results

for gene in KDELC2 GSTM1 RSPO3 PLG ARL3 MMP10 ABO
do
 grep $gene FUSIONPWAS_all_pheno.csv > pulled_$gene.csv
done

cat pulled_KDELC2.csv pulled_GSTM1.csv pulled_RSPO3.csv pulled_PLG.csv pulled_ARL3.csv pulled_MMP10.csv pulled_ABO.csv > FUSION_PWAS_pulled_results.csv

#this won't have colnames tho so have to go back and add those. could i have done this with R? sure probably. but this was easier

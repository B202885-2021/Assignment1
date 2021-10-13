#!/bin/bash

# This is the file that carries out the assignment

#TASK 1: perform a quality check - we run fastqc on the paired-end raw sequence data to obtain data for further analysis. 

#1) Descend into directory with fastq data

cp -r /localdisk/data/BPSM/AY21/fastq $HOME

#2) change directories

cd $HOME/fastq

#3) Load fastqc in the directory with data

module load /localdisk/software/fastqc-0.11.7/FastQC

#4) Make new directory for outputs of fastqc

mkdir fastqc_res

#5) Run fastqc & redirect standard output to "stdout.log", redirect standard error to "stderr.log"

fastqc -o fastqc_res --extract *.fq.gz >> stdout.log 2>> stderr.log

#TASK 2: We now want to assess the sequences: we want to assess the numbers and quality of the raw sequence data

#1) First return to the home directory

cd $HOME

# Note: the sequence files are located in "$HOME/fastq". 
# the information about each fq.gz file is located in "$HOME/fastq/100k.fqfiles", where 
# identify files by name "100k.$seq_$k.fq.gz", so when the sequence name is "100k_C1-3-503_1.fq.gz", $seq=C1-3-503 and $k=1. 
# the information about quality of each sequence $seq is located in "$HOME/fastq/fastqc_res/100k.$seq_$k_fastqc"
# We want the output of each analysis to be the file name, as well as the sample name, replicate and time. 

#2) For each metric, we list the sequence ID, replicate number and time of the sequence that passes the metric.

# First, go into the 



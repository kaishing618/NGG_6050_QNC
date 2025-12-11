#IgG NO TEV (x63 vs x64), TSS 500
multiBamSummary BED-file --BED  /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
--bamfiles /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/01_x63_IgG-TEV_S1_L001.sorted.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/09_x64_IgG_TEV_S9_L001.sorted.bam \
--labels x63_IgG_NoTEV x64_IgG_NoTEV  \
-o /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_IgG_NoTEV_replicates_results.npz \
--outRawCounts /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_IgG_NoTEV_replicates_RawCounts 

#H3K27me3 NO TEV (x63 vs x64), TSS 500
multiBamSummary BED-file --BED  /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
--bamfiles /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/02_x63_H3K27me3-TEV_S2_L001.sorted.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/10_x64_H3K27me3_TEV_S10_L001.sorted.bam \
--labels x63_H3K27me3_NoTEV x64_H3K27me3_NoTEV  \
-o /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K27me3_NoTEV_replicates_results.npz \
--outRawCounts /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K27me3_NoTEV_replicates_RawCounts 

#H3K9ac NO TEV (x63 vs x64), TSS 500
multiBamSummary BED-file --BED  /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
--bamfiles /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/03_x63_H3K9ac-TEV_S3_L001.sorted.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/11_x64_H3K9ac_TEV_S11_L001.sorted.bam \
--labels x63_H3K9ac_NoTEV x64_H3K9ac_NoTEV  \
-o /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K9ac_NoTEV_replicates_results.npz \
--outRawCounts /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K9ac_NoTEV_replicates_RawCounts 

#H3K9ac NO TEV Burslem Tn5 (x63 vs x64), TSS 500
multiBamSummary BED-file --BED  /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
--bamfiles /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/04_x63_H3K9ac-TEV-newTn5_S4_L001.sorted.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/12_x64_H3K9ac_TEV_NewTN5_S12_L001.sorted.bam \
--labels x63_H3K9ac_NoTEV_Tn5 x64_H3K9ac_NoTEV_Tn5  \
-o /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K9ac_NoTEV_BurslemTn5_replicates_results.npz \
--outRawCounts /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K9ac_NoTEV_BurslemTn5_replicates_RawCounts 

#IgG with TEV (x63 vs x64), TSS 500
multiBamSummary BED-file --BED  /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
--bamfiles /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/05_x63_IgG_TEV_S5_L001.sorted.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/13_x64_IgG_TEV_S13_L001.sorted.bam \
--labels x63_IgG_PlusTEV x64_IgG_PlusTEV  \
-o /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_IgG_PlusTEV_replicates_results.npz \
--outRawCounts /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_IgG_PlusTEV_replicates_RawCounts 

#H3K27me3 NO TEV (x63 vs x64), TSS 500
multiBamSummary BED-file --BED  /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
--bamfiles /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/06_x63_H3K27me3_TEV_S6_L001.sorted.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/14_x64_H3K27me3_TEV_S14_L001.sorted.bam \
--labels x63_H3K27me3_PlusTEV x64_H3K27me3_PlusTEV  \
-o /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K27me3_PlusTEV_replicates_results.npz \
--outRawCounts /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K27me3_PlusTEV_replicates_RawCounts 

#H3K9ac with TEV (x63 vs x64), TSS 500
multiBamSummary BED-file --BED  /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
--bamfiles /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/07_x63_H3K9ac_TEV_S7_L001.sorted.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/15_x64_H3K9ac_TEV_S15_L001.sorted.bam \
--labels x63_H3K9ac_PlusTEV x64_H3K9ac_PlusTEV  \
-o /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K9ac_PlusTEV_replicates_results.npz \
--outRawCounts /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K9ac_PlusTEV_replicates_RawCounts 

#H3K9ac NO TEV Burslem Tn5 (x63 vs x64), TSS 500
multiBamSummary BED-file --BED  /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
--bamfiles /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/08_x63_H3K9ac_TEV-newTn5_S8_L001.sorted.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/16_x64_H3K9ac_TEV_NewTn5_S16_L001.sorted.bam \
--labels x63_H3K9ac_PlusTEV_Tn5 x64_H3K9ac_PlusTEV_Tn5  \
-o /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K9ac_PlusTEV_BurslemTn5_replicates_results.npz \
--outRawCounts /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/DeepTools/TSS500_H3K9ac_PlusTEV_BurslemTn5_replicates_RawCounts 































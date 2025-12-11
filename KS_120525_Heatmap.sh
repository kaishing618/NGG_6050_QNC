#BED filepaths
/Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_2kb_surrounding_TSS.bed \

/Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \

/Users/korblab/Documents/Genome_files/Useful_bed_files/high_expressed_TSS500bp.bed /Users/korblab/Documents/Genome_files/Useful_bed_files/low_expressed_TSS500bp.bed /Users/korblab/Documents/Genome_files/Useful_bed_files/non_expressed_TSS500bp.bed \

/Users/korblab/Documents/Genome_files/Useful_bed_files/120822_expressed_genesLargestRegions_minus_1st_last_500bps_noheader.bed \


#First compute matrix and plot unscaled heatmap then adjust scale and re-plot using zMin/zMax
#Compute and plot for: 2Kb TSS, 500bp TSS, high/low/non TSS, expressed genes
#Next find and replace IgG/H3K27me3/H3K9ac/H3K9ac_BurslemTn5

# --------------------------- 2Kb surrounding TSS ---------------------------
computeMatrix scale-regions --regionsFileName /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_2kb_surrounding_TSS.bed \
-b 1000 \
--scoreFileName /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/IgG_NoTEV_Merged.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/IgG_PlusTEV_Merged.bam \
-out /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_2kb_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots \
--outFileNameMatrix /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_2kb_TICTAC_CT_IgG_PlusMinusTEV_Matrix \
--outFileSortedRegions /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_2kb_TICTAC_CT_IgG_PlusMinusTEV_sortedRegions.bed \
--startLabel "peak_start" \
--endLabel "peak_end" \
--beforeRegionStartLength 500 \
--afterRegionStartLength 500 \
--samplesLabel IgG_No_TEV IgG_Plus_TEV \
--numberOfProcessors 10

plotHeatmap --matrixFile /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_2kb_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots \
--outFileName /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_2kb_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots_Heatmap_unscaled \
--zMin 0 0 \
--zMax auto auto \
--startLabel=start \
--endLabel=end \
--legendLocation=none

# --------------------------- 500bp surrounding TSS ---------------------------
computeMatrix scale-regions --regionsFileName /Users/korblab/Documents/Genome_files/Useful_bed_files/mm10_500bp_surrounding_TSS.bed \
-b 1000 \
--scoreFileName /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/IgG_NoTEV_Merged.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/IgG_PlusTEV_Merged.bam \
-out /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_500bp_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots \
--outFileNameMatrix /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_500bp_TICTAC_CT_IgG_PlusMinusTEV_Matrix \
--outFileSortedRegions /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_500bp_TICTAC_CT_IgG_PlusMinusTEV_sortedRegions.bed \
--startLabel "peak_start" \
--endLabel "peak_end" \
--beforeRegionStartLength 500 \
--afterRegionStartLength 500 \
--samplesLabel IgG_No_TEV IgG_Plus_TEV \
--numberOfProcessors 10

plotHeatmap --matrixFile /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_500bp_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots \
--outFileName /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/DeepTools/TSS_500bp_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots_Heatmap_unscaled \
--zMin 0 0 \
--zMax auto auto \
--startLabel=start \
--endLabel=end \
--legendLocation=none

# --------------------------- High low non expressed TSS ---------------------------
computeMatrix scale-regions --regionsFileName /Users/korblab/Documents/Genome_files/Useful_bed_files/high_expressed_TSS500bp.bed /Users/korblab/Documents/Genome_files/Useful_bed_files/low_expressed_TSS500bp.bed /Users/korblab/Documents/Genome_files/Useful_bed_files/non_expressed_TSS500bp.bed \
-b 1000 \
--scoreFileName /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/IgG_NoTEV_Merged.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/IgG_PlusTEV_Merged.bam \
-out /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/HighLowNonTSS_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots \
--outFileNameMatrix /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/HighLowNonTSS_TICTAC_CT_IgG_PlusMinusTEV_Matrix \
--outFileSortedRegions /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/HighLowNonTSS_TICTAC_CT_IgG_PlusMinusTEV_sortedRegions.bed \
--startLabel "peak_start" \
--endLabel "peak_end" \
--beforeRegionStartLength 500 \
--afterRegionStartLength 500 \
--samplesLabel IgG_No_TEV IgG_Plus_TEV \
--numberOfProcessors 10

plotHeatmap --matrixFile /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/HighLowNonTSS_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots \
--outFileName /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/HighLowNonTSS_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots_Heatmap_unscaled \
--zMin 0 0 \
--zMax auto auto \
--startLabel=start \
--endLabel=end \
--legendLocation=none

# --------------------------- Expressed genes (minus first last 500bp, no header) ---------------------------
computeMatrix scale-regions --regionsFileName /Users/korblab/Documents/Genome_files/Useful_bed_files/120822_expressed_genesLargestRegions_minus_1st_last_500bps_noheader.bed \
-b 1000 \
--scoreFileName /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/IgG_NoTEV_Merged.bam /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/IgG_PlusTEV_Merged.bam \
-out /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/ExpressedGenes_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots \
--outFileNameMatrix /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/ExpressedGenes_TICTAC_CT_IgG_PlusMinusTEV_Matrix \
--outFileSortedRegions /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/ExpressedGenes_TICTAC_CT_IgG_PlusMinusTEV_sortedRegions.bed \
--startLabel "peak_start" \
--endLabel "peak_end" \
--beforeRegionStartLength 500 \
--afterRegionStartLength 500 \
--samplesLabel IgG_No_TEV IgG_Plus_TEV \
--numberOfProcessors 10

plotHeatmap --matrixFile /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/ExpressedGenes_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots \
--outFileName /Users/korblab/Documents/Users/Kai/092925_TICTAC_CUTTag/Alignment/processed_bam/Merged/ExpressedGenes_TICTAC_CT_IgG_PlusMinusTEV_MatrixForPlots_Heatmap_unscaled \
--zMin 0 0 \
--zMax auto auto \
--startLabel=start \
--endLabel=end \
--legendLocation=none


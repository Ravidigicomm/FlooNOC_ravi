verilator \
  -I/home/ravi_mishra/FlooNOC_ravi/hw/include/floo_noc/axi/include/ \
  -I/home/ravi_mishra/FlooNOC_ravi/hw/include/floo_noc/axi/src/ \
  -I/home/ravi_mishra/FlooNOC_ravi/hw/include/floo_noc/common_cells/include/ \
  -I/home/ravi_mishra/FlooNOC_ravi/hw/include/floo_noc/common_cells/src/ \
  -I/home/ravi_mishra/FlooNOC_ravi/hw/include/ \
   --error-limit 0 \
  --lint-only --sv \
  -f rtl/filelist.lst \
  --top-module floo_soc_axi_noc_noc 



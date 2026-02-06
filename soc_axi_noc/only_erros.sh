verilator --lint-only --sv \
  -Wall \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/floo_noc/axi/include/ \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/floo_noc/axi/src/ \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/floo_noc/common_cells/include/ \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/floo_noc/common_cells/src/ \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/ \
  --error-limit 1 \
  -Wno-fatal \
  -f rtl/filelist.lst \
  --top-module floo_soc_axi_noc_noc


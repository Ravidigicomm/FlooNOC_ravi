verilator -Wall \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/floo_noc/axi/include/ \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/floo_noc/axi/src/ \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/floo_noc/common_cells/include/ \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/floo_noc/common_cells/src/ \
  -I/home/ravi_mishra/NOC_prj/FlooNoC/hw/include/ \
   --error-limit 0 \
  --lint-only --sv \
  -f mesh_axi_files.f \
  --top-module floo_axi_mesh_noc 



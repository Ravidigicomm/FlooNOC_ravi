// Copyright 2026 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51

// AUTOMATICALLY GENERATED! DO NOT EDIT!

module floo_soc_axi_noc_noc
  import floo_pkg::*;
  import floo_soc_axi_noc_noc_pkg::*;
(
  input logic clk_i,
  input logic rst_ni,
  input logic test_enable_i,
  input axi_axi_m_req_t              cpu_axi_m_req_i,
  output axi_axi_m_rsp_t              cpu_axi_m_rsp_o,
  input axi_axi_m_req_t              gpu_axi_m_req_i,
  output axi_axi_m_rsp_t              gpu_axi_m_rsp_o,
  input axi_axi_m_req_t              system_dma_axi_m_req_i,
  output axi_axi_m_rsp_t              system_dma_axi_m_rsp_o,
  input axi_axi_m_req_t              ethernet_axi_m_req_i,
  output axi_axi_m_rsp_t              ethernet_axi_m_rsp_o,
  input axi_axi_m_req_t              apb_ctrl_axi_m_req_i,
  output axi_axi_m_rsp_t              apb_ctrl_axi_m_rsp_o,
  output axi_axi_s_req_t              ddr_axi_s_req_o,
  input axi_axi_s_rsp_t              ddr_axi_s_rsp_i,
  output axi_axi_s_req_t              l3_cache_axi_s_req_o,
  input axi_axi_s_rsp_t              l3_cache_axi_s_rsp_i,
  output axi_axi_s_req_t              pcie_axi_s_req_o,
  input axi_axi_s_rsp_t              pcie_axi_s_rsp_i,
  output axi_axi_s_req_t              npu_axi_s_req_o,
  input axi_axi_s_rsp_t              npu_axi_s_rsp_i,
  output axi_axi_s_req_t              nand_axi_s_req_o,
  input axi_axi_s_rsp_t              nand_axi_s_rsp_i,
  output axi_axi_s_req_t              sram_axi_s_req_o,
  input axi_axi_s_rsp_t              sram_axi_s_rsp_i,
  output axi_axi_s_req_t              camera_axi_s_req_o,
  input axi_axi_s_rsp_t              camera_axi_s_rsp_i,
  output axi_axi_s_req_t              network_ctrl_axi_s_req_o,
  input axi_axi_s_rsp_t              network_ctrl_axi_s_rsp_i,
  output axi_axi_s_req_t              apb_group1_axi_s_req_o,
  input axi_axi_s_rsp_t              apb_group1_axi_s_rsp_i,
  output axi_axi_s_req_t              apb_group2_axi_s_req_o,
  input axi_axi_s_rsp_t              apb_group2_axi_s_rsp_i

);

floo_req_t router_to_cpu_ni_req;
floo_rsp_t cpu_ni_to_router_rsp;

floo_req_t router_to_gpu_ni_req;
floo_rsp_t gpu_ni_to_router_rsp;

floo_req_t router_to_system_dma_ni_req;
floo_rsp_t system_dma_ni_to_router_rsp;

floo_req_t router_to_ethernet_ni_req;
floo_rsp_t ethernet_ni_to_router_rsp;

floo_req_t router_to_apb_ctrl_ni_req;
floo_rsp_t apb_ctrl_ni_to_router_rsp;

floo_req_t router_to_ddr_ni_req;
floo_rsp_t ddr_ni_to_router_rsp;

floo_req_t router_to_l3_cache_ni_req;
floo_rsp_t l3_cache_ni_to_router_rsp;

floo_req_t router_to_pcie_ni_req;
floo_rsp_t pcie_ni_to_router_rsp;

floo_req_t router_to_npu_ni_req;
floo_rsp_t npu_ni_to_router_rsp;

floo_req_t router_to_nand_ni_req;
floo_rsp_t nand_ni_to_router_rsp;

floo_req_t router_to_sram_ni_req;
floo_rsp_t sram_ni_to_router_rsp;

floo_req_t router_to_camera_ni_req;
floo_rsp_t camera_ni_to_router_rsp;

floo_req_t router_to_network_ctrl_ni_req;
floo_rsp_t network_ctrl_ni_to_router_rsp;

floo_req_t router_to_apb_group1_ni_req;
floo_rsp_t apb_group1_ni_to_router_rsp;

floo_req_t router_to_apb_group2_ni_req;
floo_rsp_t apb_group2_ni_to_router_rsp;

floo_req_t cpu_ni_to_router_req;
floo_rsp_t router_to_cpu_ni_rsp;

floo_req_t gpu_ni_to_router_req;
floo_rsp_t router_to_gpu_ni_rsp;

floo_req_t system_dma_ni_to_router_req;
floo_rsp_t router_to_system_dma_ni_rsp;

floo_req_t ethernet_ni_to_router_req;
floo_rsp_t router_to_ethernet_ni_rsp;

floo_req_t apb_ctrl_ni_to_router_req;
floo_rsp_t router_to_apb_ctrl_ni_rsp;

floo_req_t ddr_ni_to_router_req;
floo_rsp_t router_to_ddr_ni_rsp;

floo_req_t l3_cache_ni_to_router_req;
floo_rsp_t router_to_l3_cache_ni_rsp;

floo_req_t pcie_ni_to_router_req;
floo_rsp_t router_to_pcie_ni_rsp;

floo_req_t npu_ni_to_router_req;
floo_rsp_t router_to_npu_ni_rsp;

floo_req_t nand_ni_to_router_req;
floo_rsp_t router_to_nand_ni_rsp;

floo_req_t sram_ni_to_router_req;
floo_rsp_t router_to_sram_ni_rsp;

floo_req_t camera_ni_to_router_req;
floo_rsp_t router_to_camera_ni_rsp;

floo_req_t network_ctrl_ni_to_router_req;
floo_rsp_t router_to_network_ctrl_ni_rsp;

floo_req_t apb_group1_ni_to_router_req;
floo_rsp_t router_to_apb_group1_ni_rsp;

floo_req_t apb_group2_ni_to_router_req;
floo_rsp_t router_to_apb_group2_ni_rsp;



  localparam id_t CPU_NI_ID = id_t'(0);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b0, 1'b1)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) cpu_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( cpu_axi_m_req_i ),
  .axi_in_rsp_o  ( cpu_axi_m_rsp_o ),
  .axi_out_req_o (    ),
  .axi_out_rsp_i ( '0 ),
  .id_i             ( CPU_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( cpu_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_cpu_ni_rsp   ),
  .floo_req_i       ( router_to_cpu_ni_req   ),
  .floo_rsp_o       ( cpu_ni_to_router_rsp   )
);

  localparam id_t GPU_NI_ID = id_t'(1);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b0, 1'b1)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) gpu_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( gpu_axi_m_req_i ),
  .axi_in_rsp_o  ( gpu_axi_m_rsp_o ),
  .axi_out_req_o (    ),
  .axi_out_rsp_i ( '0 ),
  .id_i             ( GPU_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( gpu_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_gpu_ni_rsp   ),
  .floo_req_i       ( router_to_gpu_ni_req   ),
  .floo_rsp_o       ( gpu_ni_to_router_rsp   )
);

  localparam id_t SYSTEM_DMA_NI_ID = id_t'(2);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b0, 1'b1)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) system_dma_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( system_dma_axi_m_req_i ),
  .axi_in_rsp_o  ( system_dma_axi_m_rsp_o ),
  .axi_out_req_o (    ),
  .axi_out_rsp_i ( '0 ),
  .id_i             ( SYSTEM_DMA_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( system_dma_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_system_dma_ni_rsp   ),
  .floo_req_i       ( router_to_system_dma_ni_req   ),
  .floo_rsp_o       ( system_dma_ni_to_router_rsp   )
);

  localparam id_t ETHERNET_NI_ID = id_t'(3);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b0, 1'b1)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) ethernet_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( ethernet_axi_m_req_i ),
  .axi_in_rsp_o  ( ethernet_axi_m_rsp_o ),
  .axi_out_req_o (    ),
  .axi_out_rsp_i ( '0 ),
  .id_i             ( ETHERNET_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( ethernet_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_ethernet_ni_rsp   ),
  .floo_req_i       ( router_to_ethernet_ni_req   ),
  .floo_rsp_o       ( ethernet_ni_to_router_rsp   )
);

  localparam id_t APB_CTRL_NI_ID = id_t'(4);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b0, 1'b1)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) apb_ctrl_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( apb_ctrl_axi_m_req_i ),
  .axi_in_rsp_o  ( apb_ctrl_axi_m_rsp_o ),
  .axi_out_req_o (    ),
  .axi_out_rsp_i ( '0 ),
  .id_i             ( APB_CTRL_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( apb_ctrl_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_apb_ctrl_ni_rsp   ),
  .floo_req_i       ( router_to_apb_ctrl_ni_req   ),
  .floo_rsp_o       ( apb_ctrl_ni_to_router_rsp   )
);

  localparam id_t DDR_NI_ID = id_t'(5);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) ddr_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( ddr_axi_s_req_o ),
  .axi_out_rsp_i ( ddr_axi_s_rsp_i ),
  .id_i             ( DDR_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( ddr_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_ddr_ni_rsp   ),
  .floo_req_i       ( router_to_ddr_ni_req   ),
  .floo_rsp_o       ( ddr_ni_to_router_rsp   )
);

  localparam id_t L3_CACHE_NI_ID = id_t'(6);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) l3_cache_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( l3_cache_axi_s_req_o ),
  .axi_out_rsp_i ( l3_cache_axi_s_rsp_i ),
  .id_i             ( L3_CACHE_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( l3_cache_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_l3_cache_ni_rsp   ),
  .floo_req_i       ( router_to_l3_cache_ni_req   ),
  .floo_rsp_o       ( l3_cache_ni_to_router_rsp   )
);

  localparam id_t PCIE_NI_ID = id_t'(7);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) pcie_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( pcie_axi_s_req_o ),
  .axi_out_rsp_i ( pcie_axi_s_rsp_i ),
  .id_i             ( PCIE_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( pcie_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_pcie_ni_rsp   ),
  .floo_req_i       ( router_to_pcie_ni_req   ),
  .floo_rsp_o       ( pcie_ni_to_router_rsp   )
);

  localparam id_t NPU_NI_ID = id_t'(8);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) npu_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( npu_axi_s_req_o ),
  .axi_out_rsp_i ( npu_axi_s_rsp_i ),
  .id_i             ( NPU_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( npu_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_npu_ni_rsp   ),
  .floo_req_i       ( router_to_npu_ni_req   ),
  .floo_rsp_o       ( npu_ni_to_router_rsp   )
);

  localparam id_t NAND_NI_ID = id_t'(9);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) nand_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( nand_axi_s_req_o ),
  .axi_out_rsp_i ( nand_axi_s_rsp_i ),
  .id_i             ( NAND_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( nand_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_nand_ni_rsp   ),
  .floo_req_i       ( router_to_nand_ni_req   ),
  .floo_rsp_o       ( nand_ni_to_router_rsp   )
);

  localparam id_t SRAM_NI_ID = id_t'(10);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) sram_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( sram_axi_s_req_o ),
  .axi_out_rsp_i ( sram_axi_s_rsp_i ),
  .id_i             ( SRAM_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( sram_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_sram_ni_rsp   ),
  .floo_req_i       ( router_to_sram_ni_req   ),
  .floo_rsp_o       ( sram_ni_to_router_rsp   )
);

  localparam id_t CAMERA_NI_ID = id_t'(11);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) camera_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( camera_axi_s_req_o ),
  .axi_out_rsp_i ( camera_axi_s_rsp_i ),
  .id_i             ( CAMERA_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( camera_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_camera_ni_rsp   ),
  .floo_req_i       ( router_to_camera_ni_req   ),
  .floo_rsp_o       ( camera_ni_to_router_rsp   )
);

  localparam id_t NETWORK_CTRL_NI_ID = id_t'(12);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) network_ctrl_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( network_ctrl_axi_s_req_o ),
  .axi_out_rsp_i ( network_ctrl_axi_s_rsp_i ),
  .id_i             ( NETWORK_CTRL_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( network_ctrl_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_network_ctrl_ni_rsp   ),
  .floo_req_i       ( router_to_network_ctrl_ni_req   ),
  .floo_rsp_o       ( network_ctrl_ni_to_router_rsp   )
);

  localparam id_t APB_GROUP1_NI_ID = id_t'(13);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) apb_group1_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( apb_group1_axi_s_req_o ),
  .axi_out_rsp_i ( apb_group1_axi_s_rsp_i ),
  .id_i             ( APB_GROUP1_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( apb_group1_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_apb_group1_ni_rsp   ),
  .floo_req_i       ( router_to_apb_group1_ni_req   ),
  .floo_rsp_o       ( apb_group1_ni_to_router_rsp   )
);

  localparam id_t APB_GROUP2_NI_ID = id_t'(14);

floo_axi_chimney  #(
  .AxiCfg(AxiCfg),
  .ChimneyCfg(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_in_req_t(axi_axi_m_req_t),
  .axi_in_rsp_t(axi_axi_m_rsp_t),
  .axi_out_req_t(axi_axi_s_req_t),
  .axi_out_rsp_t(axi_axi_s_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) apb_group2_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_in_req_i  ( '0 ),
  .axi_in_rsp_o  (    ),
  .axi_out_req_o ( apb_group2_axi_s_req_o ),
  .axi_out_rsp_i ( apb_group2_axi_s_rsp_i ),
  .id_i             ( APB_GROUP2_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( apb_group2_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_apb_group2_ni_rsp   ),
  .floo_req_i       ( router_to_apb_group2_ni_req   ),
  .floo_rsp_o       ( apb_group2_ni_to_router_rsp   )
);

localparam int unsigned RouterMapNumRules = 10;

typedef struct packed {
    id_t idx;
    id_t start_addr;
    id_t end_addr;
} router_map_rule_t;

localparam router_map_rule_t[RouterMapNumRules-1:0] RouterMap = '{
'{    idx: 5,
    start_addr: 5,
    end_addr: 6},// DdrNi
'{    idx: 6,
    start_addr: 6,
    end_addr: 7},// L3CacheNi
'{    idx: 7,
    start_addr: 7,
    end_addr: 8},// PcieNi
'{    idx: 8,
    start_addr: 8,
    end_addr: 9},// NpuNi
'{    idx: 9,
    start_addr: 9,
    end_addr: 10},// NandNi
'{    idx: 10,
    start_addr: 10,
    end_addr: 11},// SramNi
'{    idx: 11,
    start_addr: 11,
    end_addr: 12},// CameraNi
'{    idx: 12,
    start_addr: 12,
    end_addr: 13},// NetworkCtrlNi
'{    idx: 13,
    start_addr: 13,
    end_addr: 14},// ApbGroup1Ni
'{    idx: 14,
    start_addr: 14,
    end_addr: 15} // ApbGroup2Ni

};


floo_req_t [15:0] router_req_in;
floo_rsp_t [15:0] router_rsp_out;
floo_req_t [15:0] router_req_out;
floo_rsp_t [15:0] router_rsp_in;

    assign router_req_in[0] = cpu_ni_to_router_req;
    assign router_req_in[1] = gpu_ni_to_router_req;
    assign router_req_in[2] = system_dma_ni_to_router_req;
    assign router_req_in[3] = ethernet_ni_to_router_req;
    assign router_req_in[4] = apb_ctrl_ni_to_router_req;
    assign router_req_in[5] = ddr_ni_to_router_req;
    assign router_req_in[6] = l3_cache_ni_to_router_req;
    assign router_req_in[7] = pcie_ni_to_router_req;
    assign router_req_in[8] = npu_ni_to_router_req;
    assign router_req_in[9] = nand_ni_to_router_req;
    assign router_req_in[10] = sram_ni_to_router_req;
    assign router_req_in[11] = camera_ni_to_router_req;
    assign router_req_in[12] = network_ctrl_ni_to_router_req;
    assign router_req_in[13] = apb_group1_ni_to_router_req;
    assign router_req_in[14] = apb_group2_ni_to_router_req;
    assign router_req_in[15] = '0;

    assign router_to_cpu_ni_rsp = router_rsp_out[0];
    assign router_to_gpu_ni_rsp = router_rsp_out[1];
    assign router_to_system_dma_ni_rsp = router_rsp_out[2];
    assign router_to_ethernet_ni_rsp = router_rsp_out[3];
    assign router_to_apb_ctrl_ni_rsp = router_rsp_out[4];
    assign router_to_ddr_ni_rsp = router_rsp_out[5];
    assign router_to_l3_cache_ni_rsp = router_rsp_out[6];
    assign router_to_pcie_ni_rsp = router_rsp_out[7];
    assign router_to_npu_ni_rsp = router_rsp_out[8];
    assign router_to_nand_ni_rsp = router_rsp_out[9];
    assign router_to_sram_ni_rsp = router_rsp_out[10];
    assign router_to_camera_ni_rsp = router_rsp_out[11];
    assign router_to_network_ctrl_ni_rsp = router_rsp_out[12];
    assign router_to_apb_group1_ni_rsp = router_rsp_out[13];
    assign router_to_apb_group2_ni_rsp = router_rsp_out[14];

    assign router_to_cpu_ni_req = router_req_out[0];
    assign router_to_gpu_ni_req = router_req_out[1];
    assign router_to_system_dma_ni_req = router_req_out[2];
    assign router_to_ethernet_ni_req = router_req_out[3];
    assign router_to_apb_ctrl_ni_req = router_req_out[4];
    assign router_to_ddr_ni_req = router_req_out[5];
    assign router_to_l3_cache_ni_req = router_req_out[6];
    assign router_to_pcie_ni_req = router_req_out[7];
    assign router_to_npu_ni_req = router_req_out[8];
    assign router_to_nand_ni_req = router_req_out[9];
    assign router_to_sram_ni_req = router_req_out[10];
    assign router_to_camera_ni_req = router_req_out[11];
    assign router_to_network_ctrl_ni_req = router_req_out[12];
    assign router_to_apb_group1_ni_req = router_req_out[13];
    assign router_to_apb_group2_ni_req = router_req_out[14];

    assign router_rsp_in[0] = cpu_ni_to_router_rsp;
    assign router_rsp_in[1] = gpu_ni_to_router_rsp;
    assign router_rsp_in[2] = system_dma_ni_to_router_rsp;
    assign router_rsp_in[3] = ethernet_ni_to_router_rsp;
    assign router_rsp_in[4] = apb_ctrl_ni_to_router_rsp;
    assign router_rsp_in[5] = ddr_ni_to_router_rsp;
    assign router_rsp_in[6] = l3_cache_ni_to_router_rsp;
    assign router_rsp_in[7] = pcie_ni_to_router_rsp;
    assign router_rsp_in[8] = npu_ni_to_router_rsp;
    assign router_rsp_in[9] = nand_ni_to_router_rsp;
    assign router_rsp_in[10] = sram_ni_to_router_rsp;
    assign router_rsp_in[11] = camera_ni_to_router_rsp;
    assign router_rsp_in[12] = network_ctrl_ni_to_router_rsp;
    assign router_rsp_in[13] = apb_group1_ni_to_router_rsp;
    assign router_rsp_in[14] = apb_group2_ni_to_router_rsp;
    assign router_rsp_in[15] = '0;


floo_axi_router #(
  .AxiCfg(AxiCfg),
  .RouteAlgo (IdTable),
  .NumRoutes (16),
  .NumInputs (16),
  .NumOutputs (16),
  .InFifoDepth (2),
  .OutFifoDepth (2),
  .id_t(id_t),
  .hdr_t(hdr_t),
  .NumAddrRules (10),
  .addr_rule_t (router_map_rule_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t)
) router (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .id_i ('0),
  .id_route_map_i (RouterMap),
  .floo_req_i (router_req_in),
  .floo_rsp_o (router_rsp_out),
  .floo_req_o (router_req_out),
  .floo_rsp_i (router_rsp_in)
);



endmodule

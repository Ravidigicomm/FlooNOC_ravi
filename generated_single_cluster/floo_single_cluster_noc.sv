// Copyright 2025 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51

// AUTOMATICALLY GENERATED! DO NOT EDIT!

module floo_single_cluster_noc
  import floo_pkg::*;
  import floo_single_cluster_noc_pkg::*;
(
  input logic clk_i,
  input logic rst_ni,
  input logic test_enable_i,
  input axi_narrow_in_req_t              cluster_narrow_in_req_i,
  output axi_narrow_in_rsp_t              cluster_narrow_in_rsp_o,
  input axi_wide_in_req_t              cluster_wide_in_req_i,
  output axi_wide_in_rsp_t              cluster_wide_in_rsp_o,
  output axi_narrow_out_req_t              cluster_narrow_out_req_o,
  input axi_narrow_out_rsp_t              cluster_narrow_out_rsp_i,
  output axi_wide_out_req_t              cluster_wide_out_req_o,
  input axi_wide_out_rsp_t              cluster_wide_out_rsp_i,
  output axi_narrow_out_req_t              hbm_narrow_out_req_o,
  input axi_narrow_out_rsp_t              hbm_narrow_out_rsp_i,
  output axi_wide_out_req_t              hbm_wide_out_req_o,
  input axi_wide_out_rsp_t              hbm_wide_out_rsp_i,
  input axi_narrow_in_req_t              serial_link_narrow_in_req_i,
  output axi_narrow_in_rsp_t              serial_link_narrow_in_rsp_o,
  input axi_wide_in_req_t              serial_link_wide_in_req_i,
  output axi_wide_in_rsp_t              serial_link_wide_in_rsp_o,
  output axi_narrow_out_req_t              serial_link_narrow_out_req_o,
  input axi_narrow_out_rsp_t              serial_link_narrow_out_rsp_i,
  output axi_wide_out_req_t              serial_link_wide_out_req_o,
  input axi_wide_out_rsp_t              serial_link_wide_out_rsp_i,
  input axi_narrow_in_req_t              cva6_narrow_in_req_i,
  output axi_narrow_in_rsp_t              cva6_narrow_in_rsp_o,
  input axi_narrow_in_req_t              peripherals_narrow_in_req_i,
  output axi_narrow_in_rsp_t              peripherals_narrow_in_rsp_o,
  output axi_narrow_out_req_t              peripherals_narrow_out_req_o,
  input axi_narrow_out_rsp_t              peripherals_narrow_out_rsp_i

);

floo_req_t router_to_cluster_ni_req;
floo_rsp_t cluster_ni_to_router_rsp;
floo_wide_t router_to_cluster_ni_wide;

floo_req_t router_to_hbm_ni_req;
floo_rsp_t hbm_ni_to_router_rsp;
floo_wide_t router_to_hbm_ni_wide;

floo_req_t router_to_serial_link_ni_req;
floo_rsp_t serial_link_ni_to_router_rsp;
floo_wide_t router_to_serial_link_ni_wide;

floo_req_t router_to_cva6_ni_req;
floo_rsp_t cva6_ni_to_router_rsp;
floo_wide_t router_to_cva6_ni_wide;

floo_req_t router_to_peripherals_ni_req;
floo_rsp_t peripherals_ni_to_router_rsp;
floo_wide_t router_to_peripherals_ni_wide;

floo_req_t cluster_ni_to_router_req;
floo_rsp_t router_to_cluster_ni_rsp;
floo_wide_t cluster_ni_to_router_wide;

floo_req_t hbm_ni_to_router_req;
floo_rsp_t router_to_hbm_ni_rsp;
floo_wide_t hbm_ni_to_router_wide;

floo_req_t serial_link_ni_to_router_req;
floo_rsp_t router_to_serial_link_ni_rsp;
floo_wide_t serial_link_ni_to_router_wide;

floo_req_t cva6_ni_to_router_req;
floo_rsp_t router_to_cva6_ni_rsp;
floo_wide_t cva6_ni_to_router_wide;

floo_req_t peripherals_ni_to_router_req;
floo_rsp_t router_to_peripherals_ni_rsp;
floo_wide_t peripherals_ni_to_router_wide;



  localparam id_t CLUSTER_NI_ID = id_t'(0);

floo_nw_chimney  #(
  .AxiCfgN(AxiCfgN),
  .AxiCfgW(AxiCfgW),
  .ChimneyCfgN(set_ports(ChimneyDefaultCfg, 1'b1, 1'b1)),
  .ChimneyCfgW(set_ports(ChimneyDefaultCfg, 1'b1, 1'b1)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_narrow_in_req_t(axi_narrow_in_req_t),
  .axi_narrow_in_rsp_t(axi_narrow_in_rsp_t),
  .axi_narrow_out_req_t(axi_narrow_out_req_t),
  .axi_narrow_out_rsp_t(axi_narrow_out_rsp_t),
  .axi_wide_in_req_t(axi_wide_in_req_t),
  .axi_wide_in_rsp_t(axi_wide_in_rsp_t),
  .axi_wide_out_req_t(axi_wide_out_req_t),
  .axi_wide_out_rsp_t(axi_wide_out_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t),
  .floo_wide_t(floo_wide_t)
) cluster_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_narrow_in_req_i  ( cluster_narrow_in_req_i ),
  .axi_narrow_in_rsp_o  ( cluster_narrow_in_rsp_o ),
  .axi_narrow_out_req_o ( cluster_narrow_out_req_o ),
  .axi_narrow_out_rsp_i ( cluster_narrow_out_rsp_i ),
  .axi_wide_in_req_i  ( cluster_wide_in_req_i ),
  .axi_wide_in_rsp_o  ( cluster_wide_in_rsp_o ),
  .axi_wide_out_req_o ( cluster_wide_out_req_o ),
  .axi_wide_out_rsp_i ( cluster_wide_out_rsp_i ),
  .id_i             ( CLUSTER_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( cluster_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_cluster_ni_rsp   ),
  .floo_wide_o      ( cluster_ni_to_router_wide  ),
  .floo_req_i       ( router_to_cluster_ni_req   ),
  .floo_rsp_o       ( cluster_ni_to_router_rsp   ),
  .floo_wide_i      ( router_to_cluster_ni_wide  )
);

  localparam id_t HBM_NI_ID = id_t'(1);

floo_nw_chimney  #(
  .AxiCfgN(AxiCfgN),
  .AxiCfgW(AxiCfgW),
  .ChimneyCfgN(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .ChimneyCfgW(set_ports(ChimneyDefaultCfg, 1'b1, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_narrow_in_req_t(axi_narrow_in_req_t),
  .axi_narrow_in_rsp_t(axi_narrow_in_rsp_t),
  .axi_narrow_out_req_t(axi_narrow_out_req_t),
  .axi_narrow_out_rsp_t(axi_narrow_out_rsp_t),
  .axi_wide_in_req_t(axi_wide_in_req_t),
  .axi_wide_in_rsp_t(axi_wide_in_rsp_t),
  .axi_wide_out_req_t(axi_wide_out_req_t),
  .axi_wide_out_rsp_t(axi_wide_out_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t),
  .floo_wide_t(floo_wide_t)
) hbm_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_narrow_in_req_i  ( '0 ),
  .axi_narrow_in_rsp_o  (    ),
  .axi_narrow_out_req_o ( hbm_narrow_out_req_o ),
  .axi_narrow_out_rsp_i ( hbm_narrow_out_rsp_i ),
  .axi_wide_in_req_i  ( '0 ),
  .axi_wide_in_rsp_o  (    ),
  .axi_wide_out_req_o ( hbm_wide_out_req_o ),
  .axi_wide_out_rsp_i ( hbm_wide_out_rsp_i ),
  .id_i             ( HBM_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( hbm_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_hbm_ni_rsp   ),
  .floo_wide_o      ( hbm_ni_to_router_wide  ),
  .floo_req_i       ( router_to_hbm_ni_req   ),
  .floo_rsp_o       ( hbm_ni_to_router_rsp   ),
  .floo_wide_i      ( router_to_hbm_ni_wide  )
);

  localparam id_t SERIAL_LINK_NI_ID = id_t'(2);

floo_nw_chimney  #(
  .AxiCfgN(AxiCfgN),
  .AxiCfgW(AxiCfgW),
  .ChimneyCfgN(set_ports(ChimneyDefaultCfg, 1'b1, 1'b1)),
  .ChimneyCfgW(set_ports(ChimneyDefaultCfg, 1'b1, 1'b1)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_narrow_in_req_t(axi_narrow_in_req_t),
  .axi_narrow_in_rsp_t(axi_narrow_in_rsp_t),
  .axi_narrow_out_req_t(axi_narrow_out_req_t),
  .axi_narrow_out_rsp_t(axi_narrow_out_rsp_t),
  .axi_wide_in_req_t(axi_wide_in_req_t),
  .axi_wide_in_rsp_t(axi_wide_in_rsp_t),
  .axi_wide_out_req_t(axi_wide_out_req_t),
  .axi_wide_out_rsp_t(axi_wide_out_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t),
  .floo_wide_t(floo_wide_t)
) serial_link_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_narrow_in_req_i  ( serial_link_narrow_in_req_i ),
  .axi_narrow_in_rsp_o  ( serial_link_narrow_in_rsp_o ),
  .axi_narrow_out_req_o ( serial_link_narrow_out_req_o ),
  .axi_narrow_out_rsp_i ( serial_link_narrow_out_rsp_i ),
  .axi_wide_in_req_i  ( serial_link_wide_in_req_i ),
  .axi_wide_in_rsp_o  ( serial_link_wide_in_rsp_o ),
  .axi_wide_out_req_o ( serial_link_wide_out_req_o ),
  .axi_wide_out_rsp_i ( serial_link_wide_out_rsp_i ),
  .id_i             ( SERIAL_LINK_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( serial_link_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_serial_link_ni_rsp   ),
  .floo_wide_o      ( serial_link_ni_to_router_wide  ),
  .floo_req_i       ( router_to_serial_link_ni_req   ),
  .floo_rsp_o       ( serial_link_ni_to_router_rsp   ),
  .floo_wide_i      ( router_to_serial_link_ni_wide  )
);

  localparam id_t CVA6_NI_ID = id_t'(3);

floo_nw_chimney  #(
  .AxiCfgN(AxiCfgN),
  .AxiCfgW(AxiCfgW),
  .ChimneyCfgN(set_ports(ChimneyDefaultCfg, 1'b0, 1'b1)),
  .ChimneyCfgW(set_ports(ChimneyDefaultCfg, 1'b0, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_narrow_in_req_t(axi_narrow_in_req_t),
  .axi_narrow_in_rsp_t(axi_narrow_in_rsp_t),
  .axi_narrow_out_req_t(axi_narrow_out_req_t),
  .axi_narrow_out_rsp_t(axi_narrow_out_rsp_t),
  .axi_wide_in_req_t(axi_wide_in_req_t),
  .axi_wide_in_rsp_t(axi_wide_in_rsp_t),
  .axi_wide_out_req_t(axi_wide_out_req_t),
  .axi_wide_out_rsp_t(axi_wide_out_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t),
  .floo_wide_t(floo_wide_t)
) cva6_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_narrow_in_req_i  ( cva6_narrow_in_req_i ),
  .axi_narrow_in_rsp_o  ( cva6_narrow_in_rsp_o ),
  .axi_narrow_out_req_o (    ),
  .axi_narrow_out_rsp_i ( '0 ),
  .axi_wide_in_req_i  ( '0 ),
  .axi_wide_in_rsp_o  (    ),
  .axi_wide_out_req_o (    ),
  .axi_wide_out_rsp_i ( '0 ),
  .id_i             ( CVA6_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( cva6_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_cva6_ni_rsp   ),
  .floo_wide_o      ( cva6_ni_to_router_wide  ),
  .floo_req_i       ( router_to_cva6_ni_req   ),
  .floo_rsp_o       ( cva6_ni_to_router_rsp   ),
  .floo_wide_i      ( router_to_cva6_ni_wide  )
);

  localparam id_t PERIPHERALS_NI_ID = id_t'(4);

floo_nw_chimney  #(
  .AxiCfgN(AxiCfgN),
  .AxiCfgW(AxiCfgW),
  .ChimneyCfgN(set_ports(ChimneyDefaultCfg, 1'b1, 1'b1)),
  .ChimneyCfgW(set_ports(ChimneyDefaultCfg, 1'b0, 1'b0)),
  .RouteCfg(RouteCfg),
  .id_t(id_t),
  .rob_idx_t(rob_idx_t),
  .hdr_t  (hdr_t),
  .sam_rule_t(sam_rule_t),
  .Sam(Sam),
  .axi_narrow_in_req_t(axi_narrow_in_req_t),
  .axi_narrow_in_rsp_t(axi_narrow_in_rsp_t),
  .axi_narrow_out_req_t(axi_narrow_out_req_t),
  .axi_narrow_out_rsp_t(axi_narrow_out_rsp_t),
  .axi_wide_in_req_t(axi_wide_in_req_t),
  .axi_wide_in_rsp_t(axi_wide_in_rsp_t),
  .axi_wide_out_req_t(axi_wide_out_req_t),
  .axi_wide_out_rsp_t(axi_wide_out_rsp_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t),
  .floo_wide_t(floo_wide_t)
) peripherals_ni (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .sram_cfg_i ( '0 ),
  .axi_narrow_in_req_i  ( peripherals_narrow_in_req_i ),
  .axi_narrow_in_rsp_o  ( peripherals_narrow_in_rsp_o ),
  .axi_narrow_out_req_o ( peripherals_narrow_out_req_o ),
  .axi_narrow_out_rsp_i ( peripherals_narrow_out_rsp_i ),
  .axi_wide_in_req_i  ( '0 ),
  .axi_wide_in_rsp_o  (    ),
  .axi_wide_out_req_o (    ),
  .axi_wide_out_rsp_i ( '0 ),
  .id_i             ( PERIPHERALS_NI_ID       ),
  .route_table_i    ( '0                          ),
  .floo_req_o       ( peripherals_ni_to_router_req   ),
  .floo_rsp_i       ( router_to_peripherals_ni_rsp   ),
  .floo_wide_o      ( peripherals_ni_to_router_wide  ),
  .floo_req_i       ( router_to_peripherals_ni_req   ),
  .floo_rsp_o       ( peripherals_ni_to_router_rsp   ),
  .floo_wide_i      ( router_to_peripherals_ni_wide  )
);

localparam int unsigned RouterMapNumRules = 4;

typedef struct packed {
    id_t idx;
    id_t start_addr;
    id_t end_addr;
} router_map_rule_t;

localparam router_map_rule_t[RouterMapNumRules-1:0] RouterMap = '{
'{idx: 0, start_addr: 0, end_addr: 1},// cluster_ni
'{idx: 1, start_addr: 1, end_addr: 2},// hbm_ni
'{idx: 2, start_addr: 2, end_addr: 3},// serial_link_ni
'{idx: 4, start_addr: 4, end_addr: 5} // peripherals_ni

};


floo_req_t [4:0] router_req_in;
floo_rsp_t [4:0] router_rsp_out;
floo_req_t [4:0] router_req_out;
floo_rsp_t [4:0] router_rsp_in;
floo_wide_t [4:0] router_wide_in;
floo_wide_t [4:0] router_wide_out;

    assign router_req_in[0] = cluster_ni_to_router_req;
    assign router_req_in[1] = hbm_ni_to_router_req;
    assign router_req_in[2] = serial_link_ni_to_router_req;
    assign router_req_in[3] = cva6_ni_to_router_req;
    assign router_req_in[4] = peripherals_ni_to_router_req;

    assign router_to_cluster_ni_rsp = router_rsp_out[0];
    assign router_to_hbm_ni_rsp = router_rsp_out[1];
    assign router_to_serial_link_ni_rsp = router_rsp_out[2];
    assign router_to_cva6_ni_rsp = router_rsp_out[3];
    assign router_to_peripherals_ni_rsp = router_rsp_out[4];

    assign router_to_cluster_ni_req = router_req_out[0];
    assign router_to_hbm_ni_req = router_req_out[1];
    assign router_to_serial_link_ni_req = router_req_out[2];
    assign router_to_cva6_ni_req = router_req_out[3];
    assign router_to_peripherals_ni_req = router_req_out[4];

    assign router_rsp_in[0] = cluster_ni_to_router_rsp;
    assign router_rsp_in[1] = hbm_ni_to_router_rsp;
    assign router_rsp_in[2] = serial_link_ni_to_router_rsp;
    assign router_rsp_in[3] = cva6_ni_to_router_rsp;
    assign router_rsp_in[4] = peripherals_ni_to_router_rsp;

    assign router_wide_in[0] = cluster_ni_to_router_wide;
    assign router_wide_in[1] = hbm_ni_to_router_wide;
    assign router_wide_in[2] = serial_link_ni_to_router_wide;
    assign router_wide_in[3] = cva6_ni_to_router_wide;
    assign router_wide_in[4] = peripherals_ni_to_router_wide;

    assign router_to_cluster_ni_wide = router_wide_out[0];
    assign router_to_hbm_ni_wide = router_wide_out[1];
    assign router_to_serial_link_ni_wide = router_wide_out[2];
    assign router_to_cva6_ni_wide = router_wide_out[3];
    assign router_to_peripherals_ni_wide = router_wide_out[4];


floo_nw_router #(
  .AxiCfgN(AxiCfgN),
  .AxiCfgW(AxiCfgW),
  .RouteAlgo (IdTable),
  .NumRoutes (5),
  .NumInputs (5),
  .NumOutputs (5),
  .InFifoDepth (2),
  .OutFifoDepth (2),
  .id_t(id_t),
  .hdr_t(hdr_t),
  .NumAddrRules (4),
  .addr_rule_t (router_map_rule_t),
  .floo_req_t(floo_req_t),
  .floo_rsp_t(floo_rsp_t),
  .floo_wide_t(floo_wide_t)
) router (
  .clk_i,
  .rst_ni,
  .test_enable_i,
  .id_i ('0),
  .id_route_map_i (RouterMap),
  .floo_req_i (router_req_in),
  .floo_rsp_o (router_rsp_out),
  .floo_req_o (router_req_out),
  .floo_rsp_i (router_rsp_in),
  .floo_wide_i (router_wide_in),
  .floo_wide_o (router_wide_out)
);



endmodule

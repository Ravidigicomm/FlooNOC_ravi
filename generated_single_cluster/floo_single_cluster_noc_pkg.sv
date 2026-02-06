// Copyright 2025 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51

// AUTOMATICALLY GENERATED! DO NOT EDIT!

`include "./hw/include/floo_noc/typedef.svh"
`include "floo_noc/typedef.svh"

package floo_single_cluster_noc_pkg;

  import floo_pkg::*;

  /////////////////////
  //   Address Map   //
  /////////////////////

  typedef enum logic[2:0] {
    Cluster = 0,
    Hbm = 1,
    SerialLink = 2,
    Cva6 = 3,
    Peripherals = 4,
    NumEndpoints = 5} ep_id_e;



  typedef enum logic[1:0] {
    ClusterSamIdx = 0,
    HbmSamIdx = 1,
    SerialLinkSamIdx = 2,
    PeripheralsSamIdx = 3} sam_idx_e;



  typedef logic[0:0] rob_idx_t;
typedef logic[0:0] port_id_t;
typedef logic[2:0] id_t;
typedef logic route_t;


  localparam int unsigned SamNumRules = 4;

typedef struct packed {
    id_t idx;
    logic [47:0] start_addr;
    logic [47:0] end_addr;
} sam_rule_t;

localparam sam_rule_t[SamNumRules-1:0] Sam = '{
'{idx: 4, start_addr: 48'h000000000000, end_addr: 48'h00000fffffff},// peripherals_sam_idx
'{idx: 2, start_addr: 48'h010000000000, end_addr: 48'h010100000000},// serial_link_sam_idx
'{idx: 1, start_addr: 48'h001000000000, end_addr: 48'h001040000000},// hbm_sam_idx
'{idx: 0, start_addr: 48'h000010000000, end_addr: 48'h000010040000} // cluster_sam_idx

};



  localparam route_cfg_t RouteCfg = '{    RouteAlgo: IdTable,
    UseIdTable: 1'b1,
    XYAddrOffsetX: 0,
    XYAddrOffsetY: 0,
    IdAddrOffset: 0,
    NumSamRules: 4,
    NumRoutes: 0};


  typedef logic[47:0] axi_narrow_in_addr_t;
typedef logic[63:0] axi_narrow_in_data_t;
typedef logic[7:0] axi_narrow_in_strb_t;
typedef logic[3:0] axi_narrow_in_id_t;
typedef logic[0:0] axi_narrow_in_user_t;
`AXI_TYPEDEF_ALL_CT(axi_narrow_in,             axi_narrow_in_req_t,             axi_narrow_in_rsp_t,             axi_narrow_in_addr_t,             axi_narrow_in_id_t,             axi_narrow_in_data_t,             axi_narrow_in_strb_t,             axi_narrow_in_user_t)


  typedef logic[47:0] axi_narrow_out_addr_t;
typedef logic[63:0] axi_narrow_out_data_t;
typedef logic[7:0] axi_narrow_out_strb_t;
typedef logic[1:0] axi_narrow_out_id_t;
typedef logic[0:0] axi_narrow_out_user_t;
`AXI_TYPEDEF_ALL_CT(axi_narrow_out,             axi_narrow_out_req_t,             axi_narrow_out_rsp_t,             axi_narrow_out_addr_t,             axi_narrow_out_id_t,             axi_narrow_out_data_t,             axi_narrow_out_strb_t,             axi_narrow_out_user_t)


  typedef logic[47:0] axi_wide_in_addr_t;
typedef logic[511:0] axi_wide_in_data_t;
typedef logic[63:0] axi_wide_in_strb_t;
typedef logic[2:0] axi_wide_in_id_t;
typedef logic[0:0] axi_wide_in_user_t;
`AXI_TYPEDEF_ALL_CT(axi_wide_in,             axi_wide_in_req_t,             axi_wide_in_rsp_t,             axi_wide_in_addr_t,             axi_wide_in_id_t,             axi_wide_in_data_t,             axi_wide_in_strb_t,             axi_wide_in_user_t)


  typedef logic[47:0] axi_wide_out_addr_t;
typedef logic[511:0] axi_wide_out_data_t;
typedef logic[63:0] axi_wide_out_strb_t;
typedef logic[0:0] axi_wide_out_id_t;
typedef logic[0:0] axi_wide_out_user_t;
`AXI_TYPEDEF_ALL_CT(axi_wide_out,             axi_wide_out_req_t,             axi_wide_out_rsp_t,             axi_wide_out_addr_t,             axi_wide_out_id_t,             axi_wide_out_data_t,             axi_wide_out_strb_t,             axi_wide_out_user_t)



  `FLOO_TYPEDEF_HDR_T(hdr_t, id_t, id_t, nw_ch_e, rob_idx_t)
  localparam axi_cfg_t AxiCfgN = '{    AddrWidth: 48,
    DataWidth: 64,
    UserWidth: 1,
    InIdWidth: 4,
    OutIdWidth: 2};
localparam axi_cfg_t AxiCfgW = '{    AddrWidth: 48,
    DataWidth: 512,
    UserWidth: 1,
    InIdWidth: 3,
    OutIdWidth: 1};
`FLOO_TYPEDEF_NW_CHAN_ALL(axi, req, rsp, wide,             axi_narrow_in, axi_wide_in, AxiCfgN, AxiCfgW, hdr_t)

`FLOO_TYPEDEF_NW_LINK_ALL(req, rsp, wide, req, rsp, wide)


endpackage

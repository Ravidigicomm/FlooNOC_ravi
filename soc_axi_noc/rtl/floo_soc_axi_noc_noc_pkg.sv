// Copyright 2026 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51

// AUTOMATICALLY GENERATED! DO NOT EDIT!

`include "axi/typedef.svh"
`include "floo_noc/typedef.svh"

package floo_soc_axi_noc_noc_pkg;

  import floo_pkg::*;

  /////////////////////
  //   Address Map   //
  /////////////////////

  typedef enum logic[3:0] {
    Cpu = 0,
    Gpu = 1,
    SystemDma = 2,
    Ethernet = 3,
    ApbCtrl = 4,
    Ddr = 5,
    L3Cache = 6,
    Pcie = 7,
    Npu = 8,
    Nand = 9,
    Sram = 10,
    Camera = 11,
    NetworkCtrl = 12,
    ApbGroup1 = 13,
    ApbGroup2 = 14,
    NumEndpoints = 15} ep_id_e;



  typedef enum logic[3:0] {
    DdrSamIdx = 0,
    L3CacheSamIdx = 1,
    PcieSamIdx = 2,
    NpuSamIdx = 3,
    NandSamIdx = 4,
    SramSamIdx = 5,
    CameraSamIdx = 6,
    NetworkCtrlSamIdx = 7,
    ApbGroup1SamIdx = 8,
    ApbGroup2SamIdx = 9} sam_idx_e;



  typedef logic[0:0] rob_idx_t;
typedef logic[0:0] port_id_t;
typedef logic[3:0] id_t;
typedef logic route_t;


  localparam int unsigned SamNumRules = 10;

typedef struct packed {
    id_t idx;
    logic [47:0] start_addr;
    logic [47:0] end_addr;
} sam_rule_t;

localparam sam_rule_t[SamNumRules-1:0] Sam = '{
'{    idx: 14,
    start_addr: 48'h000010000000,
    end_addr: 48'h00001fffffff},// ApbGroup2
'{    idx: 13,
    start_addr: 48'h000000000000,
    end_addr: 48'h00000fffffff},// ApbGroup1
'{    idx: 12,
    start_addr: 48'h100000000000,
    end_addr: 48'h100001000000},// NetworkCtrl
'{    idx: 11,
    start_addr: 48'h200000000000,
    end_addr: 48'h200001000000},// Camera
'{    idx: 10,
    start_addr: 48'h300000000000,
    end_addr: 48'h300001000000},// Sram
'{    idx: 9,
    start_addr: 48'h400000000000,
    end_addr: 48'h400001000000},// Nand
'{    idx: 8,
    start_addr: 48'h500000000000,
    end_addr: 48'h500010000000},// Npu
'{    idx: 7,
    start_addr: 48'h600000000000,
    end_addr: 48'h600010000000},// Pcie
'{    idx: 6,
    start_addr: 48'h700000000000,
    end_addr: 48'h700010000000},// L3Cache
'{    idx: 5,
    start_addr: 48'h800000000000,
    end_addr: 48'h800100000000} // Ddr

};



  localparam route_cfg_t RouteCfg = '{    RouteAlgo: IdTable,
    UseIdTable: 1'b1,
    XYAddrOffsetX: 0,
    XYAddrOffsetY: 0,
    IdAddrOffset: 0,
    NumSamRules: 10,
    NumRoutes: 0,
    EnMultiCast: 1'b0,
    EnParallelReduction: 1'b0,
    EnNarrowOffloadReduction: 1'b0,
    EnWideOffloadReduction: 1'b0};


    typedef logic[47:0] axi_axi_m_addr_t;
typedef logic[127:0] axi_axi_m_data_t;
typedef logic[15:0] axi_axi_m_strb_t;
typedef logic[3:0] axi_axi_m_id_t;
typedef logic[0:0] axi_axi_m_user_t;
`AXI_TYPEDEF_ALL_CT(axi_axi_m,             axi_axi_m_req_t,             axi_axi_m_rsp_t,             axi_axi_m_addr_t,             axi_axi_m_id_t,             axi_axi_m_data_t,             axi_axi_m_strb_t,             axi_axi_m_user_t)


    typedef logic[47:0] axi_axi_s_addr_t;
typedef logic[127:0] axi_axi_s_data_t;
typedef logic[15:0] axi_axi_s_strb_t;
typedef logic[3:0] axi_axi_s_id_t;
typedef logic[0:0] axi_axi_s_user_t;
`AXI_TYPEDEF_ALL_CT(axi_axi_s,             axi_axi_s_req_t,             axi_axi_s_rsp_t,             axi_axi_s_addr_t,             axi_axi_s_id_t,             axi_axi_s_data_t,             axi_axi_s_strb_t,             axi_axi_s_user_t)



  `FLOO_TYPEDEF_HDR_T(hdr_t, id_t, id_t, axi_ch_e, rob_idx_t)
  localparam axi_cfg_t AxiCfg = '{    AddrWidth: 48,
    DataWidth: 128,
    InIdWidth: 4,
    OutIdWidth: 4,
    UserWidth: 1};
`FLOO_TYPEDEF_AXI_CHAN_ALL(axi, req, rsp, axi_axi_m, AxiCfg, hdr_t)

`FLOO_TYPEDEF_AXI_LINK_ALL(req, rsp, req, rsp)


endpackage

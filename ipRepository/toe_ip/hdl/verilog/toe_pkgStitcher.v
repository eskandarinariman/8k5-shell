// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_pkgStitcher (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng_tcpPkgBuffer2_V_dout,
        txEng_tcpPkgBuffer2_V_empty_n,
        txEng_tcpPkgBuffer2_V_read,
        txEng_tcpChecksumFifo_V_V_dout,
        txEng_tcpChecksumFifo_V_V_empty_n,
        txEng_tcpChecksumFifo_V_V_read,
        txEng_ipHeaderBuffer_V_dout,
        txEng_ipHeaderBuffer_V_empty_n,
        txEng_ipHeaderBuffer_V_read,
        ipTxDataOut_V_din,
        ipTxDataOut_V_full_n,
        ipTxDataOut_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv3_3 = 3'b11;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv32_48 = 32'b1001000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv3_5 = 3'b101;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv9_FF = 9'b11111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [72:0] txEng_tcpPkgBuffer2_V_dout;
input   txEng_tcpPkgBuffer2_V_empty_n;
output   txEng_tcpPkgBuffer2_V_read;
input  [15:0] txEng_tcpChecksumFifo_V_V_dout;
input   txEng_tcpChecksumFifo_V_V_empty_n;
output   txEng_tcpChecksumFifo_V_V_read;
input  [72:0] txEng_ipHeaderBuffer_V_dout;
input   txEng_ipHeaderBuffer_V_empty_n;
output   txEng_ipHeaderBuffer_V_read;
output  [72:0] ipTxDataOut_V_din;
input   ipTxDataOut_V_full_n;
output   ipTxDataOut_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng_tcpPkgBuffer2_V_read;
reg txEng_tcpChecksumFifo_V_V_read;
reg txEng_ipHeaderBuffer_V_read;
reg[72:0] ipTxDataOut_V_din;
reg ipTxDataOut_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] grp_nbreadreq_fu_124_p3;
wire   [0:0] tmp_74_nbreadreq_fu_132_p3;
wire   [0:0] grp_nbreadreq_fu_152_p3;
reg    ap_sig_bdd_106;
reg   [2:0] ps_wordCount_V_1_load_reg_321;
reg   [0:0] tmp_171_reg_325;
reg   [0:0] tmp_74_reg_329;
reg   [0:0] tmp_170_reg_343;
reg   [0:0] tmp_169_reg_347;
reg   [0:0] tmp_172_reg_351;
reg   [0:0] tmp_168_reg_365;
reg   [0:0] tmp_reg_374;
reg    ap_sig_bdd_167;
reg   [2:0] ps_wordCount_V_1 = 3'b000;
reg   [72:0] reg_182;
wire   [63:0] p_Result_s_263_fu_221_p5;
reg   [63:0] p_Result_s_263_reg_333;
reg   [8:0] tmp_202_reg_338;
wire   [31:0] tmp_666_fu_263_p1;
reg   [31:0] tmp_666_reg_355;
reg   [31:0] p_Result_s_reg_360;
reg   [72:0] tmp1_reg_369;
wire   [0:0] grp_fu_174_p3;
wire   [72:0] tmp_8_fu_305_p3;
wire   [72:0] tmp_4_fu_312_p4;
wire   [2:0] p_tmp_s_fu_243_p3;
wire   [2:0] tmp_cast_fu_289_p1;
wire   [7:0] tmp_669_fu_209_p1;
wire   [7:0] p_Result_49_fu_199_p4;
wire   [63:0] p_Val2_46_fu_195_p1;
wire   [15:0] tmp_201_fu_213_p3;
wire   [1:0] tmp_664_fu_191_p1;
wire   [1:0] tmp_s_fu_283_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_52;
reg    ap_sig_bdd_62;
reg    ap_sig_bdd_75;
reg    ap_sig_bdd_84;
reg    ap_sig_bdd_237;
reg    ap_sig_bdd_174;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_174) begin
        if (ap_sig_bdd_237) begin
            ps_wordCount_V_1 <= ap_const_lv3_0;
        end else if (ap_sig_bdd_84) begin
            ps_wordCount_V_1 <= tmp_cast_fu_289_p1;
        end else if (ap_sig_bdd_75) begin
            ps_wordCount_V_1 <= ap_const_lv3_3;
        end else if (ap_sig_bdd_62) begin
            ps_wordCount_V_1 <= ap_const_lv3_4;
        end else if (ap_sig_bdd_52) begin
            ps_wordCount_V_1 <= p_tmp_s_fu_243_p3;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_74_nbreadreq_fu_132_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Result_s_263_reg_333 <= p_Result_s_263_fu_221_p5;
        tmp_202_reg_338 <= {{txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48 : ap_const_lv32_40]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Result_s_reg_360 <= {{txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_3F : ap_const_lv32_20]}};
        tmp_666_reg_355 <= tmp_666_fu_263_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ps_wordCount_V_1_load_reg_321 <= ps_wordCount_V_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        reg_182 <= txEng_tcpPkgBuffer2_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & (ps_wordCount_V_1 == ap_const_lv3_0))) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp1_reg_369 <= txEng_ipHeaderBuffer_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ((ps_wordCount_V_1 == ap_const_lv3_1) | (ps_wordCount_V_1 == ap_const_lv3_0)))) begin
        tmp_168_reg_365 <= grp_nbreadreq_fu_152_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_169_reg_347 <= grp_nbreadreq_fu_152_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_170_reg_343 <= grp_nbreadreq_fu_124_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_171_reg_325 <= grp_nbreadreq_fu_124_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_172_reg_351 <= grp_nbreadreq_fu_124_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_74_reg_329 <= tmp_74_nbreadreq_fu_132_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_374 <= grp_nbreadreq_fu_124_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_167)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_167)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// ipTxDataOut_V_din assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ps_wordCount_V_1_load_reg_321 or tmp_171_reg_325 or tmp_74_reg_329 or tmp_170_reg_343 or tmp_169_reg_347 or tmp_172_reg_351 or tmp_168_reg_365 or tmp_reg_374 or ap_sig_bdd_167 or reg_182 or tmp1_reg_369 or tmp_8_fu_305_p3 or tmp_4_fu_312_p4)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_168_reg_365)) | (~(ap_const_lv1_0 == tmp_168_reg_365) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_321))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipTxDataOut_V_din = tmp1_reg_369;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_169_reg_347) & ~(ap_const_lv1_0 == tmp_172_reg_351) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipTxDataOut_V_din = tmp_4_fu_312_p4;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_170_reg_343) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_reg_374) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ipTxDataOut_V_din = reg_182;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_171_reg_325) & ~(ap_const_lv1_0 == tmp_74_reg_329) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipTxDataOut_V_din = tmp_8_fu_305_p3;
    end else begin
        ipTxDataOut_V_din = 'bx;
    end
end

/// ipTxDataOut_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ps_wordCount_V_1_load_reg_321 or tmp_171_reg_325 or tmp_74_reg_329 or tmp_170_reg_343 or tmp_169_reg_347 or tmp_172_reg_351 or tmp_168_reg_365 or tmp_reg_374 or ap_sig_bdd_167)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_171_reg_325) & ~(ap_const_lv1_0 == tmp_74_reg_329) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_170_reg_343) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_169_reg_347) & ~(ap_const_lv1_0 == tmp_172_reg_351) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_168_reg_365)) | (~(ap_const_lv1_0 == tmp_168_reg_365) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_321))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_reg_374) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ipTxDataOut_V_write = ap_const_logic_1;
    end else begin
        ipTxDataOut_V_write = ap_const_logic_0;
    end
end

/// txEng_ipHeaderBuffer_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_124_p3 or grp_nbreadreq_fu_152_p3 or ap_sig_bdd_106 or ap_sig_bdd_167 or ps_wordCount_V_1)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & (ps_wordCount_V_1 == ap_const_lv3_0))) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txEng_ipHeaderBuffer_V_read = ap_const_logic_1;
    end else begin
        txEng_ipHeaderBuffer_V_read = ap_const_logic_0;
    end
end

/// txEng_tcpChecksumFifo_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_124_p3 or tmp_74_nbreadreq_fu_132_p3 or ap_sig_bdd_106 or ap_sig_bdd_167 or ps_wordCount_V_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_74_nbreadreq_fu_132_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txEng_tcpChecksumFifo_V_V_read = ap_const_logic_1;
    end else begin
        txEng_tcpChecksumFifo_V_V_read = ap_const_logic_0;
    end
end

/// txEng_tcpPkgBuffer2_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_124_p3 or tmp_74_nbreadreq_fu_132_p3 or grp_nbreadreq_fu_152_p3 or ap_sig_bdd_106 or ap_sig_bdd_167 or ps_wordCount_V_1)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_74_nbreadreq_fu_132_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txEng_tcpPkgBuffer2_V_read = ap_const_logic_1;
    end else begin
        txEng_tcpPkgBuffer2_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_167 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_106 assign process. ///
always @ (ap_start or ap_done_reg or txEng_tcpPkgBuffer2_V_empty_n or grp_nbreadreq_fu_124_p3 or tmp_74_nbreadreq_fu_132_p3 or txEng_tcpChecksumFifo_V_V_empty_n or txEng_ipHeaderBuffer_V_empty_n or grp_nbreadreq_fu_152_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_106 = (((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_74_nbreadreq_fu_132_p3)) | ((ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_74_nbreadreq_fu_132_p3) & (txEng_tcpChecksumFifo_V_V_empty_n == ap_const_logic_0)) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3)) | (~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (txEng_ipHeaderBuffer_V_empty_n == ap_const_logic_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3)) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3)) | ((txEng_ipHeaderBuffer_V_empty_n == ap_const_logic_0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & (ps_wordCount_V_1 == ap_const_lv3_0)))) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_167 assign process. ///
always @ (ipTxDataOut_V_full_n or ps_wordCount_V_1_load_reg_321 or tmp_171_reg_325 or tmp_74_reg_329 or tmp_170_reg_343 or tmp_169_reg_347 or tmp_172_reg_351 or tmp_168_reg_365 or tmp_reg_374)
begin
    ap_sig_bdd_167 = (((ipTxDataOut_V_full_n == ap_const_logic_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_171_reg_325) & ~(ap_const_lv1_0 == tmp_74_reg_329)) | ((ipTxDataOut_V_full_n == ap_const_logic_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_170_reg_343)) | ((ipTxDataOut_V_full_n == ap_const_logic_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_169_reg_347) & ~(ap_const_lv1_0 == tmp_172_reg_351)) | ((ipTxDataOut_V_full_n == ap_const_logic_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_168_reg_365)) | (~(ap_const_lv1_0 == tmp_168_reg_365) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_321)))) | ((ipTxDataOut_V_full_n == ap_const_logic_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_321) & ~(ap_const_lv1_0 == tmp_reg_374)));
end

/// ap_sig_bdd_174 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_167)
begin
    ap_sig_bdd_174 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_167 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_237 assign process. ///
always @ (grp_nbreadreq_fu_124_p3 or ps_wordCount_V_1 or grp_fu_174_p3)
begin
    ap_sig_bdd_237 = (~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~(ap_const_lv1_0 == grp_fu_174_p3));
end

/// ap_sig_bdd_52 assign process. ///
always @ (grp_nbreadreq_fu_124_p3 or tmp_74_nbreadreq_fu_132_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_52 = ((ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_74_nbreadreq_fu_132_p3));
end

/// ap_sig_bdd_62 assign process. ///
always @ (grp_nbreadreq_fu_124_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_62 = (~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3));
end

/// ap_sig_bdd_75 assign process. ///
always @ (grp_nbreadreq_fu_124_p3 or grp_nbreadreq_fu_152_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_75 = (~(grp_nbreadreq_fu_124_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3));
end

/// ap_sig_bdd_84 assign process. ///
always @ (grp_nbreadreq_fu_152_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_84 = ((~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_152_p3) & (ps_wordCount_V_1 == ap_const_lv3_0)));
end
assign grp_fu_174_p3 = txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
assign grp_nbreadreq_fu_124_p3 = txEng_tcpPkgBuffer2_V_empty_n;
assign grp_nbreadreq_fu_152_p3 = txEng_ipHeaderBuffer_V_empty_n;
assign p_Result_49_fu_199_p4 = {{txEng_tcpChecksumFifo_V_V_dout[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_s_263_fu_221_p5 = {{p_Val2_46_fu_195_p1[32'd63 : 32'd48]}, {tmp_201_fu_213_p3}, {p_Val2_46_fu_195_p1[32'd31 : 32'd0]}};
assign p_Val2_46_fu_195_p1 = txEng_tcpPkgBuffer2_V_dout[63:0];
assign p_tmp_s_fu_243_p3 = ((grp_fu_174_p3[0:0]===1'b1)? ap_const_lv3_0: ap_const_lv3_5);
assign tmp_201_fu_213_p3 = {{tmp_669_fu_209_p1}, {p_Result_49_fu_199_p4}};
assign tmp_4_fu_312_p4 = {{{{ap_const_lv9_FF}, {p_Result_s_reg_360}}}, {tmp_666_reg_355}};
assign tmp_664_fu_191_p1 = ps_wordCount_V_1[1:0];
assign tmp_666_fu_263_p1 = txEng_ipHeaderBuffer_V_dout[31:0];
assign tmp_669_fu_209_p1 = txEng_tcpChecksumFifo_V_V_dout[7:0];
assign tmp_74_nbreadreq_fu_132_p3 = txEng_tcpChecksumFifo_V_V_empty_n;
assign tmp_8_fu_305_p3 = {{tmp_202_reg_338}, {p_Result_s_263_reg_333}};
assign tmp_cast_fu_289_p1 = tmp_s_fu_283_p2;
assign tmp_s_fu_283_p2 = (tmp_664_fu_191_p1 + ap_const_lv2_1);


endmodule //toe_pkgStitcher

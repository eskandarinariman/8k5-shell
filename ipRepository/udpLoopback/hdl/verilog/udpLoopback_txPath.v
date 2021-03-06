// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module udpLoopback_txPath (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        lbTxDataOut_V_data_V_din,
        lbTxDataOut_V_data_V_full_n,
        lbTxDataOut_V_data_V_write,
        lbTxDataOut_V_keep_V_din,
        lbTxDataOut_V_keep_V_full_n,
        lbTxDataOut_V_keep_V_write,
        lbTxDataOut_V_last_V_din,
        lbTxDataOut_V_last_V_full_n,
        lbTxDataOut_V_last_V_write,
        lbTxMetadataOut_V_din,
        lbTxMetadataOut_V_full_n,
        lbTxMetadataOut_V_write,
        lbTxLengthOut_V_V_din,
        lbTxLengthOut_V_V_full_n,
        lbTxLengthOut_V_V_write,
        lb_packetBuffer_V_dout,
        lb_packetBuffer_V_empty_n,
        lb_packetBuffer_V_read,
        lb_metadataBuffer_V_sourceSock_dout,
        lb_metadataBuffer_V_sourceSock_empty_n,
        lb_metadataBuffer_V_sourceSock_read,
        lb_metadataBuffer_V_sourceSock_1_dout,
        lb_metadataBuffer_V_sourceSock_1_empty_n,
        lb_metadataBuffer_V_sourceSock_1_read,
        lb_metadataBuffer_V_destinatio_dout,
        lb_metadataBuffer_V_destinatio_empty_n,
        lb_metadataBuffer_V_destinatio_read,
        lb_metadataBuffer_V_destinatio_1_dout,
        lb_metadataBuffer_V_destinatio_1_empty_n,
        lb_metadataBuffer_V_destinatio_1_read,
        lb_lengthBuffer_V_V_dout,
        lb_lengthBuffer_V_V_empty_n,
        lb_lengthBuffer_V_V_read
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv32_47 = 32'b1000111;
parameter    ap_const_lv32_48 = 32'b1001000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [63:0] lbTxDataOut_V_data_V_din;
input   lbTxDataOut_V_data_V_full_n;
output   lbTxDataOut_V_data_V_write;
output  [7:0] lbTxDataOut_V_keep_V_din;
input   lbTxDataOut_V_keep_V_full_n;
output   lbTxDataOut_V_keep_V_write;
output  [0:0] lbTxDataOut_V_last_V_din;
input   lbTxDataOut_V_last_V_full_n;
output   lbTxDataOut_V_last_V_write;
output  [95:0] lbTxMetadataOut_V_din;
input   lbTxMetadataOut_V_full_n;
output   lbTxMetadataOut_V_write;
output  [15:0] lbTxLengthOut_V_V_din;
input   lbTxLengthOut_V_V_full_n;
output   lbTxLengthOut_V_V_write;
input  [72:0] lb_packetBuffer_V_dout;
input   lb_packetBuffer_V_empty_n;
output   lb_packetBuffer_V_read;
input  [15:0] lb_metadataBuffer_V_sourceSock_dout;
input   lb_metadataBuffer_V_sourceSock_empty_n;
output   lb_metadataBuffer_V_sourceSock_read;
input  [31:0] lb_metadataBuffer_V_sourceSock_1_dout;
input   lb_metadataBuffer_V_sourceSock_1_empty_n;
output   lb_metadataBuffer_V_sourceSock_1_read;
input  [15:0] lb_metadataBuffer_V_destinatio_dout;
input   lb_metadataBuffer_V_destinatio_empty_n;
output   lb_metadataBuffer_V_destinatio_read;
input  [31:0] lb_metadataBuffer_V_destinatio_1_dout;
input   lb_metadataBuffer_V_destinatio_1_empty_n;
output   lb_metadataBuffer_V_destinatio_1_read;
input  [15:0] lb_lengthBuffer_V_V_dout;
input   lb_lengthBuffer_V_V_empty_n;
output   lb_lengthBuffer_V_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg lbTxMetadataOut_V_write;
reg lbTxLengthOut_V_V_write;
reg lb_packetBuffer_V_read;
reg lb_lengthBuffer_V_V_read;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_20;
wire   [0:0] tmp_nbreadreq_fu_144_p3;
wire   [0:0] tmp_11_nbwritereq_fu_152_p5;
wire    lbTxDataOut_V_data_V1_status;
wire    lb_metadataBuffer_V_sourceSock0_status;
wire   [0:0] tmp_12_nbreadreq_fu_183_p6;
wire   [0:0] tmp_13_nbwritereq_fu_197_p3;
wire   [0:0] tmp_30_nbreadreq_fu_224_p3;
wire   [0:0] tmp_31_nbwritereq_fu_232_p3;
reg    ap_sig_bdd_118;
reg    lbTxDataOut_V_data_V1_update;
reg    lb_metadataBuffer_V_sourceSock0_update;
reg   [0:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_118)) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_118)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_118))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_118)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_118)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// lbTxDataOut_V_data_V1_update assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_nbreadreq_fu_144_p3 or tmp_11_nbwritereq_fu_152_p5 or ap_sig_bdd_118)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbreadreq_fu_144_p3 == ap_const_lv1_0) & ~(tmp_11_nbwritereq_fu_152_p5 == ap_const_lv1_0) & ~ap_sig_bdd_118)) begin
        lbTxDataOut_V_data_V1_update = ap_const_logic_1;
    end else begin
        lbTxDataOut_V_data_V1_update = ap_const_logic_0;
    end
end

/// lbTxLengthOut_V_V_write assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_30_nbreadreq_fu_224_p3 or tmp_31_nbwritereq_fu_232_p3 or ap_sig_bdd_118)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == tmp_30_nbreadreq_fu_224_p3) & ~(ap_const_lv1_0 == tmp_31_nbwritereq_fu_232_p3) & ~ap_sig_bdd_118)) begin
        lbTxLengthOut_V_V_write = ap_const_logic_1;
    end else begin
        lbTxLengthOut_V_V_write = ap_const_logic_0;
    end
end

/// lbTxMetadataOut_V_write assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_12_nbreadreq_fu_183_p6 or tmp_13_nbwritereq_fu_197_p3 or ap_sig_bdd_118)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == tmp_12_nbreadreq_fu_183_p6) & ~(ap_const_lv1_0 == tmp_13_nbwritereq_fu_197_p3) & ~ap_sig_bdd_118)) begin
        lbTxMetadataOut_V_write = ap_const_logic_1;
    end else begin
        lbTxMetadataOut_V_write = ap_const_logic_0;
    end
end

/// lb_lengthBuffer_V_V_read assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_30_nbreadreq_fu_224_p3 or tmp_31_nbwritereq_fu_232_p3 or ap_sig_bdd_118)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == tmp_30_nbreadreq_fu_224_p3) & ~(ap_const_lv1_0 == tmp_31_nbwritereq_fu_232_p3) & ~ap_sig_bdd_118)) begin
        lb_lengthBuffer_V_V_read = ap_const_logic_1;
    end else begin
        lb_lengthBuffer_V_V_read = ap_const_logic_0;
    end
end

/// lb_metadataBuffer_V_sourceSock0_update assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_12_nbreadreq_fu_183_p6 or tmp_13_nbwritereq_fu_197_p3 or ap_sig_bdd_118)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == tmp_12_nbreadreq_fu_183_p6) & ~(ap_const_lv1_0 == tmp_13_nbwritereq_fu_197_p3) & ~ap_sig_bdd_118)) begin
        lb_metadataBuffer_V_sourceSock0_update = ap_const_logic_1;
    end else begin
        lb_metadataBuffer_V_sourceSock0_update = ap_const_logic_0;
    end
end

/// lb_packetBuffer_V_read assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_nbreadreq_fu_144_p3 or tmp_11_nbwritereq_fu_152_p5 or ap_sig_bdd_118)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbreadreq_fu_144_p3 == ap_const_lv1_0) & ~(tmp_11_nbwritereq_fu_152_p5 == ap_const_lv1_0) & ~ap_sig_bdd_118)) begin
        lb_packetBuffer_V_read = ap_const_logic_1;
    end else begin
        lb_packetBuffer_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_118)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_118 assign process. ///
always @ (ap_start or ap_done_reg or lbTxMetadataOut_V_full_n or lbTxLengthOut_V_V_full_n or lb_packetBuffer_V_empty_n or lb_lengthBuffer_V_V_empty_n or tmp_nbreadreq_fu_144_p3 or tmp_11_nbwritereq_fu_152_p5 or lbTxDataOut_V_data_V1_status or lb_metadataBuffer_V_sourceSock0_status or tmp_12_nbreadreq_fu_183_p6 or tmp_13_nbwritereq_fu_197_p3 or tmp_30_nbreadreq_fu_224_p3 or tmp_31_nbwritereq_fu_232_p3)
begin
    ap_sig_bdd_118 = (((lb_packetBuffer_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_144_p3 == ap_const_lv1_0) & ~(tmp_11_nbwritereq_fu_152_p5 == ap_const_lv1_0)) | (~(tmp_nbreadreq_fu_144_p3 == ap_const_lv1_0) & ~(tmp_11_nbwritereq_fu_152_p5 == ap_const_lv1_0) & (lbTxDataOut_V_data_V1_status == ap_const_logic_0)) | ((lb_metadataBuffer_V_sourceSock0_status == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_12_nbreadreq_fu_183_p6) & ~(ap_const_lv1_0 == tmp_13_nbwritereq_fu_197_p3)) | (~(ap_const_lv1_0 == tmp_12_nbreadreq_fu_183_p6) & ~(ap_const_lv1_0 == tmp_13_nbwritereq_fu_197_p3) & (lbTxMetadataOut_V_full_n == ap_const_logic_0)) | ((lb_lengthBuffer_V_V_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_30_nbreadreq_fu_224_p3) & ~(ap_const_lv1_0 == tmp_31_nbwritereq_fu_232_p3)) | (~(ap_const_lv1_0 == tmp_30_nbreadreq_fu_224_p3) & ~(ap_const_lv1_0 == tmp_31_nbwritereq_fu_232_p3) & (lbTxLengthOut_V_V_full_n == ap_const_logic_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end
assign lbTxDataOut_V_data_V1_status = (lbTxDataOut_V_data_V_full_n & lbTxDataOut_V_keep_V_full_n & lbTxDataOut_V_last_V_full_n);
assign lbTxDataOut_V_data_V_din = lb_packetBuffer_V_dout[63:0];
assign lbTxDataOut_V_data_V_write = lbTxDataOut_V_data_V1_update;
assign lbTxDataOut_V_keep_V_din = {{lb_packetBuffer_V_dout[ap_const_lv32_47 : ap_const_lv32_40]}};
assign lbTxDataOut_V_keep_V_write = lbTxDataOut_V_data_V1_update;
assign lbTxDataOut_V_last_V_din = lb_packetBuffer_V_dout[ap_const_lv32_48];
assign lbTxDataOut_V_last_V_write = lbTxDataOut_V_data_V1_update;
assign lbTxLengthOut_V_V_din = lb_lengthBuffer_V_V_dout;
assign lbTxMetadataOut_V_din = {{{{lb_metadataBuffer_V_destinatio_1_dout}, {lb_metadataBuffer_V_destinatio_dout}}, {lb_metadataBuffer_V_sourceSock_1_dout}}, {lb_metadataBuffer_V_sourceSock_dout}};
assign lb_metadataBuffer_V_destinatio_1_read = lb_metadataBuffer_V_sourceSock0_update;
assign lb_metadataBuffer_V_destinatio_read = lb_metadataBuffer_V_sourceSock0_update;
assign lb_metadataBuffer_V_sourceSock0_status = (lb_metadataBuffer_V_sourceSock_empty_n & lb_metadataBuffer_V_sourceSock_1_empty_n & lb_metadataBuffer_V_destinatio_empty_n & lb_metadataBuffer_V_destinatio_1_empty_n);
assign lb_metadataBuffer_V_sourceSock_1_read = lb_metadataBuffer_V_sourceSock0_update;
assign lb_metadataBuffer_V_sourceSock_read = lb_metadataBuffer_V_sourceSock0_update;
assign tmp_11_nbwritereq_fu_152_p5 = (lbTxDataOut_V_data_V_full_n & lbTxDataOut_V_keep_V_full_n & lbTxDataOut_V_last_V_full_n);
assign tmp_12_nbreadreq_fu_183_p6 = (lb_metadataBuffer_V_sourceSock_empty_n & lb_metadataBuffer_V_sourceSock_1_empty_n & lb_metadataBuffer_V_destinatio_empty_n & lb_metadataBuffer_V_destinatio_1_empty_n);
assign tmp_13_nbwritereq_fu_197_p3 = lbTxMetadataOut_V_full_n;
assign tmp_30_nbreadreq_fu_224_p3 = lb_lengthBuffer_V_V_empty_n;
assign tmp_31_nbwritereq_fu_232_p3 = lbTxLengthOut_V_V_full_n;
assign tmp_nbreadreq_fu_144_p3 = lb_packetBuffer_V_empty_n;


endmodule //udpLoopback_txPath


// sw_qsys_mm_interconnect_0.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 15.0 145

`timescale 1 ps / 1 ps
module sw_qsys_mm_interconnect_0 (
		input  wire        altpll_0_c0_clk,                                     //                                   altpll_0_c0.clk
		input  wire        SW_Wrapper_0_reset_sink_reset_bridge_in_reset_reset, // SW_Wrapper_0_reset_sink_reset_bridge_in_reset.reset
		input  wire [4:0]  SW_Wrapper_0_avalon_master_0_address,                //                  SW_Wrapper_0_avalon_master_0.address
		output wire        SW_Wrapper_0_avalon_master_0_waitrequest,            //                                              .waitrequest
		input  wire        SW_Wrapper_0_avalon_master_0_read,                   //                                              .read
		output wire [31:0] SW_Wrapper_0_avalon_master_0_readdata,               //                                              .readdata
		input  wire        SW_Wrapper_0_avalon_master_0_write,                  //                                              .write
		input  wire [31:0] SW_Wrapper_0_avalon_master_0_writedata,              //                                              .writedata
		output wire [2:0]  uart_0_s1_address,                                   //                                     uart_0_s1.address
		output wire        uart_0_s1_write,                                     //                                              .write
		output wire        uart_0_s1_read,                                      //                                              .read
		input  wire [15:0] uart_0_s1_readdata,                                  //                                              .readdata
		output wire [15:0] uart_0_s1_writedata,                                 //                                              .writedata
		output wire        uart_0_s1_begintransfer,                             //                                              .begintransfer
		output wire        uart_0_s1_chipselect                                 //                                              .chipselect
	);

	wire         sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_waitrequest;   // uart_0_s1_translator:uav_waitrequest -> SW_Wrapper_0_avalon_master_0_translator:uav_waitrequest
	wire  [31:0] sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_readdata;      // uart_0_s1_translator:uav_readdata -> SW_Wrapper_0_avalon_master_0_translator:uav_readdata
	wire         sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_debugaccess;   // SW_Wrapper_0_avalon_master_0_translator:uav_debugaccess -> uart_0_s1_translator:uav_debugaccess
	wire   [4:0] sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_address;       // SW_Wrapper_0_avalon_master_0_translator:uav_address -> uart_0_s1_translator:uav_address
	wire         sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_read;          // SW_Wrapper_0_avalon_master_0_translator:uav_read -> uart_0_s1_translator:uav_read
	wire   [3:0] sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_byteenable;    // SW_Wrapper_0_avalon_master_0_translator:uav_byteenable -> uart_0_s1_translator:uav_byteenable
	wire         sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_readdatavalid; // uart_0_s1_translator:uav_readdatavalid -> SW_Wrapper_0_avalon_master_0_translator:uav_readdatavalid
	wire         sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_lock;          // SW_Wrapper_0_avalon_master_0_translator:uav_lock -> uart_0_s1_translator:uav_lock
	wire         sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_write;         // SW_Wrapper_0_avalon_master_0_translator:uav_write -> uart_0_s1_translator:uav_write
	wire  [31:0] sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_writedata;     // SW_Wrapper_0_avalon_master_0_translator:uav_writedata -> uart_0_s1_translator:uav_writedata
	wire   [2:0] sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_burstcount;    // SW_Wrapper_0_avalon_master_0_translator:uav_burstcount -> uart_0_s1_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (5),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (5),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (0),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) sw_wrapper_0_avalon_master_0_translator (
		.clk                    (altpll_0_c0_clk),                                                                 //                       clk.clk
		.reset                  (SW_Wrapper_0_reset_sink_reset_bridge_in_reset_reset),                             //                     reset.reset
		.uav_address            (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (SW_Wrapper_0_avalon_master_0_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (SW_Wrapper_0_avalon_master_0_waitrequest),                                        //                          .waitrequest
		.av_read                (SW_Wrapper_0_avalon_master_0_read),                                               //                          .read
		.av_readdata            (SW_Wrapper_0_avalon_master_0_readdata),                                           //                          .readdata
		.av_write               (SW_Wrapper_0_avalon_master_0_write),                                              //                          .write
		.av_writedata           (SW_Wrapper_0_avalon_master_0_writedata),                                          //                          .writedata
		.av_burstcount          (1'b1),                                                                            //               (terminated)
		.av_byteenable          (4'b1111),                                                                         //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                                            //               (terminated)
		.av_begintransfer       (1'b0),                                                                            //               (terminated)
		.av_chipselect          (1'b0),                                                                            //               (terminated)
		.av_readdatavalid       (),                                                                                //               (terminated)
		.av_lock                (1'b0),                                                                            //               (terminated)
		.av_debugaccess         (1'b0),                                                                            //               (terminated)
		.uav_clken              (),                                                                                //               (terminated)
		.av_clken               (1'b1),                                                                            //               (terminated)
		.uav_response           (2'b00),                                                                           //               (terminated)
		.av_response            (),                                                                                //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                            //               (terminated)
		.av_writeresponsevalid  ()                                                                                 //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (16),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (1),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (5),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (0),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (1),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) uart_0_s1_translator (
		.clk                    (altpll_0_c0_clk),                                                                 //                      clk.clk
		.reset                  (SW_Wrapper_0_reset_sink_reset_bridge_in_reset_reset),                             //                    reset.reset
		.uav_address            (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (sw_wrapper_0_avalon_master_0_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (uart_0_s1_address),                                                               //      avalon_anti_slave_0.address
		.av_write               (uart_0_s1_write),                                                                 //                         .write
		.av_read                (uart_0_s1_read),                                                                  //                         .read
		.av_readdata            (uart_0_s1_readdata),                                                              //                         .readdata
		.av_writedata           (uart_0_s1_writedata),                                                             //                         .writedata
		.av_begintransfer       (uart_0_s1_begintransfer),                                                         //                         .begintransfer
		.av_chipselect          (uart_0_s1_chipselect),                                                            //                         .chipselect
		.av_beginbursttransfer  (),                                                                                //              (terminated)
		.av_burstcount          (),                                                                                //              (terminated)
		.av_byteenable          (),                                                                                //              (terminated)
		.av_readdatavalid       (1'b0),                                                                            //              (terminated)
		.av_waitrequest         (1'b0),                                                                            //              (terminated)
		.av_writebyteenable     (),                                                                                //              (terminated)
		.av_lock                (),                                                                                //              (terminated)
		.av_clken               (),                                                                                //              (terminated)
		.uav_clken              (1'b0),                                                                            //              (terminated)
		.av_debugaccess         (),                                                                                //              (terminated)
		.av_outputenable        (),                                                                                //              (terminated)
		.uav_response           (),                                                                                //              (terminated)
		.av_response            (2'b00),                                                                           //              (terminated)
		.uav_writeresponsevalid (),                                                                                //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                             //              (terminated)
	);

endmodule

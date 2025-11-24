`default_nettype none

module \std::cdc::sync2_bool  (
        input clk_i,
        input in_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::sync2_bool" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::sync2_bool );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:34,9" *)
    logic _e_137;
    (* src = "<compiler dir>/stdlib/cdc.spade:34,9" *)
    \std::cdc::sync2[1447]  sync2_0(.clk_i(\clk ), .in_i(\in ), .output__(_e_137));
    assign output__ = _e_137;
endmodule

module \std::conv::tri_to_bool  (
        input b_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::tri_to_bool" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::tri_to_bool );
        end
    end
    `endif
    logic \b ;
    assign \b  = b_i;
    logic _e_433;
    assign _e_433 = \b ;
    assign output__ = _e_433;
endmodule

module \std::conv::clock_to_bool  (
        input c_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::clock_to_bool" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::clock_to_bool );
        end
    end
    `endif
    logic \c ;
    assign \c  = c_i;
    logic _e_487;
    assign _e_487 = \c ;
    assign output__ = _e_487;
endmodule

module \std::conv::bool_to_clock  (
        input c_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::bool_to_clock" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::bool_to_clock );
        end
    end
    `endif
    logic \c ;
    assign \c  = c_i;
    logic _e_491;
    assign _e_491 = \c ;
    assign output__ = _e_491;
endmodule

module \std::io::rising_edge  (
        input clk_i,
        input sync1_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::io::rising_edge" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::io::rising_edge );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \sync1 ;
    assign \sync1  = sync1_i;
    (* src = "<compiler dir>/stdlib/io.spade:3,14" *)
    reg \sync2 ;
    (* src = "<compiler dir>/stdlib/io.spade:4,14" *)
    logic _e_583;
    (* src = "<compiler dir>/stdlib/io.spade:4,5" *)
    logic _e_581;
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign _e_583 = !\sync2 ;
    assign _e_581 = \sync1  && _e_583;
    assign output__ = _e_581;
endmodule

module \std::io::falling_edge  (
        input clk_i,
        input sync1_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::io::falling_edge" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::io::falling_edge );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \sync1 ;
    assign \sync1  = sync1_i;
    (* src = "<compiler dir>/stdlib/io.spade:9,14" *)
    reg \sync2 ;
    (* src = "<compiler dir>/stdlib/io.spade:10,14" *)
    logic _e_591;
    (* src = "<compiler dir>/stdlib/io.spade:10,5" *)
    logic _e_589;
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign _e_591 = !\sync1 ;
    assign _e_589 = \sync2  && _e_591;
    assign output__ = _e_589;
endmodule

module main (
        input ena,
        input clk,
        input rst_n,
        input[7:0] ui_in,
        output[7:0] uo_out,
        input[7:0] uio_in,
        output[7:0] uio_out,
        output[7:0] uio_oe
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "main" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, main);
        end
    end
    `endif
    logic[7:0] \uo_out_mut ;
    assign uo_out = \uo_out_mut ;
    logic[7:0] \uio_out_mut ;
    assign uio_out = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe = \uio_oe_mut ;
    (* src = "src/main.spade:17,15" *)
    logic \rst ;
    (* src = "src/main.spade:19,20" *)
    logic _e_3610;
    (* src = "src/main.spade:19,20" *)
    logic _e_3611_mut;
    (* src = "src/main.spade:19,20" *)
    logic \uart_out ;
    (* src = "src/main.spade:19,20" *)
    logic \uart_out_mut ;
    (* src = "src/main.spade:24,13" *)
    logic[7:0] _e_1149;
    (* src = "src/main.spade:24,13" *)
    logic _e_1148;
    (* src = "src/main.spade:25,13" *)
    logic[15:0] _e_1152;
    (* src = "src/main.spade:21,5" *)
    logic[8:0] _e_1145;
    (* src = "src/main.spade:21,5" *)
    logic _e_1145_mut;
    (* src = "src/main.spade:30,13" *)
    logic[18:0] _e_1157;
    (* src = "src/main.spade:31,13" *)
    logic _e_1161_mut;
    (* src = "src/main.spade:34,18" *)
    logic[7:0] _e_1164;
    (* src = "src/main.spade:35,19" *)
    logic[7:0] _e_1167;
    (* src = "src/main.spade:37,21" *)
    logic _e_1172;
    (* src = "src/main.spade:37,19" *)
    logic[7:0] _e_1170;
    assign \rst  = !\rst_n ;
    
    assign _e_3610 = _e_3611_mut;
    assign \uart_out  = {_e_3610};
    assign {_e_3611_mut} = \uart_out_mut ;
    (* src = "src/main.spade:24,13" *)
    \std::conv::impl_4::to_bits[1448]  to_bits_0(.self_i(\ui_in ), .output__(_e_1149));
    localparam[2:0] _e_1151 = 0;
    assign _e_1148 = _e_1149[_e_1151];
    assign _e_1152 = {\ui_in , \uio_in };
    (* src = "src/main.spade:21,5" *)
    \quickscope::quickscope[1449]  quickscope_0(.clk_i(\clk ), .rst_i(\rst ), .trigger_i(_e_1148), .data_i(_e_1152), .output__(_e_1145), .input__(_e_1145_mut));
    localparam[14:0] _e_1158 = 217;
    localparam[0:0] _e_1160 = 0;
    localparam[2:0] _e_1159 = 1;
    assign _e_1157 = {_e_1158, _e_1160, _e_1159};
    assign \uart_out_mut  = _e_1161_mut;
    (* src = "src/main.spade:21,5" *)
    \protocols::uart::impl_25::into_uart  into_uart_0(.self_i(_e_1145), .self_o(_e_1145_mut), .clk_i(\clk ), .rst_i(\rst ), .config_i(_e_1157), .tx_o(_e_1161_mut));
    localparam[7:0] _e_1165 = 0;
    assign _e_1164 = _e_1165;
    assign \uio_oe_mut  = _e_1164;
    localparam[7:0] _e_1168 = 0;
    assign _e_1167 = _e_1168;
    assign \uio_out_mut  = _e_1167;
    assign _e_1172 = \uart_out ;
    localparam[0:0] _e_1175 = 0;
    localparam[0:0] _e_1176 = 0;
    localparam[0:0] _e_1177 = 0;
    localparam[0:0] _e_1178 = 0;
    localparam[0:0] _e_1179 = 0;
    localparam[0:0] _e_1180 = 0;
    localparam[0:0] _e_1181 = 0;
    assign _e_1170 = {_e_1181, _e_1180, _e_1179, _e_1178, _e_1177, _e_1176, _e_1175, _e_1172};
    assign \uo_out_mut  = _e_1170;
endmodule

module \ready_valid::escape_byte::escape_byte_th  (
        input[9:0] self__i, output self__o,
        input clk_i,
        input rst_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::escape_byte::escape_byte_th" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::escape_byte::escape_byte_th );
        end
    end
    `endif
    logic[9:0] \self_ ;
    assign \self_  = self__i;
    logic \self__mut ;
    assign self__o = \self__mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:109,23" *)
    logic[15:0] _e_1371;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:105,5" *)
    logic[8:0] _e_1367;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:105,5" *)
    logic _e_1367_mut;
    localparam[7:0] _e_1372 = 126;
    localparam[7:0] _e_1373 = 125;
    assign _e_1371 = {_e_1373, _e_1372};
    
    localparam[7:0] _e_1382 = 125;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:105,5" *)
    \ready_valid::escape_byte::impl_14::escape_bytes[1450]  escape_bytes_0(.self_i(\self_ ), .self_o(\self__mut ), .clk_i(\clk ), .rst_i(\rst ), .escapees_i(_e_1371), .escape_prefix_i(_e_1382), .output__(_e_1367), .input__(_e_1367_mut));
    assign output__ = _e_1367;
    assign _e_1367_mut = input__;
endmodule

module \ready_valid::buffer_th  (
        input clk_i,
        input rst_i,
        input ready_i,
        input[16:0] value_i,
        output[16:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::buffer_th" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::buffer_th );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \ready ;
    assign \ready  = ready_i;
    logic[16:0] \value ;
    assign \value  = value_i;
    (* src = "build/libs/ready_valid/src/main.spade:247,39" *)
    logic _e_1859_mut;
    (* src = "build/libs/ready_valid/src/main.spade:247,14" *)
    logic[16:0] \rv ;
    (* src = "build/libs/ready_valid/src/main.spade:247,14" *)
    logic \rv_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:249,15" *)
    logic[16:0] \out ;
    (* src = "build/libs/ready_valid/src/main.spade:249,15" *)
    logic \out_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:250,9" *)
    logic _e_1866_mut;
    (* src = "build/libs/ready_valid/src/main.spade:251,6" *)
    logic[16:0] _e_1870;
    (* src = "build/libs/ready_valid/src/main.spade:247,39" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_0(.input__(_e_1859_mut));
    assign \rv  = {\value };
    assign {_e_1859_mut} = \rv_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:249,15" *)
    \ready_valid::impl_17::buffer[1452]  buffer_0(.self_i(\rv ), .self_o(\rv_mut ), .clk_i(\clk ), .rst_i(\rst ), .output__(\out ), .input__(\out_mut ));
    assign \out_mut  = _e_1866_mut;
    assign _e_1866_mut = \ready ;
    assign _e_1870 = \out [16:0];
    assign output__ = _e_1870;
endmodule

module \ready_valid::split_to_u8_th  (
        input clk_i,
        input rst_i,
        input ready_i,
        input[16:0] value_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::split_to_u8_th" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::split_to_u8_th );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \ready ;
    assign \ready  = ready_i;
    logic[16:0] \value ;
    assign \value  = value_i;
    (* src = "build/libs/ready_valid/src/main.spade:260,39" *)
    logic _e_1877_mut;
    (* src = "build/libs/ready_valid/src/main.spade:260,14" *)
    logic[16:0] \rv ;
    (* src = "build/libs/ready_valid/src/main.spade:260,14" *)
    logic \rv_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:262,15" *)
    logic[8:0] \out ;
    (* src = "build/libs/ready_valid/src/main.spade:262,15" *)
    logic \out_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:263,9" *)
    logic _e_1884_mut;
    (* src = "build/libs/ready_valid/src/main.spade:264,6" *)
    logic[8:0] _e_1888;
    (* src = "build/libs/ready_valid/src/main.spade:260,39" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_0(.input__(_e_1877_mut));
    assign \rv  = {\value };
    assign {_e_1877_mut} = \rv_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:262,15" *)
    \ready_valid::impl_21::split_to_u8  split_to_u8_0(.self_i(\rv ), .self_o(\rv_mut ), .clk_i(\clk ), .rst_i(\rst ), .output__(\out ), .input__(\out_mut ));
    assign \out_mut  = _e_1884_mut;
    assign _e_1884_mut = \ready ;
    assign _e_1888 = \out [8:0];
    assign output__ = _e_1888;
endmodule

module \protocols::i2c::new_byte_queue  (
        input[31:0] inner_i,
        input[2:0] count_i,
        output[37:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::new_byte_queue" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::new_byte_queue );
        end
    end
    `endif
    logic[31:0] \inner ;
    assign \inner  = inner_i;
    logic[2:0] \count ;
    assign \count  = count_i;
    (* src = "build/libs/protocols/src/i2c.spade:48,5" *)
    logic[37:0] _e_1963;
    localparam[2:0] _e_1966 = 0;
    assign _e_1963 = {\inner , \count , _e_1966};
    assign output__ = _e_1963;
endmodule

module \protocols::i2c::i2c_controller  (
        input clk_i,
        input rst_i,
        input[39:0] cfg_i,
        input[32:0] command_i,
        output ready_o,
        output sclk,
        output sda_drive_low,
        input sda_in,
        output[10:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::i2c_controller" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::i2c_controller );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[39:0] \cfg ;
    assign \cfg  = cfg_i;
    logic[32:0] \command ;
    assign \command  = command_i;
    logic \ready_mut ;
    assign ready_o = \ready_mut ;
    logic \sclk_mut ;
    assign sclk = \sclk_mut ;
    logic \sda_drive_low_mut ;
    assign sda_drive_low = \sda_drive_low_mut ;
    (* src = "build/libs/protocols/src/i2c.spade:98,25" *)
    logic \emitter_ready_mut ;
    (* src = "build/libs/protocols/src/i2c.spade:100,31" *)
    logic[60:0] _e_1997;
    logic _e_3613;
    (* src = "build/libs/protocols/src/i2c.spade:103,38" *)
    logic _e_2006;
    (* src = "build/libs/protocols/src/i2c.spade:103,23" *)
    logic[33:0] _e_2004;
    (* src = "build/libs/protocols/src/i2c.spade:104,21" *)
    logic[33:0] _e_2011;
    (* src = "build/libs/protocols/src/i2c.spade:104,21" *)
    logic[32:0] _e_2009;
    (* src = "build/libs/protocols/src/i2c.spade:104,22" *)
    logic[31:0] command_n1;
    (* src = "build/libs/protocols/src/i2c.spade:104,21" *)
    logic _e_2010;
    logic _e_3616;
    logic _e_3618;
    logic _e_3620;
    (* src = "build/libs/protocols/src/i2c.spade:106,36" *)
    logic[37:0] _e_2014;
    (* src = "build/libs/protocols/src/i2c.spade:107,44" *)
    logic[19:0] _e_2016;
    (* src = "build/libs/protocols/src/i2c.spade:108,36" *)
    logic _e_2018;
    (* src = "build/libs/protocols/src/i2c.spade:105,25" *)
    logic[60:0] _e_2013;
    (* src = "build/libs/protocols/src/i2c.spade:111,21" *)
    logic[33:0] \_ ;
    (* src = "build/libs/protocols/src/i2c.spade:103,17" *)
    logic[60:0] _e_2003;
    (* src = "build/libs/protocols/src/i2c.spade:114,13" *)
    logic[37:0] \bytes ;
    (* src = "build/libs/protocols/src/i2c.spade:114,13" *)
    logic[19:0] \duration_left ;
    (* src = "build/libs/protocols/src/i2c.spade:114,13" *)
    logic \write ;
    logic _e_3623;
    logic _e_3627;
    logic _e_3628;
    logic _e_3629;
    (* src = "build/libs/protocols/src/i2c.spade:115,20" *)
    logic _e_2028;
    (* src = "build/libs/protocols/src/i2c.spade:116,21" *)
    logic[60:0] _e_2032;
    (* src = "build/libs/protocols/src/i2c.spade:118,76" *)
    logic[20:0] _e_2039;
    (* src = "build/libs/protocols/src/i2c.spade:118,70" *)
    logic[19:0] _e_2038;
    (* src = "build/libs/protocols/src/i2c.spade:118,21" *)
    logic[60:0] _e_2036;
    (* src = "build/libs/protocols/src/i2c.spade:115,17" *)
    logic[60:0] _e_2027;
    (* src = "build/libs/protocols/src/i2c.spade:121,13" *)
    logic[37:0] bytes_n1;
    (* src = "build/libs/protocols/src/i2c.spade:121,13" *)
    logic write_n1;
    logic _e_3631;
    logic _e_3634;
    logic _e_3635;
    (* src = "build/libs/protocols/src/i2c.spade:122,25" *)
    logic _e_2048;
    (* src = "build/libs/protocols/src/i2c.spade:123,24" *)
    logic _e_2052;
    (* src = "build/libs/protocols/src/i2c.spade:124,50" *)
    logic[19:0] _e_2056;
    (* src = "build/libs/protocols/src/i2c.spade:124,25" *)
    logic[60:0] _e_2055;
    (* src = "build/libs/protocols/src/i2c.spade:126,59" *)
    logic[37:0] _e_2060;
    (* src = "build/libs/protocols/src/i2c.spade:126,25" *)
    logic[60:0] _e_2059;
    (* src = "build/libs/protocols/src/i2c.spade:123,21" *)
    logic[60:0] _e_2051;
    (* src = "build/libs/protocols/src/i2c.spade:122,17" *)
    logic[60:0] _e_2047;
    (* src = "build/libs/protocols/src/i2c.spade:133,13" *)
    logic[19:0] duration_left_n1;
    logic _e_3637;
    logic _e_3639;
    (* src = "build/libs/protocols/src/i2c.spade:134,20" *)
    logic _e_2069;
    (* src = "build/libs/protocols/src/i2c.spade:135,21" *)
    logic[60:0] _e_2073;
    (* src = "build/libs/protocols/src/i2c.spade:137,52" *)
    logic[20:0] _e_2077;
    (* src = "build/libs/protocols/src/i2c.spade:137,46" *)
    logic[19:0] _e_2076;
    (* src = "build/libs/protocols/src/i2c.spade:137,21" *)
    logic[60:0] _e_2075;
    (* src = "build/libs/protocols/src/i2c.spade:134,17" *)
    logic[60:0] _e_2068;
    (* src = "build/libs/protocols/src/i2c.spade:101,9" *)
    logic[60:0] _e_1999;
    (* src = "build/libs/protocols/src/i2c.spade:100,14" *)
    reg[60:0] \state ;
    (* src = "build/libs/protocols/src/i2c.spade:143,37" *)
    logic _e_2085;
    (* src = "build/libs/protocols/src/i2c.spade:143,24" *)
    logic[61:0] _e_2083;
    (* src = "build/libs/protocols/src/i2c.spade:144,9" *)
    logic[61:0] _e_2089;
    (* src = "build/libs/protocols/src/i2c.spade:144,9" *)
    logic[60:0] _e_2087;
    (* src = "build/libs/protocols/src/i2c.spade:144,9" *)
    logic _e_2088;
    logic _e_3642;
    logic _e_3644;
    (* src = "build/libs/protocols/src/i2c.spade:145,9" *)
    logic[61:0] __n1;
    (* src = "build/libs/protocols/src/i2c.spade:143,18" *)
    logic _e_2081;
    (* src = "build/libs/protocols/src/i2c.spade:149,9" *)
    logic[37:0] bytes_n2;
    (* src = "build/libs/protocols/src/i2c.spade:149,9" *)
    logic __n2;
    logic _e_3647;
    logic _e_3650;
    logic _e_3651;
    (* src = "build/libs/protocols/src/i2c.spade:149,53" *)
    logic[7:0] _e_2099;
    (* src = "build/libs/protocols/src/i2c.spade:149,48" *)
    logic[8:0] _e_2098;
    (* src = "build/libs/protocols/src/i2c.spade:150,9" *)
    logic[60:0] __n3;
    (* src = "build/libs/protocols/src/i2c.spade:150,14" *)
    logic[8:0] _e_2102;
    (* src = "build/libs/protocols/src/i2c.spade:148,24" *)
    logic[8:0] \byte_to_emit ;
    (* src = "build/libs/protocols/src/i2c.spade:154,33" *)
    logic \emitter_sda_drive_low_mut ;
    (* src = "build/libs/protocols/src/i2c.spade:155,24" *)
    logic \emitter_sclk_mut ;
    (* src = "build/libs/protocols/src/i2c.spade:157,20" *)
    logic[1:0] \ack_nack ;
    logic _e_3654;
    (* src = "build/libs/protocols/src/i2c.spade:170,9" *)
    logic[37:0] __n4;
    (* src = "build/libs/protocols/src/i2c.spade:170,9" *)
    logic[19:0] __n5;
    (* src = "build/libs/protocols/src/i2c.spade:170,9" *)
    logic __n6;
    logic _e_3656;
    logic _e_3660;
    logic _e_3661;
    logic _e_3662;
    (* src = "build/libs/protocols/src/i2c.spade:171,9" *)
    logic[37:0] __n7;
    (* src = "build/libs/protocols/src/i2c.spade:171,9" *)
    logic __n8;
    logic _e_3664;
    logic _e_3667;
    logic _e_3668;
    (* src = "build/libs/protocols/src/i2c.spade:171,49" *)
    logic _e_2132;
    (* src = "build/libs/protocols/src/i2c.spade:172,9" *)
    logic[19:0] \duration ;
    logic _e_3670;
    logic _e_3672;
    (* src = "build/libs/protocols/src/i2c.spade:172,62" *)
    logic[19:0] _e_2140;
    (* src = "build/libs/protocols/src/i2c.spade:172,61" *)
    logic[19:0] _e_2139;
    (* src = "build/libs/protocols/src/i2c.spade:172,50" *)
    logic _e_2137;
    (* src = "build/libs/protocols/src/i2c.spade:172,47" *)
    logic _e_2136;
    (* src = "build/libs/protocols/src/i2c.spade:168,26" *)
    logic _e_2119;
    logic _e_3674;
    (* src = "build/libs/protocols/src/i2c.spade:181,9" *)
    logic[37:0] __n9;
    (* src = "build/libs/protocols/src/i2c.spade:181,9" *)
    logic[19:0] __n10;
    (* src = "build/libs/protocols/src/i2c.spade:181,9" *)
    logic __n11;
    logic _e_3676;
    logic _e_3680;
    logic _e_3681;
    logic _e_3682;
    (* src = "build/libs/protocols/src/i2c.spade:182,9" *)
    logic[37:0] __n12;
    (* src = "build/libs/protocols/src/i2c.spade:182,9" *)
    logic __n13;
    logic _e_3684;
    logic _e_3687;
    logic _e_3688;
    (* src = "build/libs/protocols/src/i2c.spade:182,49" *)
    logic _e_2161;
    (* src = "build/libs/protocols/src/i2c.spade:183,9" *)
    logic[19:0] duration_n1;
    logic _e_3690;
    logic _e_3692;
    (* src = "build/libs/protocols/src/i2c.spade:183,62" *)
    logic[19:0] _e_2169;
    (* src = "build/libs/protocols/src/i2c.spade:183,61" *)
    logic[19:0] _e_2168;
    (* src = "build/libs/protocols/src/i2c.spade:183,50" *)
    logic _e_2166;
    (* src = "build/libs/protocols/src/i2c.spade:183,47" *)
    logic _e_2165;
    (* src = "build/libs/protocols/src/i2c.spade:179,17" *)
    logic _e_2148;
    (* src = "build/libs/protocols/src/i2c.spade:194,9" *)
    logic _e_2178;
    logic _e_3694;
    logic _e_3696;
    logic _e_3697;
    (* src = "build/libs/protocols/src/i2c.spade:195,18" *)
    logic[9:0] _e_2182;
    (* src = "build/libs/protocols/src/i2c.spade:195,13" *)
    logic[10:0] _e_2181;
    (* src = "build/libs/protocols/src/i2c.spade:197,9" *)
    logic _e_2183;
    logic _e_3699;
    logic _e_3701;
    logic _e_3702;
    (* src = "build/libs/protocols/src/i2c.spade:198,18" *)
    logic[9:0] _e_2187;
    (* src = "build/libs/protocols/src/i2c.spade:198,13" *)
    logic[10:0] _e_2186;
    logic _e_3704;
    (* src = "build/libs/protocols/src/i2c.spade:200,17" *)
    logic[10:0] _e_2189;
    (* src = "build/libs/protocols/src/i2c.spade:193,5" *)
    logic[10:0] _e_2176;
    (* src = "build/libs/protocols/src/i2c.spade:98,25" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_0(.input__(\emitter_ready_mut ));
    assign _e_1997 = {2'd0, 59'bX};
    assign _e_3613 = \state [60:59] == 2'd0;
    assign _e_2006 = \emitter_ready_mut ;
    assign _e_2004 = {\command , _e_2006};
    assign _e_2011 = _e_2004;
    assign _e_2009 = _e_2004[33:1];
    assign command_n1 = _e_2009[31:0];
    assign _e_2010 = _e_2004[0];
    assign _e_3616 = _e_2009[32] == 1'd1;
    localparam[0:0] _e_3617 = 1;
    assign _e_3618 = _e_3616 && _e_3617;
    assign _e_3620 = _e_3618 && _e_2010;
    (* src = "build/libs/protocols/src/i2c.spade:106,36" *)
    \protocols::i2c::impl_23::into_bytes  into_bytes_0(.self_i(command_n1), .output__(_e_2014));
    assign _e_2016 = \cfg [39:20];
    (* src = "build/libs/protocols/src/i2c.spade:108,36" *)
    \protocols::i2c::impl_23::is_write  is_write_0(.self_i(command_n1), .output__(_e_2018));
    assign _e_2013 = {2'd1, _e_2014, _e_2016, _e_2018};
    assign \_  = _e_2004;
    localparam[0:0] _e_3621 = 1;
    always_comb begin
        priority casez ({_e_3620, _e_3621})
            2'b1?: _e_2003 = _e_2013;
            2'b01: _e_2003 = \state ;
            2'b?: _e_2003 = 61'dx;
        endcase
    end
    assign \bytes  = \state [58:21];
    assign \duration_left  = \state [20:1];
    assign \write  = \state [0:0];
    assign _e_3623 = \state [60:59] == 2'd1;
    localparam[0:0] _e_3624 = 1;
    localparam[0:0] _e_3625 = 1;
    localparam[0:0] _e_3626 = 1;
    assign _e_3627 = _e_3623 && _e_3624;
    assign _e_3628 = _e_3627 && _e_3625;
    assign _e_3629 = _e_3628 && _e_3626;
    localparam[19:0] _e_2030 = 1;
    assign _e_2028 = \duration_left  == _e_2030;
    assign _e_2032 = {2'd2, \bytes , \write , 20'bX};
    localparam[19:0] _e_2041 = 1;
    assign _e_2039 = \duration_left  - _e_2041;
    assign _e_2038 = _e_2039[19:0];
    assign _e_2036 = {2'd1, \bytes , _e_2038, \write };
    assign _e_2027 = _e_2028 ? _e_2032 : _e_2036;
    assign bytes_n1 = \state [58:21];
    assign write_n1 = \state [20:20];
    assign _e_3631 = \state [60:59] == 2'd2;
    localparam[0:0] _e_3632 = 1;
    localparam[0:0] _e_3633 = 1;
    assign _e_3634 = _e_3631 && _e_3632;
    assign _e_3635 = _e_3634 && _e_3633;
    assign _e_2048 = \emitter_ready_mut ;
    (* src = "build/libs/protocols/src/i2c.spade:123,24" *)
    \protocols::i2c::impl_24::is_empty  is_empty_0(.self_i(bytes_n1), .output__(_e_2052));
    assign _e_2056 = \cfg [39:20];
    assign _e_2055 = {2'd3, _e_2056, 39'bX};
    (* src = "build/libs/protocols/src/i2c.spade:126,59" *)
    \protocols::i2c::impl_24::next  next_0(.self_i(bytes_n1), .output__(_e_2060));
    assign _e_2059 = {2'd2, _e_2060, write_n1, 20'bX};
    assign _e_2051 = _e_2052 ? _e_2055 : _e_2059;
    assign _e_2047 = _e_2048 ? _e_2051 : \state ;
    assign duration_left_n1 = \state [58:39];
    assign _e_3637 = \state [60:59] == 2'd3;
    localparam[0:0] _e_3638 = 1;
    assign _e_3639 = _e_3637 && _e_3638;
    localparam[19:0] _e_2071 = 1;
    assign _e_2069 = duration_left_n1 == _e_2071;
    assign _e_2073 = {2'd0, 59'bX};
    localparam[19:0] _e_2079 = 1;
    assign _e_2077 = duration_left_n1 - _e_2079;
    assign _e_2076 = _e_2077[19:0];
    assign _e_2075 = {2'd3, _e_2076, 39'bX};
    assign _e_2068 = _e_2069 ? _e_2073 : _e_2075;
    always_comb begin
        priority casez ({_e_3613, _e_3629, _e_3635, _e_3639})
            4'b1???: _e_1999 = _e_2003;
            4'b01??: _e_1999 = _e_2027;
            4'b001?: _e_1999 = _e_2047;
            4'b0001: _e_1999 = _e_2068;
            4'b?: _e_1999 = 61'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_1997;
        end
        else begin
            \state  <= _e_1999;
        end
    end
    assign _e_2085 = \emitter_ready_mut ;
    assign _e_2083 = {\state , _e_2085};
    assign _e_2089 = _e_2083;
    assign _e_2087 = _e_2083[61:1];
    assign _e_2088 = _e_2083[0];
    assign _e_3642 = _e_2087[60:59] == 2'd0;
    assign _e_3644 = _e_3642 && _e_2088;
    localparam[0:0] _e_2090 = 1;
    assign __n1 = _e_2083;
    localparam[0:0] _e_3645 = 1;
    localparam[0:0] _e_2092 = 0;
    always_comb begin
        priority casez ({_e_3644, _e_3645})
            2'b1?: _e_2081 = _e_2090;
            2'b01: _e_2081 = _e_2092;
            2'b?: _e_2081 = 1'dx;
        endcase
    end
    assign \ready_mut  = _e_2081;
    assign bytes_n2 = \state [58:21];
    assign __n2 = \state [20:20];
    assign _e_3647 = \state [60:59] == 2'd2;
    localparam[0:0] _e_3648 = 1;
    localparam[0:0] _e_3649 = 1;
    assign _e_3650 = _e_3647 && _e_3648;
    assign _e_3651 = _e_3650 && _e_3649;
    (* src = "build/libs/protocols/src/i2c.spade:149,53" *)
    \protocols::i2c::impl_24::byte  byte_0(.self_i(bytes_n2), .output__(_e_2099));
    assign _e_2098 = {1'd1, _e_2099};
    assign __n3 = \state ;
    localparam[0:0] _e_3652 = 1;
    assign _e_2102 = {1'd0, 8'bX};
    always_comb begin
        priority casez ({_e_3651, _e_3652})
            2'b1?: \byte_to_emit  = _e_2098;
            2'b01: \byte_to_emit  = _e_2102;
            2'b?: \byte_to_emit  = 9'dx;
        endcase
    end
    (* src = "build/libs/protocols/src/i2c.spade:154,33" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_1(.input__(\emitter_sda_drive_low_mut ));
    (* src = "build/libs/protocols/src/i2c.spade:155,24" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_2(.input__(\emitter_sclk_mut ));
    (* src = "build/libs/protocols/src/i2c.spade:157,20" *)
    \protocols::i2c::byte_emitter  byte_emitter_0(.clk_i(\clk ), .rst_i(\rst ), .cfg_i(\cfg ), .byte_i(\byte_to_emit ), .sclk(\emitter_sclk_mut ), .sda_drive_low(\emitter_sda_drive_low_mut ), .sda_in(\sda_in ), .ready(\emitter_ready_mut ), .output__(\ack_nack ));
    assign _e_3654 = \state [60:59] == 2'd0;
    localparam[0:0] _e_2123 = 0;
    assign __n4 = \state [58:21];
    assign __n5 = \state [20:1];
    assign __n6 = \state [0:0];
    assign _e_3656 = \state [60:59] == 2'd1;
    localparam[0:0] _e_3657 = 1;
    localparam[0:0] _e_3658 = 1;
    localparam[0:0] _e_3659 = 1;
    assign _e_3660 = _e_3656 && _e_3657;
    assign _e_3661 = _e_3660 && _e_3658;
    assign _e_3662 = _e_3661 && _e_3659;
    localparam[0:0] _e_2128 = 1;
    assign __n7 = \state [58:21];
    assign __n8 = \state [20:20];
    assign _e_3664 = \state [60:59] == 2'd2;
    localparam[0:0] _e_3665 = 1;
    localparam[0:0] _e_3666 = 1;
    assign _e_3667 = _e_3664 && _e_3665;
    assign _e_3668 = _e_3667 && _e_3666;
    assign _e_2132 = \emitter_sda_drive_low_mut ;
    assign \duration  = \state [58:39];
    assign _e_3670 = \state [60:59] == 2'd3;
    localparam[0:0] _e_3671 = 1;
    assign _e_3672 = _e_3670 && _e_3671;
    assign _e_2140 = \cfg [39:20];
    localparam[19:0] _e_2142 = 2;
    assign _e_2139 = _e_2140 >> _e_2142;
    assign _e_2137 = \duration  > _e_2139;
    localparam[0:0] _e_2144 = 1;
    localparam[0:0] _e_2146 = 0;
    assign _e_2136 = _e_2137 ? _e_2144 : _e_2146;
    always_comb begin
        priority casez ({_e_3654, _e_3662, _e_3668, _e_3672})
            4'b1???: _e_2119 = _e_2123;
            4'b01??: _e_2119 = _e_2128;
            4'b001?: _e_2119 = _e_2132;
            4'b0001: _e_2119 = _e_2136;
            4'b?: _e_2119 = 1'dx;
        endcase
    end
    assign \sda_drive_low_mut  = _e_2119;
    assign _e_3674 = \state [60:59] == 2'd0;
    localparam[0:0] _e_2152 = 1;
    assign __n9 = \state [58:21];
    assign __n10 = \state [20:1];
    assign __n11 = \state [0:0];
    assign _e_3676 = \state [60:59] == 2'd1;
    localparam[0:0] _e_3677 = 1;
    localparam[0:0] _e_3678 = 1;
    localparam[0:0] _e_3679 = 1;
    assign _e_3680 = _e_3676 && _e_3677;
    assign _e_3681 = _e_3680 && _e_3678;
    assign _e_3682 = _e_3681 && _e_3679;
    localparam[0:0] _e_2157 = 1;
    assign __n12 = \state [58:21];
    assign __n13 = \state [20:20];
    assign _e_3684 = \state [60:59] == 2'd2;
    localparam[0:0] _e_3685 = 1;
    localparam[0:0] _e_3686 = 1;
    assign _e_3687 = _e_3684 && _e_3685;
    assign _e_3688 = _e_3687 && _e_3686;
    assign _e_2161 = \emitter_sclk_mut ;
    assign duration_n1 = \state [58:39];
    assign _e_3690 = \state [60:59] == 2'd3;
    localparam[0:0] _e_3691 = 1;
    assign _e_3692 = _e_3690 && _e_3691;
    assign _e_2169 = \cfg [39:20];
    localparam[19:0] _e_2171 = 1;
    assign _e_2168 = _e_2169 >> _e_2171;
    assign _e_2166 = duration_n1 > _e_2168;
    localparam[0:0] _e_2173 = 0;
    localparam[0:0] _e_2175 = 1;
    assign _e_2165 = _e_2166 ? _e_2173 : _e_2175;
    always_comb begin
        priority casez ({_e_3674, _e_3682, _e_3688, _e_3692})
            4'b1???: _e_2148 = _e_2152;
            4'b01??: _e_2148 = _e_2157;
            4'b001?: _e_2148 = _e_2161;
            4'b0001: _e_2148 = _e_2165;
            4'b?: _e_2148 = 1'dx;
        endcase
    end
    assign \sclk_mut  = _e_2148;
    assign _e_2178 = \ack_nack [0:0];
    assign _e_3694 = \ack_nack [1] == 1'd1;
    assign _e_3696 = _e_2178 == 1'd0;
    assign _e_3697 = _e_3694 && _e_3696;
    assign _e_2182 = {2'd0, 8'bX};
    assign _e_2181 = {1'd1, _e_2182};
    assign _e_2183 = \ack_nack [0:0];
    assign _e_3699 = \ack_nack [1] == 1'd1;
    assign _e_3701 = _e_2183 == 1'd1;
    assign _e_3702 = _e_3699 && _e_3701;
    assign _e_2187 = {2'd1, 8'bX};
    assign _e_2186 = {1'd1, _e_2187};
    assign _e_3704 = \ack_nack [1] == 1'd0;
    assign _e_2189 = {1'd0, 10'bX};
    always_comb begin
        priority casez ({_e_3697, _e_3702, _e_3704})
            3'b1??: _e_2176 = _e_2181;
            3'b01?: _e_2176 = _e_2186;
            3'b001: _e_2176 = _e_2189;
            3'b?: _e_2176 = 11'dx;
        endcase
    end
    assign output__ = _e_2176;
endmodule

module \protocols::i2c::byte_emitter  (
        input clk_i,
        input rst_i,
        input[39:0] cfg_i,
        input[8:0] byte_i,
        output sclk,
        output sda_drive_low,
        input sda_in,
        output ready,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::byte_emitter" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::byte_emitter );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[39:0] \cfg ;
    assign \cfg  = cfg_i;
    logic[8:0] \byte ;
    assign \byte  = byte_i;
    logic \sclk_mut ;
    assign sclk = \sclk_mut ;
    logic \sda_drive_low_mut ;
    assign sda_drive_low = \sda_drive_low_mut ;
    logic \ready_mut ;
    assign ready = \ready_mut ;
    (* src = "build/libs/protocols/src/i2c.spade:231,32" *)
    logic[21:0] _e_2194;
    logic _e_3706;
    (* src = "build/libs/protocols/src/i2c.spade:235,21" *)
    logic[7:0] \bits ;
    logic _e_3708;
    logic _e_3710;
    (* src = "build/libs/protocols/src/i2c.spade:235,35" *)
    logic[21:0] _e_2203;
    logic _e_3712;
    (* src = "build/libs/protocols/src/i2c.spade:236,29" *)
    logic[21:0] _e_2207;
    (* src = "build/libs/protocols/src/i2c.spade:234,17" *)
    logic[21:0] _e_2199;
    (* src = "build/libs/protocols/src/i2c.spade:239,13" *)
    logic[7:0] bits_n1;
    (* src = "build/libs/protocols/src/i2c.spade:239,13" *)
    logic[7:0] \mask ;
    logic _e_3714;
    logic _e_3717;
    logic _e_3718;
    (* src = "build/libs/protocols/src/i2c.spade:240,20" *)
    logic _e_2213;
    (* src = "build/libs/protocols/src/i2c.spade:241,24" *)
    logic _e_2217;
    (* src = "build/libs/protocols/src/i2c.spade:242,47" *)
    logic[19:0] _e_2222;
    (* src = "build/libs/protocols/src/i2c.spade:242,25" *)
    logic[21:0] _e_2221;
    (* src = "build/libs/protocols/src/i2c.spade:245,59" *)
    logic[7:0] _e_2226;
    (* src = "build/libs/protocols/src/i2c.spade:245,74" *)
    logic[7:0] _e_2229;
    (* src = "build/libs/protocols/src/i2c.spade:245,25" *)
    logic[21:0] _e_2225;
    (* src = "build/libs/protocols/src/i2c.spade:241,21" *)
    logic[21:0] _e_2216;
    (* src = "build/libs/protocols/src/i2c.spade:240,17" *)
    logic[21:0] _e_2212;
    (* src = "build/libs/protocols/src/i2c.spade:252,13" *)
    logic[19:0] \duration ;
    logic _e_3720;
    logic _e_3722;
    (* src = "build/libs/protocols/src/i2c.spade:253,20" *)
    logic _e_2238;
    (* src = "build/libs/protocols/src/i2c.spade:255,25" *)
    logic[7:0] bits_n2;
    logic _e_3724;
    logic _e_3726;
    (* src = "build/libs/protocols/src/i2c.spade:255,39" *)
    logic[21:0] _e_2246;
    logic _e_3728;
    (* src = "build/libs/protocols/src/i2c.spade:256,33" *)
    logic[21:0] _e_2250;
    (* src = "build/libs/protocols/src/i2c.spade:254,21" *)
    logic[21:0] _e_2242;
    (* src = "build/libs/protocols/src/i2c.spade:259,49" *)
    logic[20:0] _e_2254;
    (* src = "build/libs/protocols/src/i2c.spade:259,43" *)
    logic[19:0] _e_2253;
    (* src = "build/libs/protocols/src/i2c.spade:259,21" *)
    logic[21:0] _e_2252;
    (* src = "build/libs/protocols/src/i2c.spade:253,17" *)
    logic[21:0] _e_2237;
    (* src = "build/libs/protocols/src/i2c.spade:232,9" *)
    logic[21:0] _e_2195;
    (* src = "build/libs/protocols/src/i2c.spade:231,14" *)
    reg[21:0] \state ;
    (* src = "build/libs/protocols/src/i2c.spade:264,28" *)
    logic[30:0] _e_2258;
    (* src = "build/libs/protocols/src/i2c.spade:265,9" *)
    logic[30:0] _e_2264;
    (* src = "build/libs/protocols/src/i2c.spade:265,9" *)
    logic[21:0] _e_2261;
    (* src = "build/libs/protocols/src/i2c.spade:265,9" *)
    logic[8:0] _e_2263;
    (* src = "build/libs/protocols/src/i2c.spade:265,34" *)
    logic[7:0] \_ ;
    logic _e_3731;
    logic _e_3733;
    logic _e_3735;
    logic _e_3736;
    (* src = "build/libs/protocols/src/i2c.spade:265,46" *)
    logic[8:0] _e_2265;
    (* src = "build/libs/protocols/src/i2c.spade:266,9" *)
    logic[30:0] _e_2271;
    (* src = "build/libs/protocols/src/i2c.spade:266,9" *)
    logic[21:0] _e_2268;
    (* src = "build/libs/protocols/src/i2c.spade:266,10" *)
    logic[19:0] _e_2267;
    (* src = "build/libs/protocols/src/i2c.spade:266,9" *)
    logic[8:0] _e_2270;
    (* src = "build/libs/protocols/src/i2c.spade:266,36" *)
    logic[7:0] __n1;
    logic _e_3739;
    logic _e_3740;
    logic _e_3742;
    logic _e_3744;
    logic _e_3746;
    logic _e_3747;
    (* src = "build/libs/protocols/src/i2c.spade:266,48" *)
    logic[8:0] _e_2272;
    (* src = "build/libs/protocols/src/i2c.spade:267,9" *)
    logic[30:0] __n2;
    (* src = "build/libs/protocols/src/i2c.spade:267,14" *)
    logic[8:0] _e_2275;
    (* src = "build/libs/protocols/src/i2c.spade:264,22" *)
    logic[8:0] \num_cycles ;
    (* src = "build/libs/protocols/src/i2c.spade:270,27" *)
    logic[2:0] \sclk_driver_out ;
    (* src = "build/libs/protocols/src/i2c.spade:271,17" *)
    logic _e_2284;
    (* src = "build/libs/protocols/src/i2c.spade:274,9" *)
    logic[7:0] bits_n3;
    (* src = "build/libs/protocols/src/i2c.spade:274,9" *)
    logic[7:0] __n3;
    logic _e_3750;
    logic _e_3753;
    logic _e_3754;
    (* src = "build/libs/protocols/src/i2c.spade:275,16" *)
    logic[7:0] _e_2297;
    (* src = "build/libs/protocols/src/i2c.spade:275,16" *)
    logic _e_2296;
    (* src = "build/libs/protocols/src/i2c.spade:275,13" *)
    logic _e_2295;
    (* src = "build/libs/protocols/src/i2c.spade:281,9" *)
    logic[21:0] __n4;
    (* src = "build/libs/protocols/src/i2c.spade:273,26" *)
    logic _e_2288;
    logic _e_3757;
    (* src = "build/libs/protocols/src/i2c.spade:285,9" *)
    logic[19:0] _e_2313;
    logic _e_3759;
    logic _e_3760;
    logic _e_3762;
    (* src = "build/libs/protocols/src/i2c.spade:286,9" *)
    logic[21:0] __n5;
    (* src = "build/libs/protocols/src/i2c.spade:283,18" *)
    logic _e_2308;
    (* src = "build/libs/protocols/src/i2c.spade:289,19" *)
    logic _e_2321;
    (* src = "build/libs/protocols/src/i2c.spade:289,11" *)
    logic[22:0] _e_2319;
    (* src = "build/libs/protocols/src/i2c.spade:290,9" *)
    logic[22:0] _e_2326;
    (* src = "build/libs/protocols/src/i2c.spade:290,9" *)
    logic[21:0] _e_2324;
    (* src = "build/libs/protocols/src/i2c.spade:290,10" *)
    logic[19:0] __n6;
    (* src = "build/libs/protocols/src/i2c.spade:290,9" *)
    logic _e_2325;
    logic _e_3766;
    logic _e_3768;
    logic _e_3770;
    (* src = "build/libs/protocols/src/i2c.spade:291,16" *)
    logic _e_2329;
    (* src = "build/libs/protocols/src/i2c.spade:292,22" *)
    logic _e_2333;
    (* src = "build/libs/protocols/src/i2c.spade:292,17" *)
    logic[1:0] _e_2332;
    (* src = "build/libs/protocols/src/i2c.spade:294,22" *)
    logic _e_2336;
    (* src = "build/libs/protocols/src/i2c.spade:294,17" *)
    logic[1:0] _e_2335;
    (* src = "build/libs/protocols/src/i2c.spade:291,13" *)
    logic[1:0] _e_2328;
    (* src = "build/libs/protocols/src/i2c.spade:297,9" *)
    logic[22:0] __n7;
    (* src = "build/libs/protocols/src/i2c.spade:297,14" *)
    logic[1:0] _e_2338;
    (* src = "build/libs/protocols/src/i2c.spade:289,5" *)
    logic[1:0] _e_2318;
    assign _e_2194 = {2'd0, 20'bX};
    assign _e_3706 = \state [21:20] == 2'd0;
    assign \bits  = \byte [7:0];
    assign _e_3708 = \byte [8] == 1'd1;
    localparam[0:0] _e_3709 = 1;
    assign _e_3710 = _e_3708 && _e_3709;
    localparam[7:0] _e_2205 = 255;
    assign _e_2203 = {2'd1, \bits , _e_2205, 4'bX};
    assign _e_3712 = \byte [8] == 1'd0;
    assign _e_2207 = {2'd0, 20'bX};
    always_comb begin
        priority casez ({_e_3710, _e_3712})
            2'b1?: _e_2199 = _e_2203;
            2'b01: _e_2199 = _e_2207;
            2'b?: _e_2199 = 22'dx;
        endcase
    end
    assign bits_n1 = \state [19:12];
    assign \mask  = \state [11:4];
    assign _e_3714 = \state [21:20] == 2'd1;
    localparam[0:0] _e_3715 = 1;
    localparam[0:0] _e_3716 = 1;
    assign _e_3717 = _e_3714 && _e_3715;
    assign _e_3718 = _e_3717 && _e_3716;
    assign _e_2213 = \sclk_driver_out [1];
    localparam[7:0] _e_2219 = 128;
    assign _e_2217 = \mask  == _e_2219;
    assign _e_2222 = \cfg [39:20];
    assign _e_2221 = {2'd2, _e_2222};
    localparam[7:0] _e_2228 = 1;
    assign _e_2226 = bits_n1 << _e_2228;
    localparam[7:0] _e_2231 = 1;
    assign _e_2229 = \mask  << _e_2231;
    assign _e_2225 = {2'd1, _e_2226, _e_2229, 4'bX};
    assign _e_2216 = _e_2217 ? _e_2221 : _e_2225;
    assign _e_2212 = _e_2213 ? _e_2216 : \state ;
    assign \duration  = \state [19:0];
    assign _e_3720 = \state [21:20] == 2'd2;
    localparam[0:0] _e_3721 = 1;
    assign _e_3722 = _e_3720 && _e_3721;
    localparam[19:0] _e_2240 = 1;
    assign _e_2238 = \duration  == _e_2240;
    assign bits_n2 = \byte [7:0];
    assign _e_3724 = \byte [8] == 1'd1;
    localparam[0:0] _e_3725 = 1;
    assign _e_3726 = _e_3724 && _e_3725;
    localparam[7:0] _e_2248 = 255;
    assign _e_2246 = {2'd1, bits_n2, _e_2248, 4'bX};
    assign _e_3728 = \byte [8] == 1'd0;
    assign _e_2250 = {2'd0, 20'bX};
    always_comb begin
        priority casez ({_e_3726, _e_3728})
            2'b1?: _e_2242 = _e_2246;
            2'b01: _e_2242 = _e_2250;
            2'b?: _e_2242 = 22'dx;
        endcase
    end
    localparam[19:0] _e_2256 = 1;
    assign _e_2254 = \duration  - _e_2256;
    assign _e_2253 = _e_2254[19:0];
    assign _e_2252 = {2'd2, _e_2253};
    assign _e_2237 = _e_2238 ? _e_2242 : _e_2252;
    always_comb begin
        priority casez ({_e_3706, _e_3718, _e_3722})
            3'b1??: _e_2195 = _e_2199;
            3'b01?: _e_2195 = _e_2212;
            3'b001: _e_2195 = _e_2237;
            3'b?: _e_2195 = 22'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_2194;
        end
        else begin
            \state  <= _e_2195;
        end
    end
    assign _e_2258 = {\state , \byte };
    assign _e_2264 = _e_2258;
    assign _e_2261 = _e_2258[30:9];
    assign _e_2263 = _e_2258[8:0];
    assign \_  = _e_2263[7:0];
    assign _e_3731 = _e_2261[21:20] == 2'd0;
    assign _e_3733 = _e_2263[8] == 1'd1;
    localparam[0:0] _e_3734 = 1;
    assign _e_3735 = _e_3733 && _e_3734;
    assign _e_3736 = _e_3731 && _e_3735;
    localparam[7:0] _e_2266 = 9;
    assign _e_2265 = {1'd1, _e_2266};
    assign _e_2271 = _e_2258;
    assign _e_2268 = _e_2258[30:9];
    assign _e_2267 = _e_2268[19:0];
    assign _e_2270 = _e_2258[8:0];
    assign __n1 = _e_2270[7:0];
    assign _e_3739 = _e_2268[21:20] == 2'd2;
    localparam[19:0] _e_3741 = 1;
    assign _e_3740 = _e_2267 == _e_3741;
    assign _e_3742 = _e_3739 && _e_3740;
    assign _e_3744 = _e_2270[8] == 1'd1;
    localparam[0:0] _e_3745 = 1;
    assign _e_3746 = _e_3744 && _e_3745;
    assign _e_3747 = _e_3742 && _e_3746;
    localparam[7:0] _e_2273 = 9;
    assign _e_2272 = {1'd1, _e_2273};
    assign __n2 = _e_2258;
    localparam[0:0] _e_3748 = 1;
    assign _e_2275 = {1'd0, 8'bX};
    always_comb begin
        priority casez ({_e_3736, _e_3747, _e_3748})
            3'b1??: \num_cycles  = _e_2265;
            3'b01?: \num_cycles  = _e_2272;
            3'b001: \num_cycles  = _e_2275;
            3'b?: \num_cycles  = 9'dx;
        endcase
    end
    (* src = "build/libs/protocols/src/i2c.spade:270,27" *)
    \protocols::i2c::sclk_driver  sclk_driver_0(.clk_i(\clk ), .rst_i(\rst ), .cfg_i(\cfg ), .num_cycles_i(\num_cycles ), .output__(\sclk_driver_out ));
    assign _e_2284 = \sclk_driver_out [2];
    assign \sclk_mut  = _e_2284;
    assign bits_n3 = \state [19:12];
    assign __n3 = \state [11:4];
    assign _e_3750 = \state [21:20] == 2'd1;
    localparam[0:0] _e_3751 = 1;
    localparam[0:0] _e_3752 = 1;
    assign _e_3753 = _e_3750 && _e_3751;
    assign _e_3754 = _e_3753 && _e_3752;
    localparam[7:0] _e_2299 = 128;
    assign _e_2297 = bits_n3 & _e_2299;
    localparam[7:0] _e_2300 = 0;
    assign _e_2296 = _e_2297 != _e_2300;
    localparam[0:0] _e_2302 = 0;
    localparam[0:0] _e_2304 = 1;
    assign _e_2295 = _e_2296 ? _e_2302 : _e_2304;
    assign __n4 = \state ;
    localparam[0:0] _e_3755 = 1;
    localparam[0:0] _e_2306 = 0;
    always_comb begin
        priority casez ({_e_3754, _e_3755})
            2'b1?: _e_2288 = _e_2295;
            2'b01: _e_2288 = _e_2306;
            2'b?: _e_2288 = 1'dx;
        endcase
    end
    assign \sda_drive_low_mut  = _e_2288;
    assign _e_3757 = \state [21:20] == 2'd0;
    localparam[0:0] _e_2312 = 1;
    assign _e_2313 = \state [19:0];
    assign _e_3759 = \state [21:20] == 2'd2;
    localparam[19:0] _e_3761 = 1;
    assign _e_3760 = _e_2313 == _e_3761;
    assign _e_3762 = _e_3759 && _e_3760;
    localparam[0:0] _e_2315 = 1;
    assign __n5 = \state ;
    localparam[0:0] _e_3763 = 1;
    localparam[0:0] _e_2317 = 0;
    always_comb begin
        priority casez ({_e_3757, _e_3762, _e_3763})
            3'b1??: _e_2308 = _e_2312;
            3'b01?: _e_2308 = _e_2315;
            3'b001: _e_2308 = _e_2317;
            3'b?: _e_2308 = 1'dx;
        endcase
    end
    assign \ready_mut  = _e_2308;
    assign _e_2321 = \sclk_driver_out [0];
    assign _e_2319 = {\state , _e_2321};
    assign _e_2326 = _e_2319;
    assign _e_2324 = _e_2319[22:1];
    assign __n6 = _e_2324[19:0];
    assign _e_2325 = _e_2319[0];
    assign _e_3766 = _e_2324[21:20] == 2'd2;
    localparam[0:0] _e_3767 = 1;
    assign _e_3768 = _e_3766 && _e_3767;
    assign _e_3770 = _e_3768 && _e_2325;
    assign _e_2329 = !\sda_in ;
    assign _e_2333 = {1'd0};
    assign _e_2332 = {1'd1, _e_2333};
    assign _e_2336 = {1'd1};
    assign _e_2335 = {1'd1, _e_2336};
    assign _e_2328 = _e_2329 ? _e_2332 : _e_2335;
    assign __n7 = _e_2319;
    localparam[0:0] _e_3771 = 1;
    assign _e_2338 = {1'd0, 1'bX};
    always_comb begin
        priority casez ({_e_3770, _e_3771})
            2'b1?: _e_2318 = _e_2328;
            2'b01: _e_2318 = _e_2338;
            2'b?: _e_2318 = 2'dx;
        endcase
    end
    assign output__ = _e_2318;
endmodule

module \protocols::i2c::sclk_driver  (
        input clk_i,
        input rst_i,
        input[39:0] cfg_i,
        input[8:0] num_cycles_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::sclk_driver" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::sclk_driver );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[39:0] \cfg ;
    assign \cfg  = cfg_i;
    logic[8:0] \num_cycles ;
    assign \num_cycles  = num_cycles_i;
    (* src = "build/libs/protocols/src/i2c.spade:315,31" *)
    logic[28:0] _e_2343;
    (* src = "build/libs/protocols/src/i2c.spade:315,64" *)
    logic[37:0] _e_2345;
    (* src = "build/libs/protocols/src/i2c.spade:316,9" *)
    logic[37:0] _e_2351;
    (* src = "build/libs/protocols/src/i2c.spade:316,9" *)
    logic[28:0] _e_2348;
    (* src = "build/libs/protocols/src/i2c.spade:316,9" *)
    logic[8:0] _e_2350;
    (* src = "build/libs/protocols/src/i2c.spade:316,33" *)
    logic[7:0] \cycles ;
    logic _e_3774;
    logic _e_3776;
    logic _e_3778;
    logic _e_3779;
    (* src = "build/libs/protocols/src/i2c.spade:318,23" *)
    logic[19:0] _e_2354;
    (* src = "build/libs/protocols/src/i2c.spade:316,50" *)
    logic[28:0] _e_2352;
    (* src = "build/libs/protocols/src/i2c.spade:320,9" *)
    logic[37:0] _e_2358;
    (* src = "build/libs/protocols/src/i2c.spade:320,9" *)
    logic[28:0] _e_2356;
    (* src = "build/libs/protocols/src/i2c.spade:320,9" *)
    logic[8:0] _e_2357;
    logic _e_3782;
    logic _e_3784;
    logic _e_3785;
    (* src = "build/libs/protocols/src/i2c.spade:320,42" *)
    logic[28:0] _e_2359;
    (* src = "build/libs/protocols/src/i2c.spade:321,9" *)
    logic[37:0] _e_2365;
    (* src = "build/libs/protocols/src/i2c.spade:321,9" *)
    logic[28:0] _e_2362;
    (* src = "build/libs/protocols/src/i2c.spade:321,10" *)
    logic[7:0] _e_2360;
    (* src = "build/libs/protocols/src/i2c.spade:321,10" *)
    logic[19:0] _e_2361;
    (* src = "build/libs/protocols/src/i2c.spade:321,9" *)
    logic[8:0] _e_2364;
    (* src = "build/libs/protocols/src/i2c.spade:321,62" *)
    logic[7:0] cycles_n1;
    logic _e_3788;
    logic _e_3789;
    logic _e_3791;
    logic _e_3793;
    logic _e_3794;
    logic _e_3796;
    logic _e_3798;
    logic _e_3799;
    (* src = "build/libs/protocols/src/i2c.spade:323,23" *)
    logic[19:0] _e_2368;
    (* src = "build/libs/protocols/src/i2c.spade:321,79" *)
    logic[28:0] _e_2366;
    (* src = "build/libs/protocols/src/i2c.spade:325,9" *)
    logic[37:0] _e_2374;
    (* src = "build/libs/protocols/src/i2c.spade:325,9" *)
    logic[28:0] _e_2372;
    (* src = "build/libs/protocols/src/i2c.spade:325,10" *)
    logic[7:0] _e_2370;
    (* src = "build/libs/protocols/src/i2c.spade:325,10" *)
    logic[19:0] _e_2371;
    (* src = "build/libs/protocols/src/i2c.spade:325,9" *)
    logic[8:0] \_ ;
    logic _e_3802;
    logic _e_3803;
    logic _e_3805;
    logic _e_3807;
    logic _e_3808;
    logic _e_3810;
    (* src = "build/libs/protocols/src/i2c.spade:325,68" *)
    logic[28:0] _e_2375;
    (* src = "build/libs/protocols/src/i2c.spade:326,9" *)
    logic[37:0] _e_2380;
    (* src = "build/libs/protocols/src/i2c.spade:326,9" *)
    logic[28:0] _e_2378;
    (* src = "build/libs/protocols/src/i2c.spade:326,10" *)
    logic[7:0] \cycles_left ;
    (* src = "build/libs/protocols/src/i2c.spade:326,10" *)
    logic[19:0] _e_2377;
    (* src = "build/libs/protocols/src/i2c.spade:326,9" *)
    logic[8:0] __n1;
    logic _e_3813;
    logic _e_3815;
    logic _e_3817;
    logic _e_3818;
    logic _e_3820;
    (* src = "build/libs/protocols/src/i2c.spade:327,32" *)
    logic[8:0] _e_2383;
    (* src = "build/libs/protocols/src/i2c.spade:327,26" *)
    logic[7:0] _e_2382;
    (* src = "build/libs/protocols/src/i2c.spade:328,23" *)
    logic[19:0] _e_2386;
    (* src = "build/libs/protocols/src/i2c.spade:326,65" *)
    logic[28:0] _e_2381;
    (* src = "build/libs/protocols/src/i2c.spade:330,9" *)
    logic[37:0] _e_2392;
    (* src = "build/libs/protocols/src/i2c.spade:330,9" *)
    logic[28:0] _e_2390;
    (* src = "build/libs/protocols/src/i2c.spade:330,10" *)
    logic[7:0] cycles_left_n1;
    (* src = "build/libs/protocols/src/i2c.spade:330,10" *)
    logic[19:0] \duration ;
    (* src = "build/libs/protocols/src/i2c.spade:330,9" *)
    logic[8:0] __n2;
    logic _e_3823;
    logic _e_3826;
    logic _e_3827;
    logic _e_3829;
    (* src = "build/libs/protocols/src/i2c.spade:332,29" *)
    logic[20:0] _e_2396;
    (* src = "build/libs/protocols/src/i2c.spade:332,23" *)
    logic[19:0] _e_2395;
    (* src = "build/libs/protocols/src/i2c.spade:330,62" *)
    logic[28:0] _e_2393;
    (* src = "build/libs/protocols/src/i2c.spade:315,58" *)
    logic[28:0] _e_2344;
    (* src = "build/libs/protocols/src/i2c.spade:315,14" *)
    reg[28:0] \state ;
    logic _e_3831;
    (* src = "build/libs/protocols/src/i2c.spade:342,9" *)
    logic[7:0] __n3;
    (* src = "build/libs/protocols/src/i2c.spade:342,9" *)
    logic[19:0] duration_n1;
    logic _e_3833;
    logic _e_3836;
    logic _e_3837;
    (* src = "build/libs/protocols/src/i2c.spade:342,72" *)
    logic[19:0] _e_2410;
    (* src = "build/libs/protocols/src/i2c.spade:342,72" *)
    logic[19:0] _e_2409;
    (* src = "build/libs/protocols/src/i2c.spade:342,60" *)
    logic _e_2407;
    (* src = "build/libs/protocols/src/i2c.spade:342,105" *)
    logic[19:0] _e_2415;
    (* src = "build/libs/protocols/src/i2c.spade:342,94" *)
    logic _e_2413;
    (* src = "build/libs/protocols/src/i2c.spade:342,60" *)
    logic _e_2406;
    (* src = "build/libs/protocols/src/i2c.spade:336,16" *)
    logic \sclk ;
    (* src = "build/libs/protocols/src/i2c.spade:345,9" *)
    logic[7:0] __n4;
    (* src = "build/libs/protocols/src/i2c.spade:345,9" *)
    logic[19:0] duration_n2;
    logic _e_3839;
    logic _e_3842;
    logic _e_3843;
    (* src = "build/libs/protocols/src/i2c.spade:345,72" *)
    logic[19:0] _e_2426;
    (* src = "build/libs/protocols/src/i2c.spade:345,72" *)
    logic[19:0] _e_2425;
    (* src = "build/libs/protocols/src/i2c.spade:345,60" *)
    logic _e_2423;
    (* src = "build/libs/protocols/src/i2c.spade:346,9" *)
    logic[28:0] __n5;
    (* src = "build/libs/protocols/src/i2c.spade:344,18" *)
    logic \rising ;
    (* src = "build/libs/protocols/src/i2c.spade:349,9" *)
    logic[7:0] __n6;
    (* src = "build/libs/protocols/src/i2c.spade:349,9" *)
    logic[19:0] duration_n3;
    logic _e_3846;
    logic _e_3849;
    logic _e_3850;
    (* src = "build/libs/protocols/src/i2c.spade:349,60" *)
    logic _e_2437;
    (* src = "build/libs/protocols/src/i2c.spade:350,9" *)
    logic[28:0] __n7;
    (* src = "build/libs/protocols/src/i2c.spade:348,19" *)
    logic \falling ;
    (* src = "build/libs/protocols/src/i2c.spade:352,5" *)
    logic[2:0] _e_2443;
    assign _e_2343 = {1'd0, 28'bX};
    assign _e_2345 = {\state , \num_cycles };
    assign _e_2351 = _e_2345;
    assign _e_2348 = _e_2345[37:9];
    assign _e_2350 = _e_2345[8:0];
    assign \cycles  = _e_2350[7:0];
    assign _e_3774 = _e_2348[28] == 1'd0;
    assign _e_3776 = _e_2350[8] == 1'd1;
    localparam[0:0] _e_3777 = 1;
    assign _e_3778 = _e_3776 && _e_3777;
    assign _e_3779 = _e_3774 && _e_3778;
    assign _e_2354 = \cfg [39:20];
    assign _e_2352 = {1'd1, \cycles , _e_2354};
    assign _e_2358 = _e_2345;
    assign _e_2356 = _e_2345[37:9];
    assign _e_2357 = _e_2345[8:0];
    assign _e_3782 = _e_2356[28] == 1'd0;
    assign _e_3784 = _e_2357[8] == 1'd0;
    assign _e_3785 = _e_3782 && _e_3784;
    assign _e_2359 = {1'd0, 28'bX};
    assign _e_2365 = _e_2345;
    assign _e_2362 = _e_2345[37:9];
    assign _e_2360 = _e_2362[27:20];
    assign _e_2361 = _e_2362[19:0];
    assign _e_2364 = _e_2345[8:0];
    assign cycles_n1 = _e_2364[7:0];
    assign _e_3788 = _e_2362[28] == 1'd1;
    localparam[7:0] _e_3790 = 1;
    assign _e_3789 = _e_2360 == _e_3790;
    localparam[19:0] _e_3792 = 1;
    assign _e_3791 = _e_2361 == _e_3792;
    assign _e_3793 = _e_3788 && _e_3789;
    assign _e_3794 = _e_3793 && _e_3791;
    assign _e_3796 = _e_2364[8] == 1'd1;
    localparam[0:0] _e_3797 = 1;
    assign _e_3798 = _e_3796 && _e_3797;
    assign _e_3799 = _e_3794 && _e_3798;
    assign _e_2368 = \cfg [39:20];
    assign _e_2366 = {1'd1, cycles_n1, _e_2368};
    assign _e_2374 = _e_2345;
    assign _e_2372 = _e_2345[37:9];
    assign _e_2370 = _e_2372[27:20];
    assign _e_2371 = _e_2372[19:0];
    assign \_  = _e_2345[8:0];
    assign _e_3802 = _e_2372[28] == 1'd1;
    localparam[7:0] _e_3804 = 1;
    assign _e_3803 = _e_2370 == _e_3804;
    localparam[19:0] _e_3806 = 1;
    assign _e_3805 = _e_2371 == _e_3806;
    assign _e_3807 = _e_3802 && _e_3803;
    assign _e_3808 = _e_3807 && _e_3805;
    localparam[0:0] _e_3809 = 1;
    assign _e_3810 = _e_3808 && _e_3809;
    assign _e_2375 = {1'd0, 28'bX};
    assign _e_2380 = _e_2345;
    assign _e_2378 = _e_2345[37:9];
    assign \cycles_left  = _e_2378[27:20];
    assign _e_2377 = _e_2378[19:0];
    assign __n1 = _e_2345[8:0];
    assign _e_3813 = _e_2378[28] == 1'd1;
    localparam[0:0] _e_3814 = 1;
    localparam[19:0] _e_3816 = 1;
    assign _e_3815 = _e_2377 == _e_3816;
    assign _e_3817 = _e_3813 && _e_3814;
    assign _e_3818 = _e_3817 && _e_3815;
    localparam[0:0] _e_3819 = 1;
    assign _e_3820 = _e_3818 && _e_3819;
    localparam[7:0] _e_2385 = 1;
    assign _e_2383 = \cycles_left  - _e_2385;
    assign _e_2382 = _e_2383[7:0];
    assign _e_2386 = \cfg [39:20];
    assign _e_2381 = {1'd1, _e_2382, _e_2386};
    assign _e_2392 = _e_2345;
    assign _e_2390 = _e_2345[37:9];
    assign cycles_left_n1 = _e_2390[27:20];
    assign \duration  = _e_2390[19:0];
    assign __n2 = _e_2345[8:0];
    assign _e_3823 = _e_2390[28] == 1'd1;
    localparam[0:0] _e_3824 = 1;
    localparam[0:0] _e_3825 = 1;
    assign _e_3826 = _e_3823 && _e_3824;
    assign _e_3827 = _e_3826 && _e_3825;
    localparam[0:0] _e_3828 = 1;
    assign _e_3829 = _e_3827 && _e_3828;
    localparam[19:0] _e_2398 = 1;
    assign _e_2396 = \duration  - _e_2398;
    assign _e_2395 = _e_2396[19:0];
    assign _e_2393 = {1'd1, cycles_left_n1, _e_2395};
    always_comb begin
        priority casez ({_e_3779, _e_3785, _e_3799, _e_3810, _e_3820, _e_3829})
            6'b1?????: _e_2344 = _e_2352;
            6'b01????: _e_2344 = _e_2359;
            6'b001???: _e_2344 = _e_2366;
            6'b0001??: _e_2344 = _e_2375;
            6'b00001?: _e_2344 = _e_2381;
            6'b000001: _e_2344 = _e_2393;
            6'b?: _e_2344 = 29'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_2343;
        end
        else begin
            \state  <= _e_2344;
        end
    end
    assign _e_3831 = \state [28] == 1'd0;
    localparam[0:0] _e_2402 = 1;
    assign __n3 = \state [27:20];
    assign duration_n1 = \state [19:0];
    assign _e_3833 = \state [28] == 1'd1;
    localparam[0:0] _e_3834 = 1;
    localparam[0:0] _e_3835 = 1;
    assign _e_3836 = _e_3833 && _e_3834;
    assign _e_3837 = _e_3836 && _e_3835;
    assign _e_2410 = \cfg [39:20];
    localparam[19:0] _e_2412 = 2;
    assign _e_2409 = _e_2410 / _e_2412;
    assign _e_2407 = duration_n1 <= _e_2409;
    assign _e_2415 = \cfg [19:0];
    assign _e_2413 = duration_n1 > _e_2415;
    assign _e_2406 = _e_2407 && _e_2413;
    always_comb begin
        priority casez ({_e_3831, _e_3837})
            2'b1?: \sclk  = _e_2402;
            2'b01: \sclk  = _e_2406;
            2'b?: \sclk  = 1'dx;
        endcase
    end
    assign __n4 = \state [27:20];
    assign duration_n2 = \state [19:0];
    assign _e_3839 = \state [28] == 1'd1;
    localparam[0:0] _e_3840 = 1;
    localparam[0:0] _e_3841 = 1;
    assign _e_3842 = _e_3839 && _e_3840;
    assign _e_3843 = _e_3842 && _e_3841;
    assign _e_2426 = \cfg [39:20];
    localparam[19:0] _e_2428 = 2;
    assign _e_2425 = _e_2426 / _e_2428;
    assign _e_2423 = duration_n2 == _e_2425;
    assign __n5 = \state ;
    localparam[0:0] _e_3844 = 1;
    localparam[0:0] _e_2430 = 0;
    always_comb begin
        priority casez ({_e_3843, _e_3844})
            2'b1?: \rising  = _e_2423;
            2'b01: \rising  = _e_2430;
            2'b?: \rising  = 1'dx;
        endcase
    end
    assign __n6 = \state [27:20];
    assign duration_n3 = \state [19:0];
    assign _e_3846 = \state [28] == 1'd1;
    localparam[0:0] _e_3847 = 1;
    localparam[0:0] _e_3848 = 1;
    assign _e_3849 = _e_3846 && _e_3847;
    assign _e_3850 = _e_3849 && _e_3848;
    localparam[19:0] _e_2439 = 1;
    assign _e_2437 = duration_n3 == _e_2439;
    assign __n7 = \state ;
    localparam[0:0] _e_3851 = 1;
    localparam[0:0] _e_2441 = 0;
    always_comb begin
        priority casez ({_e_3850, _e_3851})
            2'b1?: \falling  = _e_2437;
            2'b01: \falling  = _e_2441;
            2'b?: \falling  = 1'dx;
        endcase
    end
    assign _e_2443 = {\sclk , \falling , \rising };
    assign output__ = _e_2443;
endmodule

module \protocols::spi::spi_controller  (
        input clk_i,
        input rst_i,
        input[8:0] write_i,
        output ready_o,
        input[15:0] config_i,
        output sclk_o,
        output mosi_o,
        input miso_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::spi::spi_controller" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::spi::spi_controller );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[8:0] \write ;
    assign \write  = write_i;
    logic \ready_mut ;
    assign ready_o = \ready_mut ;
    logic[15:0] \config ;
    assign \config  = config_i;
    logic \sclk_mut ;
    assign sclk_o = \sclk_mut ;
    logic \mosi_mut ;
    assign mosi_o = \mosi_mut ;
    logic \miso ;
    assign \miso  = miso_i;
    (* src = "build/libs/protocols/src/spi.spade:20,31" *)
    logic[27:0] _e_2451;
    (* src = "build/libs/protocols/src/spi.spade:21,15" *)
    logic[36:0] _e_2454;
    (* src = "build/libs/protocols/src/spi.spade:22,13" *)
    logic[36:0] _e_2459;
    (* src = "build/libs/protocols/src/spi.spade:22,13" *)
    logic[27:0] _e_2457;
    (* src = "build/libs/protocols/src/spi.spade:22,13" *)
    logic[8:0] _e_2458;
    logic _e_3854;
    logic _e_3856;
    logic _e_3857;
    (* src = "build/libs/protocols/src/spi.spade:22,36" *)
    logic[27:0] _e_2460;
    (* src = "build/libs/protocols/src/spi.spade:23,13" *)
    logic[36:0] _e_2464;
    (* src = "build/libs/protocols/src/spi.spade:23,13" *)
    logic[27:0] _e_2461;
    (* src = "build/libs/protocols/src/spi.spade:23,13" *)
    logic[8:0] _e_2463;
    (* src = "build/libs/protocols/src/spi.spade:23,27" *)
    logic[7:0] \byte ;
    logic _e_3860;
    logic _e_3862;
    logic _e_3864;
    logic _e_3865;
    (* src = "build/libs/protocols/src/spi.spade:25,38" *)
    logic[15:0] _e_2469;
    (* src = "build/libs/protocols/src/spi.spade:25,38" *)
    logic[16:0] _e_2468;
    (* src = "build/libs/protocols/src/spi.spade:25,32" *)
    logic[15:0] _e_2467;
    (* src = "build/libs/protocols/src/spi.spade:26,23" *)
    logic[7:0] _e_2472;
    (* src = "build/libs/protocols/src/spi.spade:23,42" *)
    logic[27:0] _e_2465;
    (* src = "build/libs/protocols/src/spi.spade:28,13" *)
    logic[36:0] _e_2479;
    (* src = "build/libs/protocols/src/spi.spade:28,13" *)
    logic[27:0] _e_2477;
    (* src = "build/libs/protocols/src/spi.spade:28,14" *)
    logic[2:0] _e_2474;
    (* src = "build/libs/protocols/src/spi.spade:28,14" *)
    logic[15:0] _e_2475;
    (* src = "build/libs/protocols/src/spi.spade:28,14" *)
    logic[7:0] byte_n1;
    (* src = "build/libs/protocols/src/spi.spade:28,13" *)
    logic[8:0] \_ ;
    logic _e_3868;
    logic _e_3869;
    logic _e_3871;
    logic _e_3874;
    logic _e_3875;
    logic _e_3876;
    logic _e_3878;
    (* src = "build/libs/protocols/src/spi.spade:29,17" *)
    logic[27:0] _e_2481;
    (* src = "build/libs/protocols/src/spi.spade:31,13" *)
    logic[36:0] _e_2487;
    (* src = "build/libs/protocols/src/spi.spade:31,13" *)
    logic[27:0] _e_2485;
    (* src = "build/libs/protocols/src/spi.spade:31,14" *)
    logic[2:0] \bits_left ;
    (* src = "build/libs/protocols/src/spi.spade:31,14" *)
    logic[15:0] _e_2483;
    (* src = "build/libs/protocols/src/spi.spade:31,14" *)
    logic[7:0] byte_n2;
    (* src = "build/libs/protocols/src/spi.spade:31,13" *)
    logic[8:0] __n1;
    logic _e_3881;
    logic _e_3883;
    logic _e_3886;
    logic _e_3887;
    logic _e_3888;
    logic _e_3890;
    (* src = "build/libs/protocols/src/spi.spade:33,38" *)
    logic[3:0] _e_2491;
    (* src = "build/libs/protocols/src/spi.spade:33,32" *)
    logic[2:0] _e_2490;
    (* src = "build/libs/protocols/src/spi.spade:34,42" *)
    logic[15:0] _e_2496;
    (* src = "build/libs/protocols/src/spi.spade:34,42" *)
    logic[16:0] _e_2495;
    (* src = "build/libs/protocols/src/spi.spade:34,36" *)
    logic[15:0] _e_2494;
    (* src = "build/libs/protocols/src/spi.spade:32,17" *)
    logic[27:0] _e_2489;
    (* src = "build/libs/protocols/src/spi.spade:38,13" *)
    logic[36:0] _e_2505;
    (* src = "build/libs/protocols/src/spi.spade:38,13" *)
    logic[27:0] _e_2503;
    (* src = "build/libs/protocols/src/spi.spade:38,14" *)
    logic[2:0] bits_left_n1;
    (* src = "build/libs/protocols/src/spi.spade:38,14" *)
    logic[15:0] \duration_left ;
    (* src = "build/libs/protocols/src/spi.spade:38,14" *)
    logic[7:0] byte_n3;
    (* src = "build/libs/protocols/src/spi.spade:38,13" *)
    logic[8:0] __n2;
    logic _e_3893;
    logic _e_3897;
    logic _e_3898;
    logic _e_3899;
    logic _e_3901;
    (* src = "build/libs/protocols/src/spi.spade:39,63" *)
    logic[16:0] _e_2510;
    (* src = "build/libs/protocols/src/spi.spade:39,57" *)
    logic[15:0] _e_2509;
    (* src = "build/libs/protocols/src/spi.spade:39,17" *)
    logic[27:0] _e_2507;
    (* src = "build/libs/protocols/src/spi.spade:21,9" *)
    logic[27:0] _e_2453;
    (* src = "build/libs/protocols/src/spi.spade:20,14" *)
    reg[27:0] \state ;
    logic _e_3903;
    (* src = "build/libs/protocols/src/spi.spade:46,9" *)
    logic[27:0] __n3;
    (* src = "build/libs/protocols/src/spi.spade:44,18" *)
    logic _e_2515;
    logic _e_3906;
    (* src = "build/libs/protocols/src/spi.spade:51,9" *)
    logic[2:0] __n4;
    (* src = "build/libs/protocols/src/spi.spade:51,9" *)
    logic[15:0] duration_left_n1;
    (* src = "build/libs/protocols/src/spi.spade:51,9" *)
    logic[7:0] __n5;
    logic _e_3908;
    logic _e_3912;
    logic _e_3913;
    logic _e_3914;
    (* src = "build/libs/protocols/src/spi.spade:52,29" *)
    logic[15:0] _e_2536;
    (* src = "build/libs/protocols/src/spi.spade:52,29" *)
    logic[15:0] _e_2535;
    (* src = "build/libs/protocols/src/spi.spade:52,13" *)
    logic _e_2533;
    (* src = "build/libs/protocols/src/spi.spade:49,17" *)
    logic _e_2523;
    logic _e_3916;
    (* src = "build/libs/protocols/src/spi.spade:58,9" *)
    logic[2:0] bits_left_n2;
    (* src = "build/libs/protocols/src/spi.spade:58,9" *)
    logic[15:0] duration_left_n2;
    (* src = "build/libs/protocols/src/spi.spade:58,9" *)
    logic[7:0] byte_n4;
    logic _e_3918;
    logic _e_3922;
    logic _e_3923;
    logic _e_3924;
    (* src = "build/libs/protocols/src/spi.spade:59,13" *)
    logic _e_2550;
    (* src = "build/libs/protocols/src/spi.spade:56,17" *)
    logic _e_2540;
    logic _e_3926;
    (* src = "build/libs/protocols/src/spi.spade:65,9" *)
    logic[2:0] __n6;
    (* src = "build/libs/protocols/src/spi.spade:65,9" *)
    logic[15:0] duration_left_n3;
    (* src = "build/libs/protocols/src/spi.spade:65,9" *)
    logic[7:0] __n7;
    logic _e_3928;
    logic _e_3932;
    logic _e_3933;
    logic _e_3934;
    (* src = "build/libs/protocols/src/spi.spade:66,33" *)
    logic[15:0] _e_2568;
    (* src = "build/libs/protocols/src/spi.spade:66,33" *)
    logic[15:0] _e_2567;
    (* src = "build/libs/protocols/src/spi.spade:66,16" *)
    logic _e_2565;
    (* src = "build/libs/protocols/src/spi.spade:67,17" *)
    logic _e_2573;
    (* src = "build/libs/protocols/src/spi.spade:67,32" *)
    logic[6:0] _e_2576;
    (* src = "build/libs/protocols/src/spi.spade:67,17" *)
    logic[7:0] _e_2572;
    (* src = "build/libs/protocols/src/spi.spade:66,13" *)
    logic[7:0] _e_2564;
    (* src = "build/libs/protocols/src/spi.spade:63,25" *)
    logic[7:0] _e_2555;
    (* src = "build/libs/protocols/src/spi.spade:63,14" *)
    reg[7:0] \captured ;
    (* src = "build/libs/protocols/src/spi.spade:75,9" *)
    logic[2:0] _e_2584;
    (* src = "build/libs/protocols/src/spi.spade:75,9" *)
    logic[15:0] _e_2585;
    (* src = "build/libs/protocols/src/spi.spade:75,9" *)
    logic[7:0] byte_n5;
    logic _e_3936;
    logic _e_3937;
    logic _e_3939;
    logic _e_3942;
    logic _e_3943;
    logic _e_3944;
    (* src = "build/libs/protocols/src/spi.spade:76,18" *)
    logic[7:0] _e_2590;
    (* src = "build/libs/protocols/src/spi.spade:76,13" *)
    logic[8:0] _e_2589;
    (* src = "build/libs/protocols/src/spi.spade:78,9" *)
    logic[27:0] __n8;
    (* src = "build/libs/protocols/src/spi.spade:78,14" *)
    logic[8:0] _e_2593;
    (* src = "build/libs/protocols/src/spi.spade:74,5" *)
    logic[8:0] _e_2582;
    assign _e_2451 = {1'd0, 27'bX};
    assign _e_2454 = {\state , \write };
    assign _e_2459 = _e_2454;
    assign _e_2457 = _e_2454[36:9];
    assign _e_2458 = _e_2454[8:0];
    assign _e_3854 = _e_2457[27] == 1'd0;
    assign _e_3856 = _e_2458[8] == 1'd0;
    assign _e_3857 = _e_3854 && _e_3856;
    assign _e_2460 = {1'd0, 27'bX};
    assign _e_2464 = _e_2454;
    assign _e_2461 = _e_2454[36:9];
    assign _e_2463 = _e_2454[8:0];
    assign \byte  = _e_2463[7:0];
    assign _e_3860 = _e_2461[27] == 1'd0;
    assign _e_3862 = _e_2463[8] == 1'd1;
    localparam[0:0] _e_3863 = 1;
    assign _e_3864 = _e_3862 && _e_3863;
    assign _e_3865 = _e_3860 && _e_3864;
    localparam[2:0] _e_2466 = 7;
    assign _e_2469 = \config [15:0];
    localparam[15:0] _e_2471 = 1;
    assign _e_2468 = _e_2469 - _e_2471;
    assign _e_2467 = _e_2468[15:0];
    (* src = "build/libs/protocols/src/spi.spade:26,23" *)
    \std::conv::impl_4::to_bits[1448]  to_bits_0(.self_i(\byte ), .output__(_e_2472));
    assign _e_2465 = {1'd1, _e_2466, _e_2467, _e_2472};
    assign _e_2479 = _e_2454;
    assign _e_2477 = _e_2454[36:9];
    assign _e_2474 = _e_2477[26:24];
    assign _e_2475 = _e_2477[23:8];
    assign byte_n1 = _e_2477[7:0];
    assign \_  = _e_2454[8:0];
    assign _e_3868 = _e_2477[27] == 1'd1;
    localparam[2:0] _e_3870 = 0;
    assign _e_3869 = _e_2474 == _e_3870;
    localparam[15:0] _e_3872 = 0;
    assign _e_3871 = _e_2475 == _e_3872;
    localparam[0:0] _e_3873 = 1;
    assign _e_3874 = _e_3868 && _e_3869;
    assign _e_3875 = _e_3874 && _e_3871;
    assign _e_3876 = _e_3875 && _e_3873;
    localparam[0:0] _e_3877 = 1;
    assign _e_3878 = _e_3876 && _e_3877;
    assign _e_2481 = {1'd0, 27'bX};
    assign _e_2487 = _e_2454;
    assign _e_2485 = _e_2454[36:9];
    assign \bits_left  = _e_2485[26:24];
    assign _e_2483 = _e_2485[23:8];
    assign byte_n2 = _e_2485[7:0];
    assign __n1 = _e_2454[8:0];
    assign _e_3881 = _e_2485[27] == 1'd1;
    localparam[0:0] _e_3882 = 1;
    localparam[15:0] _e_3884 = 0;
    assign _e_3883 = _e_2483 == _e_3884;
    localparam[0:0] _e_3885 = 1;
    assign _e_3886 = _e_3881 && _e_3882;
    assign _e_3887 = _e_3886 && _e_3883;
    assign _e_3888 = _e_3887 && _e_3885;
    localparam[0:0] _e_3889 = 1;
    assign _e_3890 = _e_3888 && _e_3889;
    localparam[2:0] _e_2493 = 1;
    assign _e_2491 = \bits_left  - _e_2493;
    assign _e_2490 = _e_2491[2:0];
    assign _e_2496 = \config [15:0];
    localparam[15:0] _e_2498 = 1;
    assign _e_2495 = _e_2496 - _e_2498;
    assign _e_2494 = _e_2495[15:0];
    assign _e_2489 = {1'd1, _e_2490, _e_2494, byte_n2};
    assign _e_2505 = _e_2454;
    assign _e_2503 = _e_2454[36:9];
    assign bits_left_n1 = _e_2503[26:24];
    assign \duration_left  = _e_2503[23:8];
    assign byte_n3 = _e_2503[7:0];
    assign __n2 = _e_2454[8:0];
    assign _e_3893 = _e_2503[27] == 1'd1;
    localparam[0:0] _e_3894 = 1;
    localparam[0:0] _e_3895 = 1;
    localparam[0:0] _e_3896 = 1;
    assign _e_3897 = _e_3893 && _e_3894;
    assign _e_3898 = _e_3897 && _e_3895;
    assign _e_3899 = _e_3898 && _e_3896;
    localparam[0:0] _e_3900 = 1;
    assign _e_3901 = _e_3899 && _e_3900;
    localparam[15:0] _e_2512 = 1;
    assign _e_2510 = \duration_left  - _e_2512;
    assign _e_2509 = _e_2510[15:0];
    assign _e_2507 = {1'd1, bits_left_n1, _e_2509, byte_n3};
    always_comb begin
        priority casez ({_e_3857, _e_3865, _e_3878, _e_3890, _e_3901})
            5'b1????: _e_2453 = _e_2460;
            5'b01???: _e_2453 = _e_2465;
            5'b001??: _e_2453 = _e_2481;
            5'b0001?: _e_2453 = _e_2489;
            5'b00001: _e_2453 = _e_2507;
            5'b?: _e_2453 = 28'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_2451;
        end
        else begin
            \state  <= _e_2453;
        end
    end
    assign _e_3903 = \state [27] == 1'd0;
    localparam[0:0] _e_2519 = 1;
    assign __n3 = \state ;
    localparam[0:0] _e_3904 = 1;
    localparam[0:0] _e_2521 = 0;
    always_comb begin
        priority casez ({_e_3903, _e_3904})
            2'b1?: _e_2515 = _e_2519;
            2'b01: _e_2515 = _e_2521;
            2'b?: _e_2515 = 1'dx;
        endcase
    end
    assign \ready_mut  = _e_2515;
    assign _e_3906 = \state [27] == 1'd0;
    localparam[0:0] _e_2527 = 0;
    assign __n4 = \state [26:24];
    assign duration_left_n1 = \state [23:8];
    assign __n5 = \state [7:0];
    assign _e_3908 = \state [27] == 1'd1;
    localparam[0:0] _e_3909 = 1;
    localparam[0:0] _e_3910 = 1;
    localparam[0:0] _e_3911 = 1;
    assign _e_3912 = _e_3908 && _e_3909;
    assign _e_3913 = _e_3912 && _e_3910;
    assign _e_3914 = _e_3913 && _e_3911;
    assign _e_2536 = \config [15:0];
    localparam[15:0] _e_2538 = 2;
    assign _e_2535 = _e_2536 / _e_2538;
    assign _e_2533 = duration_left_n1 < _e_2535;
    always_comb begin
        priority casez ({_e_3906, _e_3914})
            2'b1?: _e_2523 = _e_2527;
            2'b01: _e_2523 = _e_2533;
            2'b?: _e_2523 = 1'dx;
        endcase
    end
    assign \sclk_mut  = _e_2523;
    assign _e_3916 = \state [27] == 1'd0;
    localparam[0:0] _e_2544 = 1;
    assign bits_left_n2 = \state [26:24];
    assign duration_left_n2 = \state [23:8];
    assign byte_n4 = \state [7:0];
    assign _e_3918 = \state [27] == 1'd1;
    localparam[0:0] _e_3919 = 1;
    localparam[0:0] _e_3920 = 1;
    localparam[0:0] _e_3921 = 1;
    assign _e_3922 = _e_3918 && _e_3919;
    assign _e_3923 = _e_3922 && _e_3920;
    assign _e_3924 = _e_3923 && _e_3921;
    assign _e_2550 = byte_n4[bits_left_n2];
    always_comb begin
        priority casez ({_e_3916, _e_3924})
            2'b1?: _e_2540 = _e_2544;
            2'b01: _e_2540 = _e_2550;
            2'b?: _e_2540 = 1'dx;
        endcase
    end
    assign \mosi_mut  = _e_2540;
    assign _e_3926 = \state [27] == 1'd0;
    assign __n6 = \state [26:24];
    assign duration_left_n3 = \state [23:8];
    assign __n7 = \state [7:0];
    assign _e_3928 = \state [27] == 1'd1;
    localparam[0:0] _e_3929 = 1;
    localparam[0:0] _e_3930 = 1;
    localparam[0:0] _e_3931 = 1;
    assign _e_3932 = _e_3928 && _e_3929;
    assign _e_3933 = _e_3932 && _e_3930;
    assign _e_3934 = _e_3933 && _e_3931;
    assign _e_2568 = \config [15:0];
    localparam[15:0] _e_2570 = 2;
    assign _e_2567 = _e_2568 / _e_2570;
    assign _e_2565 = duration_left_n3 == _e_2567;
    assign _e_2573 = {\miso };
    assign _e_2576 = \captured [6-:7];
    (* src = "build/libs/protocols/src/spi.spade:67,17" *)
    \std::array::impl_0::concat[1453]  concat_0(.self_i(_e_2573), .other_i(_e_2576), .output__(_e_2572));
    assign _e_2564 = _e_2565 ? _e_2572 : \captured ;
    always_comb begin
        priority casez ({_e_3926, _e_3934})
            2'b1?: _e_2555 = \captured ;
            2'b01: _e_2555 = _e_2564;
            2'b?: _e_2555 = 8'dx;
        endcase
    end
    always @(posedge \clk ) begin
        \captured  <= _e_2555;
    end
    assign _e_2584 = \state [26:24];
    assign _e_2585 = \state [23:8];
    assign byte_n5 = \state [7:0];
    assign _e_3936 = \state [27] == 1'd1;
    localparam[2:0] _e_3938 = 0;
    assign _e_3937 = _e_2584 == _e_3938;
    localparam[15:0] _e_3940 = 0;
    assign _e_3939 = _e_2585 == _e_3940;
    localparam[0:0] _e_3941 = 1;
    assign _e_3942 = _e_3936 && _e_3937;
    assign _e_3943 = _e_3942 && _e_3939;
    assign _e_3944 = _e_3943 && _e_3941;
    (* src = "build/libs/protocols/src/spi.spade:76,18" *)
    \std::conv::impl_1::to_uint[1454]  to_uint_0(.self_i(\captured ), .output__(_e_2590));
    assign _e_2589 = {1'd1, _e_2590};
    assign __n8 = \state ;
    localparam[0:0] _e_3945 = 1;
    assign _e_2593 = {1'd0, 8'bX};
    always_comb begin
        priority casez ({_e_3944, _e_3945})
            2'b1?: _e_2582 = _e_2589;
            2'b01: _e_2582 = _e_2593;
            2'b?: _e_2582 = 9'dx;
        endcase
    end
    assign output__ = _e_2582;
endmodule

module \protocols::test::uart_loopback  (
        input clk_i,
        input rst_i,
        input[18:0] config_i,
        input[8:0] to_transmit_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::test::uart_loopback" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::test::uart_loopback );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[18:0] \config ;
    assign \config  = config_i;
    logic[8:0] \to_transmit ;
    assign \to_transmit  = to_transmit_i;
    (* src = "build/libs/protocols/src/test.spade:10,58" *)
    logic _e_3946;
    (* src = "build/libs/protocols/src/test.spade:10,58" *)
    logic _e_3947_mut;
    (* src = "build/libs/protocols/src/test.spade:10,58" *)
    logic _e_2602;
    (* src = "build/libs/protocols/src/test.spade:10,58" *)
    logic _e_2602_mut;
    (* src = "build/libs/protocols/src/test.spade:10,58" *)
    logic _e_2601_mut;
    (* src = "build/libs/protocols/src/test.spade:10,41" *)
    logic[8:0] _e_2598;
    (* src = "build/libs/protocols/src/test.spade:10,41" *)
    logic _e_2598_mut;
    (* src = "build/libs/protocols/src/test.spade:10,18" *)
    logic \tx_out ;
    (* src = "build/libs/protocols/src/test.spade:11,18" *)
    logic[9:0] \rx_out ;
    (* src = "build/libs/protocols/src/test.spade:13,39" *)
    logic[9:0] _e_2614;
    logic _e_3949;
    (* src = "build/libs/protocols/src/test.spade:15,9" *)
    logic[9:0] \other ;
    (* src = "build/libs/protocols/src/test.spade:13,58" *)
    logic[9:0] _e_2615;
    (* src = "build/libs/protocols/src/test.spade:13,14" *)
    reg[9:0] \last_received ;
    
    assign _e_3946 = _e_3947_mut;
    assign _e_2602 = {_e_3946};
    assign {_e_3947_mut} = _e_2602_mut;
    assign _e_2602_mut = _e_2601_mut;
    assign _e_2598 = {\to_transmit };
    assign {_e_2601_mut} = _e_2598_mut;
    (* src = "build/libs/protocols/src/test.spade:10,18" *)
    \protocols::uart::uart_tx  uart_tx_0(.clk_i(\clk ), .rst_i(\rst ), .transmit_i(_e_2598), .transmit_o(_e_2598_mut), .config_i(\config ), .output__(\tx_out ));
    (* src = "build/libs/protocols/src/test.spade:11,18" *)
    \protocols::uart::uart_rx  uart_rx_0(.clk_i(\clk ), .rst_i(\rst ), .rx_i(\tx_out ), .config_i(\config ), .output__(\rx_out ));
    assign _e_2614 = {2'd2, 8'bX};
    assign _e_3949 = \rx_out [9:8] == 2'd2;
    assign \other  = \rx_out ;
    localparam[0:0] _e_3950 = 1;
    always_comb begin
        priority casez ({_e_3949, _e_3950})
            2'b1?: _e_2615 = \last_received ;
            2'b01: _e_2615 = \rx_out ;
            2'b?: _e_2615 = 10'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \last_received  <= _e_2614;
        end
        else begin
            \last_received  <= _e_2615;
        end
    end
    assign output__ = \last_received ;
endmodule

module \protocols::uart::uart_tx  (
        input clk_i,
        input rst_i,
        input[8:0] transmit_i, output transmit_o,
        input[18:0] config_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::uart::uart_tx" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::uart::uart_tx );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[8:0] \transmit ;
    assign \transmit  = transmit_i;
    logic \transmit_mut ;
    assign transmit_o = \transmit_mut ;
    logic[18:0] \config ;
    assign \config  = config_i;
    (* src = "build/libs/protocols/src/uart.spade:31,32" *)
    logic[30:0] _e_2626;
    logic _e_3952;
    (* src = "build/libs/protocols/src/uart.spade:34,24" *)
    logic[8:0] _e_2633;
    (* src = "build/libs/protocols/src/uart.spade:36,21" *)
    logic[8:0] _e_2637;
    (* src = "build/libs/protocols/src/uart.spade:36,21" *)
    logic[7:0] \data ;
    logic _e_3954;
    logic _e_3956;
    (* src = "build/libs/protocols/src/uart.spade:36,35" *)
    logic[30:0] _e_2638;
    (* src = "build/libs/protocols/src/uart.spade:37,21" *)
    logic[8:0] _e_2641;
    logic _e_3958;
    (* src = "build/libs/protocols/src/uart.spade:37,29" *)
    logic[30:0] _e_2642;
    (* src = "build/libs/protocols/src/uart.spade:34,17" *)
    logic[30:0] _e_2632;
    (* src = "build/libs/protocols/src/uart.spade:40,13" *)
    logic[14:0] \time ;
    (* src = "build/libs/protocols/src/uart.spade:40,13" *)
    logic[7:0] \to_tx ;
    logic _e_3960;
    logic _e_3963;
    logic _e_3964;
    (* src = "build/libs/protocols/src/uart.spade:41,34" *)
    logic[14:0] _e_2652;
    (* src = "build/libs/protocols/src/uart.spade:41,34" *)
    logic[15:0] _e_2651;
    (* src = "build/libs/protocols/src/uart.spade:41,28" *)
    logic[14:0] _e_2650;
    (* src = "build/libs/protocols/src/uart.spade:41,20" *)
    logic _e_2648;
    (* src = "build/libs/protocols/src/uart.spade:42,48" *)
    logic[7:0] _e_2661;
    (* src = "build/libs/protocols/src/uart.spade:42,47" *)
    logic _e_2660;
    (* src = "build/libs/protocols/src/uart.spade:42,21" *)
    logic[30:0] _e_2656;
    (* src = "build/libs/protocols/src/uart.spade:45,45" *)
    logic[15:0] _e_2668;
    (* src = "build/libs/protocols/src/uart.spade:45,39" *)
    logic[14:0] _e_2667;
    (* src = "build/libs/protocols/src/uart.spade:45,21" *)
    logic[30:0] _e_2666;
    (* src = "build/libs/protocols/src/uart.spade:41,17" *)
    logic[30:0] _e_2647;
    (* src = "build/libs/protocols/src/uart.spade:48,13" *)
    logic[14:0] time_n1;
    (* src = "build/libs/protocols/src/uart.spade:48,13" *)
    logic[3:0] \num_left ;
    (* src = "build/libs/protocols/src/uart.spade:48,13" *)
    logic[7:0] to_tx_n1;
    (* src = "build/libs/protocols/src/uart.spade:48,13" *)
    logic \odd_parity ;
    logic _e_3966;
    logic _e_3971;
    logic _e_3972;
    logic _e_3973;
    logic _e_3974;
    (* src = "build/libs/protocols/src/uart.spade:49,34" *)
    logic[14:0] _e_2683;
    (* src = "build/libs/protocols/src/uart.spade:49,34" *)
    logic[15:0] _e_2682;
    (* src = "build/libs/protocols/src/uart.spade:49,28" *)
    logic[14:0] _e_2681;
    (* src = "build/libs/protocols/src/uart.spade:49,20" *)
    logic _e_2679;
    (* src = "build/libs/protocols/src/uart.spade:50,24" *)
    logic _e_2688;
    (* src = "build/libs/protocols/src/uart.spade:51,28" *)
    logic _e_2693;
    (* src = "build/libs/protocols/src/uart.spade:52,29" *)
    logic[30:0] _e_2696;
    (* src = "build/libs/protocols/src/uart.spade:54,49" *)
    logic[2:0] _e_2702;
    (* src = "build/libs/protocols/src/uart.spade:54,29" *)
    logic[30:0] _e_2700;
    (* src = "build/libs/protocols/src/uart.spade:51,25" *)
    logic[30:0] _e_2692;
    (* src = "build/libs/protocols/src/uart.spade:60,45" *)
    logic[4:0] _e_2708;
    (* src = "build/libs/protocols/src/uart.spade:60,39" *)
    logic[3:0] _e_2707;
    (* src = "build/libs/protocols/src/uart.spade:61,36" *)
    logic[7:0] _e_2711;
    (* src = "build/libs/protocols/src/uart.spade:62,57" *)
    logic[7:0] _e_2718;
    (* src = "build/libs/protocols/src/uart.spade:62,56" *)
    logic[7:0] _e_2717;
    (* src = "build/libs/protocols/src/uart.spade:62,55" *)
    logic _e_2716;
    (* src = "build/libs/protocols/src/uart.spade:62,41" *)
    logic _e_2714;
    (* src = "build/libs/protocols/src/uart.spade:58,25" *)
    logic[30:0] _e_2705;
    (* src = "build/libs/protocols/src/uart.spade:50,21" *)
    logic[30:0] _e_2687;
    (* src = "build/libs/protocols/src/uart.spade:68,37" *)
    logic[15:0] _e_2726;
    (* src = "build/libs/protocols/src/uart.spade:68,31" *)
    logic[14:0] _e_2725;
    (* src = "build/libs/protocols/src/uart.spade:67,21" *)
    logic[30:0] _e_2724;
    (* src = "build/libs/protocols/src/uart.spade:49,17" *)
    logic[30:0] _e_2678;
    (* src = "build/libs/protocols/src/uart.spade:75,13" *)
    logic[14:0] time_n2;
    (* src = "build/libs/protocols/src/uart.spade:75,13" *)
    logic \odd ;
    logic _e_3976;
    logic _e_3979;
    logic _e_3980;
    (* src = "build/libs/protocols/src/uart.spade:76,34" *)
    logic[14:0] _e_2741;
    (* src = "build/libs/protocols/src/uart.spade:76,34" *)
    logic[15:0] _e_2740;
    (* src = "build/libs/protocols/src/uart.spade:76,28" *)
    logic[14:0] _e_2739;
    (* src = "build/libs/protocols/src/uart.spade:76,20" *)
    logic _e_2737;
    (* src = "build/libs/protocols/src/uart.spade:77,41" *)
    logic[2:0] _e_2747;
    (* src = "build/libs/protocols/src/uart.spade:77,21" *)
    logic[30:0] _e_2745;
    (* src = "build/libs/protocols/src/uart.spade:79,50" *)
    logic[15:0] _e_2752;
    (* src = "build/libs/protocols/src/uart.spade:79,44" *)
    logic[14:0] _e_2751;
    (* src = "build/libs/protocols/src/uart.spade:79,21" *)
    logic[30:0] _e_2750;
    (* src = "build/libs/protocols/src/uart.spade:76,17" *)
    logic[30:0] _e_2736;
    (* src = "build/libs/protocols/src/uart.spade:82,13" *)
    logic[14:0] time_n3;
    (* src = "build/libs/protocols/src/uart.spade:82,13" *)
    logic[2:0] \count ;
    logic _e_3982;
    logic _e_3985;
    logic _e_3986;
    (* src = "build/libs/protocols/src/uart.spade:83,34" *)
    logic[14:0] _e_2765;
    (* src = "build/libs/protocols/src/uart.spade:83,34" *)
    logic[15:0] _e_2764;
    (* src = "build/libs/protocols/src/uart.spade:83,28" *)
    logic[14:0] _e_2763;
    (* src = "build/libs/protocols/src/uart.spade:83,20" *)
    logic _e_2761;
    (* src = "build/libs/protocols/src/uart.spade:84,24" *)
    logic _e_2770;
    (* src = "build/libs/protocols/src/uart.spade:85,25" *)
    logic[30:0] _e_2774;
    (* src = "build/libs/protocols/src/uart.spade:87,62" *)
    logic[3:0] _e_2779;
    (* src = "build/libs/protocols/src/uart.spade:87,56" *)
    logic[2:0] _e_2778;
    (* src = "build/libs/protocols/src/uart.spade:87,25" *)
    logic[30:0] _e_2776;
    (* src = "build/libs/protocols/src/uart.spade:84,21" *)
    logic[30:0] _e_2769;
    (* src = "build/libs/protocols/src/uart.spade:91,51" *)
    logic[15:0] _e_2785;
    (* src = "build/libs/protocols/src/uart.spade:91,45" *)
    logic[14:0] _e_2784;
    (* src = "build/libs/protocols/src/uart.spade:91,21" *)
    logic[30:0] _e_2783;
    (* src = "build/libs/protocols/src/uart.spade:83,17" *)
    logic[30:0] _e_2760;
    (* src = "build/libs/protocols/src/uart.spade:32,9" *)
    logic[30:0] _e_2628;
    (* src = "build/libs/protocols/src/uart.spade:31,14" *)
    reg[30:0] \state ;
    (* src = "build/libs/protocols/src/uart.spade:97,9" *)
    logic _e_2789_mut;
    logic _e_3988;
    (* src = "build/libs/protocols/src/uart.spade:99,9" *)
    logic[30:0] \_ ;
    (* src = "build/libs/protocols/src/uart.spade:97,27" *)
    logic _e_2791;
    logic _e_3991;
    (* src = "build/libs/protocols/src/uart.spade:104,9" *)
    logic[14:0] __n1;
    (* src = "build/libs/protocols/src/uart.spade:104,9" *)
    logic[7:0] __n2;
    logic _e_3993;
    logic _e_3996;
    logic _e_3997;
    (* src = "build/libs/protocols/src/uart.spade:105,9" *)
    logic[14:0] __n3;
    (* src = "build/libs/protocols/src/uart.spade:105,9" *)
    logic[3:0] __n4;
    (* src = "build/libs/protocols/src/uart.spade:105,9" *)
    logic[7:0] to_tx_n2;
    (* src = "build/libs/protocols/src/uart.spade:105,9" *)
    logic __n5;
    logic _e_3999;
    logic _e_4004;
    logic _e_4005;
    logic _e_4006;
    logic _e_4007;
    (* src = "build/libs/protocols/src/uart.spade:105,41" *)
    logic[7:0] _e_2812;
    (* src = "build/libs/protocols/src/uart.spade:105,41" *)
    logic _e_2811;
    (* src = "build/libs/protocols/src/uart.spade:106,9" *)
    logic[14:0] __n6;
    (* src = "build/libs/protocols/src/uart.spade:106,9" *)
    logic odd_n1;
    logic _e_4009;
    logic _e_4012;
    logic _e_4013;
    (* src = "build/libs/protocols/src/uart.spade:107,9" *)
    logic[14:0] __n7;
    (* src = "build/libs/protocols/src/uart.spade:107,9" *)
    logic[2:0] __n8;
    logic _e_4015;
    logic _e_4018;
    logic _e_4019;
    (* src = "build/libs/protocols/src/uart.spade:102,5" *)
    logic _e_2798;
    assign _e_2626 = {3'd0, 28'bX};
    assign _e_3952 = \state [30:28] == 3'd0;
    assign _e_2633 = \transmit [8:0];
    assign _e_2637 = _e_2633;
    assign \data  = _e_2633[7:0];
    assign _e_3954 = _e_2633[8] == 1'd1;
    localparam[0:0] _e_3955 = 1;
    assign _e_3956 = _e_3954 && _e_3955;
    localparam[14:0] _e_2639 = 0;
    assign _e_2638 = {3'd1, _e_2639, \data , 5'bX};
    assign _e_2641 = _e_2633;
    assign _e_3958 = _e_2633[8] == 1'd0;
    assign _e_2642 = {3'd0, 28'bX};
    always_comb begin
        priority casez ({_e_3956, _e_3958})
            2'b1?: _e_2632 = _e_2638;
            2'b01: _e_2632 = _e_2642;
            2'b?: _e_2632 = 31'dx;
        endcase
    end
    assign \time  = \state [27:13];
    assign \to_tx  = \state [12:5];
    assign _e_3960 = \state [30:28] == 3'd1;
    localparam[0:0] _e_3961 = 1;
    localparam[0:0] _e_3962 = 1;
    assign _e_3963 = _e_3960 && _e_3961;
    assign _e_3964 = _e_3963 && _e_3962;
    assign _e_2652 = \config [18:4];
    localparam[14:0] _e_2654 = 1;
    assign _e_2651 = _e_2652 - _e_2654;
    assign _e_2650 = _e_2651[14:0];
    assign _e_2648 = \time  == _e_2650;
    localparam[14:0] _e_2657 = 0;
    localparam[3:0] _e_2658 = 7;
    localparam[7:0] _e_2663 = 1;
    assign _e_2661 = \to_tx  & _e_2663;
    localparam[7:0] _e_2664 = 1;
    assign _e_2660 = _e_2661 == _e_2664;
    assign _e_2656 = {3'd2, _e_2657, _e_2658, \to_tx , _e_2660};
    localparam[14:0] _e_2670 = 1;
    assign _e_2668 = \time  + _e_2670;
    assign _e_2667 = _e_2668[14:0];
    assign _e_2666 = {3'd1, _e_2667, \to_tx , 5'bX};
    assign _e_2647 = _e_2648 ? _e_2656 : _e_2666;
    assign time_n1 = \state [27:13];
    assign \num_left  = \state [12:9];
    assign to_tx_n1 = \state [8:1];
    assign \odd_parity  = \state [0:0];
    assign _e_3966 = \state [30:28] == 3'd2;
    localparam[0:0] _e_3967 = 1;
    localparam[0:0] _e_3968 = 1;
    localparam[0:0] _e_3969 = 1;
    localparam[0:0] _e_3970 = 1;
    assign _e_3971 = _e_3966 && _e_3967;
    assign _e_3972 = _e_3971 && _e_3968;
    assign _e_3973 = _e_3972 && _e_3969;
    assign _e_3974 = _e_3973 && _e_3970;
    assign _e_2683 = \config [18:4];
    localparam[14:0] _e_2685 = 1;
    assign _e_2682 = _e_2683 - _e_2685;
    assign _e_2681 = _e_2682[14:0];
    assign _e_2679 = time_n1 == _e_2681;
    localparam[3:0] _e_2690 = 0;
    assign _e_2688 = \num_left  == _e_2690;
    assign _e_2693 = \config [3];
    localparam[14:0] _e_2697 = 0;
    assign _e_2696 = {3'd3, _e_2697, \odd_parity , 12'bX};
    localparam[14:0] _e_2701 = 0;
    assign _e_2702 = \config [2:0];
    assign _e_2700 = {3'd4, _e_2701, _e_2702, 10'bX};
    assign _e_2692 = _e_2693 ? _e_2696 : _e_2700;
    localparam[14:0] _e_2706 = 0;
    localparam[3:0] _e_2710 = 1;
    assign _e_2708 = \num_left  - _e_2710;
    assign _e_2707 = _e_2708[3:0];
    localparam[7:0] _e_2713 = 1;
    assign _e_2711 = to_tx_n1 >> _e_2713;
    localparam[7:0] _e_2720 = 1;
    assign _e_2718 = to_tx_n1 >> _e_2720;
    localparam[7:0] _e_2721 = 1;
    assign _e_2717 = _e_2718 & _e_2721;
    localparam[7:0] _e_2722 = 1;
    assign _e_2716 = _e_2717 == _e_2722;
    assign _e_2714 = \odd_parity  ^ _e_2716;
    assign _e_2705 = {3'd2, _e_2706, _e_2707, _e_2711, _e_2714};
    assign _e_2687 = _e_2688 ? _e_2692 : _e_2705;
    localparam[14:0] _e_2728 = 1;
    assign _e_2726 = time_n1 + _e_2728;
    assign _e_2725 = _e_2726[14:0];
    assign _e_2724 = {3'd2, _e_2725, \num_left , to_tx_n1, \odd_parity };
    assign _e_2678 = _e_2679 ? _e_2687 : _e_2724;
    assign time_n2 = \state [27:13];
    assign \odd  = \state [12:12];
    assign _e_3976 = \state [30:28] == 3'd3;
    localparam[0:0] _e_3977 = 1;
    localparam[0:0] _e_3978 = 1;
    assign _e_3979 = _e_3976 && _e_3977;
    assign _e_3980 = _e_3979 && _e_3978;
    assign _e_2741 = \config [18:4];
    localparam[14:0] _e_2743 = 1;
    assign _e_2740 = _e_2741 - _e_2743;
    assign _e_2739 = _e_2740[14:0];
    assign _e_2737 = time_n2 == _e_2739;
    localparam[14:0] _e_2746 = 0;
    assign _e_2747 = \config [2:0];
    assign _e_2745 = {3'd4, _e_2746, _e_2747, 10'bX};
    localparam[14:0] _e_2754 = 1;
    assign _e_2752 = time_n2 + _e_2754;
    assign _e_2751 = _e_2752[14:0];
    assign _e_2750 = {3'd3, _e_2751, \odd , 12'bX};
    assign _e_2736 = _e_2737 ? _e_2745 : _e_2750;
    assign time_n3 = \state [27:13];
    assign \count  = \state [12:10];
    assign _e_3982 = \state [30:28] == 3'd4;
    localparam[0:0] _e_3983 = 1;
    localparam[0:0] _e_3984 = 1;
    assign _e_3985 = _e_3982 && _e_3983;
    assign _e_3986 = _e_3985 && _e_3984;
    assign _e_2765 = \config [18:4];
    localparam[14:0] _e_2767 = 1;
    assign _e_2764 = _e_2765 - _e_2767;
    assign _e_2763 = _e_2764[14:0];
    assign _e_2761 = time_n3 == _e_2763;
    localparam[2:0] _e_2772 = 1;
    assign _e_2770 = \count  == _e_2772;
    assign _e_2774 = {3'd0, 28'bX};
    localparam[2:0] _e_2781 = 1;
    assign _e_2779 = \count  - _e_2781;
    assign _e_2778 = _e_2779[2:0];
    assign _e_2776 = {3'd4, time_n3, _e_2778, 10'bX};
    assign _e_2769 = _e_2770 ? _e_2774 : _e_2776;
    localparam[14:0] _e_2787 = 1;
    assign _e_2785 = time_n3 + _e_2787;
    assign _e_2784 = _e_2785[14:0];
    assign _e_2783 = {3'd4, _e_2784, \count , 10'bX};
    assign _e_2760 = _e_2761 ? _e_2769 : _e_2783;
    always_comb begin
        priority casez ({_e_3952, _e_3964, _e_3974, _e_3980, _e_3986})
            5'b1????: _e_2628 = _e_2632;
            5'b01???: _e_2628 = _e_2647;
            5'b001??: _e_2628 = _e_2678;
            5'b0001?: _e_2628 = _e_2736;
            5'b00001: _e_2628 = _e_2760;
            5'b?: _e_2628 = 31'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_2626;
        end
        else begin
            \state  <= _e_2628;
        end
    end
    assign \transmit_mut  = _e_2789_mut;
    assign _e_3988 = \state [30:28] == 3'd0;
    localparam[0:0] _e_2795 = 1;
    assign \_  = \state ;
    localparam[0:0] _e_3989 = 1;
    localparam[0:0] _e_2797 = 0;
    always_comb begin
        priority casez ({_e_3988, _e_3989})
            2'b1?: _e_2791 = _e_2795;
            2'b01: _e_2791 = _e_2797;
            2'b?: _e_2791 = 1'dx;
        endcase
    end
    assign _e_2789_mut = _e_2791;
    assign _e_3991 = \state [30:28] == 3'd0;
    localparam[0:0] _e_2801 = 1;
    assign __n1 = \state [27:13];
    assign __n2 = \state [12:5];
    assign _e_3993 = \state [30:28] == 3'd1;
    localparam[0:0] _e_3994 = 1;
    localparam[0:0] _e_3995 = 1;
    assign _e_3996 = _e_3993 && _e_3994;
    assign _e_3997 = _e_3996 && _e_3995;
    localparam[0:0] _e_2805 = 0;
    assign __n3 = \state [27:13];
    assign __n4 = \state [12:9];
    assign to_tx_n2 = \state [8:1];
    assign __n5 = \state [0:0];
    assign _e_3999 = \state [30:28] == 3'd2;
    localparam[0:0] _e_4000 = 1;
    localparam[0:0] _e_4001 = 1;
    localparam[0:0] _e_4002 = 1;
    localparam[0:0] _e_4003 = 1;
    assign _e_4004 = _e_3999 && _e_4000;
    assign _e_4005 = _e_4004 && _e_4001;
    assign _e_4006 = _e_4005 && _e_4002;
    assign _e_4007 = _e_4006 && _e_4003;
    localparam[7:0] _e_2814 = 1;
    assign _e_2812 = to_tx_n2 & _e_2814;
    localparam[7:0] _e_2815 = 1;
    assign _e_2811 = _e_2812 == _e_2815;
    assign __n6 = \state [27:13];
    assign odd_n1 = \state [12:12];
    assign _e_4009 = \state [30:28] == 3'd3;
    localparam[0:0] _e_4010 = 1;
    localparam[0:0] _e_4011 = 1;
    assign _e_4012 = _e_4009 && _e_4010;
    assign _e_4013 = _e_4012 && _e_4011;
    assign __n7 = \state [27:13];
    assign __n8 = \state [12:10];
    assign _e_4015 = \state [30:28] == 3'd4;
    localparam[0:0] _e_4016 = 1;
    localparam[0:0] _e_4017 = 1;
    assign _e_4018 = _e_4015 && _e_4016;
    assign _e_4019 = _e_4018 && _e_4017;
    localparam[0:0] _e_2823 = 1;
    always_comb begin
        priority casez ({_e_3991, _e_3997, _e_4007, _e_4013, _e_4019})
            5'b1????: _e_2798 = _e_2801;
            5'b01???: _e_2798 = _e_2805;
            5'b001??: _e_2798 = _e_2811;
            5'b0001?: _e_2798 = odd_n1;
            5'b00001: _e_2798 = _e_2823;
            5'b?: _e_2798 = 1'dx;
        endcase
    end
    assign output__ = _e_2798;
endmodule

module \protocols::uart::uart_rx  (
        input clk_i,
        input rst_i,
        input rx_i,
        input[18:0] config_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::uart::uart_rx" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::uart::uart_rx );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \rx ;
    assign \rx  = rx_i;
    logic[18:0] \config ;
    assign \config  = config_i;
    (* src = "build/libs/protocols/src/uart.spade:154,9" *)
    logic[8:0] \msb_one ;
    (* src = "build/libs/protocols/src/uart.spade:155,26" *)
    logic[7:0] _e_2851;
    (* src = "build/libs/protocols/src/uart.spade:155,19" *)
    logic[7:0] \new_bit ;
    (* src = "build/libs/protocols/src/uart.spade:156,32" *)
    logic[32:0] _e_2859;
    logic _e_4021;
    (* src = "build/libs/protocols/src/uart.spade:159,20" *)
    logic _e_2866;
    (* src = "build/libs/protocols/src/uart.spade:160,21" *)
    logic[32:0] _e_2869;
    (* src = "build/libs/protocols/src/uart.spade:163,21" *)
    logic[32:0] _e_2872;
    (* src = "build/libs/protocols/src/uart.spade:159,17" *)
    logic[32:0] _e_2865;
    (* src = "build/libs/protocols/src/uart.spade:166,13" *)
    logic[14:0] \time ;
    logic _e_4023;
    logic _e_4025;
    (* src = "build/libs/protocols/src/uart.spade:167,35" *)
    logic[14:0] _e_2882;
    (* src = "build/libs/protocols/src/uart.spade:167,34" *)
    logic[15:0] _e_2881;
    (* src = "build/libs/protocols/src/uart.spade:167,60" *)
    logic[14:0] _e_2887;
    (* src = "build/libs/protocols/src/uart.spade:167,59" *)
    logic[15:0] _e_2886;
    (* src = "build/libs/protocols/src/uart.spade:167,58" *)
    logic[15:0] _e_2885;
    (* src = "build/libs/protocols/src/uart.spade:167,34" *)
    logic[16:0] _e_2880;
    (* src = "build/libs/protocols/src/uart.spade:167,28" *)
    logic[14:0] _e_2879;
    (* src = "build/libs/protocols/src/uart.spade:167,20" *)
    logic _e_2877;
    (* src = "build/libs/protocols/src/uart.spade:168,21" *)
    logic[32:0] _e_2892;
    (* src = "build/libs/protocols/src/uart.spade:171,46" *)
    logic[15:0] _e_2899;
    (* src = "build/libs/protocols/src/uart.spade:171,40" *)
    logic[14:0] _e_2898;
    (* src = "build/libs/protocols/src/uart.spade:171,21" *)
    logic[32:0] _e_2897;
    (* src = "build/libs/protocols/src/uart.spade:167,17" *)
    logic[32:0] _e_2876;
    (* src = "build/libs/protocols/src/uart.spade:174,13" *)
    logic[14:0] time_n1;
    (* src = "build/libs/protocols/src/uart.spade:174,13" *)
    logic[6:0] \mask_left ;
    (* src = "build/libs/protocols/src/uart.spade:174,13" *)
    logic[7:0] \word ;
    logic _e_4027;
    logic _e_4031;
    logic _e_4032;
    logic _e_4033;
    (* src = "build/libs/protocols/src/uart.spade:175,32" *)
    logic[7:0] _e_2908;
    (* src = "build/libs/protocols/src/uart.spade:175,32" *)
    logic[7:0] \new_word ;
    (* src = "build/libs/protocols/src/uart.spade:176,34" *)
    logic[14:0] _e_2918;
    (* src = "build/libs/protocols/src/uart.spade:176,34" *)
    logic[15:0] _e_2917;
    (* src = "build/libs/protocols/src/uart.spade:176,28" *)
    logic[14:0] _e_2916;
    (* src = "build/libs/protocols/src/uart.spade:176,20" *)
    logic _e_2914;
    (* src = "build/libs/protocols/src/uart.spade:177,24" *)
    logic _e_2923;
    (* src = "build/libs/protocols/src/uart.spade:178,28" *)
    logic _e_2928;
    (* src = "build/libs/protocols/src/uart.spade:179,29" *)
    logic[32:0] _e_2931;
    (* src = "build/libs/protocols/src/uart.spade:182,29" *)
    logic[32:0] _e_2935;
    (* src = "build/libs/protocols/src/uart.spade:178,25" *)
    logic[32:0] _e_2927;
    (* src = "build/libs/protocols/src/uart.spade:188,46" *)
    logic[6:0] _e_2942;
    (* src = "build/libs/protocols/src/uart.spade:188,40" *)
    logic[6:0] _e_2941;
    (* src = "build/libs/protocols/src/uart.spade:186,25" *)
    logic[32:0] _e_2939;
    (* src = "build/libs/protocols/src/uart.spade:177,21" *)
    logic[32:0] _e_2922;
    (* src = "build/libs/protocols/src/uart.spade:194,51" *)
    logic[15:0] _e_2949;
    (* src = "build/libs/protocols/src/uart.spade:194,45" *)
    logic[14:0] _e_2948;
    (* src = "build/libs/protocols/src/uart.spade:194,21" *)
    logic[32:0] _e_2947;
    (* src = "build/libs/protocols/src/uart.spade:176,17" *)
    logic[32:0] _e_2913;
    (* src = "build/libs/protocols/src/uart.spade:197,13" *)
    logic[14:0] time_n2;
    (* src = "build/libs/protocols/src/uart.spade:197,13" *)
    logic[7:0] word_n1;
    logic _e_4035;
    logic _e_4038;
    logic _e_4039;
    (* src = "build/libs/protocols/src/uart.spade:198,34" *)
    logic[14:0] _e_2963;
    (* src = "build/libs/protocols/src/uart.spade:198,34" *)
    logic[15:0] _e_2962;
    (* src = "build/libs/protocols/src/uart.spade:198,28" *)
    logic[14:0] _e_2961;
    (* src = "build/libs/protocols/src/uart.spade:198,20" *)
    logic _e_2959;
    (* src = "build/libs/protocols/src/uart.spade:199,21" *)
    logic[32:0] _e_2967;
    (* src = "build/libs/protocols/src/uart.spade:202,54" *)
    logic[15:0] _e_2973;
    (* src = "build/libs/protocols/src/uart.spade:202,48" *)
    logic[14:0] _e_2972;
    (* src = "build/libs/protocols/src/uart.spade:202,21" *)
    logic[32:0] _e_2971;
    (* src = "build/libs/protocols/src/uart.spade:198,17" *)
    logic[32:0] _e_2958;
    (* src = "build/libs/protocols/src/uart.spade:205,13" *)
    logic[7:0] \_ ;
    (* src = "build/libs/protocols/src/uart.spade:205,13" *)
    logic __n1;
    logic _e_4041;
    logic _e_4044;
    logic _e_4045;
    (* src = "build/libs/protocols/src/uart.spade:205,57" *)
    logic[2:0] _e_2982;
    (* src = "build/libs/protocols/src/uart.spade:205,36" *)
    logic[32:0] _e_2980;
    (* src = "build/libs/protocols/src/uart.spade:206,13" *)
    logic[14:0] time_n3;
    (* src = "build/libs/protocols/src/uart.spade:206,13" *)
    logic[2:0] \count ;
    logic _e_4047;
    logic _e_4050;
    logic _e_4051;
    (* src = "build/libs/protocols/src/uart.spade:206,58" *)
    logic[14:0] _e_2990;
    (* src = "build/libs/protocols/src/uart.spade:206,50" *)
    logic _e_2988;
    (* src = "build/libs/protocols/src/uart.spade:207,20" *)
    logic _e_2994;
    (* src = "build/libs/protocols/src/uart.spade:208,21" *)
    logic[32:0] _e_2998;
    (* src = "build/libs/protocols/src/uart.spade:211,62" *)
    logic[3:0] _e_3003;
    (* src = "build/libs/protocols/src/uart.spade:211,56" *)
    logic[2:0] _e_3002;
    (* src = "build/libs/protocols/src/uart.spade:211,21" *)
    logic[32:0] _e_3000;
    (* src = "build/libs/protocols/src/uart.spade:207,17" *)
    logic[32:0] _e_2993;
    (* src = "build/libs/protocols/src/uart.spade:215,48" *)
    logic[15:0] _e_3009;
    (* src = "build/libs/protocols/src/uart.spade:215,42" *)
    logic[14:0] _e_3008;
    (* src = "build/libs/protocols/src/uart.spade:215,17" *)
    logic[32:0] _e_3007;
    (* src = "build/libs/protocols/src/uart.spade:206,47" *)
    logic[32:0] _e_2987;
    (* src = "build/libs/protocols/src/uart.spade:157,9" *)
    logic[32:0] _e_2861;
    (* src = "build/libs/protocols/src/uart.spade:156,14" *)
    reg[32:0] \state ;
    (* src = "build/libs/protocols/src/uart.spade:221,9" *)
    logic[7:0] word_n2;
    (* src = "build/libs/protocols/src/uart.spade:221,9" *)
    logic \parity ;
    logic _e_4053;
    logic _e_4056;
    logic _e_4057;
    (* src = "build/libs/protocols/src/uart.spade:223,17" *)
    logic _e_3022;
    (* src = "build/libs/protocols/src/uart.spade:223,16" *)
    logic _e_3021;
    (* src = "build/libs/protocols/src/uart.spade:223,36" *)
    logic _e_3026;
    (* src = "build/libs/protocols/src/uart.spade:223,35" *)
    logic _e_3025;
    (* src = "build/libs/protocols/src/uart.spade:223,34" *)
    logic _e_3024;
    (* src = "build/libs/protocols/src/uart.spade:223,16" *)
    logic _e_3020;
    (* src = "build/libs/protocols/src/uart.spade:224,17" *)
    logic[9:0] _e_3030;
    (* src = "build/libs/protocols/src/uart.spade:227,17" *)
    logic[9:0] _e_3033;
    (* src = "build/libs/protocols/src/uart.spade:223,13" *)
    logic[9:0] _e_3019;
    (* src = "build/libs/protocols/src/uart.spade:230,9" *)
    logic[32:0] __n2;
    (* src = "build/libs/protocols/src/uart.spade:230,14" *)
    logic[9:0] _e_3036;
    (* src = "build/libs/protocols/src/uart.spade:220,5" *)
    logic[9:0] _e_3013;
    localparam[8:0] _e_2846 = 128;
    assign \msb_one  = _e_2846;
    assign _e_2851 = \msb_one [7:0];
    localparam[7:0] _e_2854 = 0;
    assign \new_bit  = \rx  ? _e_2851 : _e_2854;
    assign _e_2859 = {3'd0, 30'bX};
    assign _e_4021 = \state [32:30] == 3'd0;
    assign _e_2866 = !\rx ;
    localparam[14:0] _e_2870 = 0;
    assign _e_2869 = {3'd1, _e_2870, 15'bX};
    assign _e_2872 = {3'd0, 30'bX};
    assign _e_2865 = _e_2866 ? _e_2869 : _e_2872;
    assign \time  = \state [29:15];
    assign _e_4023 = \state [32:30] == 3'd1;
    localparam[0:0] _e_4024 = 1;
    assign _e_4025 = _e_4023 && _e_4024;
    assign _e_2882 = \config [18:4];
    localparam[14:0] _e_2884 = 1;
    assign _e_2881 = _e_2882 - _e_2884;
    assign _e_2887 = \config [18:4];
    localparam[14:0] _e_2889 = 1;
    assign _e_2886 = _e_2887 - _e_2889;
    localparam[15:0] _e_2890 = 1;
    assign _e_2885 = _e_2886 >> _e_2890;
    assign _e_2880 = _e_2881 + _e_2885;
    assign _e_2879 = _e_2880[14:0];
    assign _e_2877 = \time  == _e_2879;
    localparam[14:0] _e_2893 = 0;
    localparam[6:0] _e_2894 = 127;
    assign _e_2892 = {3'd2, _e_2893, _e_2894, \new_bit };
    localparam[14:0] _e_2901 = 1;
    assign _e_2899 = \time  + _e_2901;
    assign _e_2898 = _e_2899[14:0];
    assign _e_2897 = {3'd1, _e_2898, 15'bX};
    assign _e_2876 = _e_2877 ? _e_2892 : _e_2897;
    assign time_n1 = \state [29:15];
    assign \mask_left  = \state [14:8];
    assign \word  = \state [7:0];
    assign _e_4027 = \state [32:30] == 3'd2;
    localparam[0:0] _e_4028 = 1;
    localparam[0:0] _e_4029 = 1;
    localparam[0:0] _e_4030 = 1;
    assign _e_4031 = _e_4027 && _e_4028;
    assign _e_4032 = _e_4031 && _e_4029;
    assign _e_4033 = _e_4032 && _e_4030;
    localparam[7:0] _e_2910 = 1;
    assign _e_2908 = \word  >> _e_2910;
    assign \new_word  = _e_2908 | \new_bit ;
    assign _e_2918 = \config [18:4];
    localparam[14:0] _e_2920 = 1;
    assign _e_2917 = _e_2918 - _e_2920;
    assign _e_2916 = _e_2917[14:0];
    assign _e_2914 = time_n1 == _e_2916;
    localparam[6:0] _e_2925 = 1;
    assign _e_2923 = \mask_left  == _e_2925;
    assign _e_2928 = \config [3];
    localparam[14:0] _e_2933 = 0;
    assign _e_2931 = {3'd3, _e_2933, \new_word , 7'bX};
    localparam[0:0] _e_2937 = 1;
    assign _e_2935 = {3'd4, \new_word , _e_2937, 21'bX};
    assign _e_2927 = _e_2928 ? _e_2931 : _e_2935;
    localparam[14:0] _e_2940 = 0;
    localparam[6:0] _e_2944 = 1;
    assign _e_2942 = \mask_left  >> _e_2944;
    assign _e_2941 = _e_2942[6:0];
    assign _e_2939 = {3'd2, _e_2940, _e_2941, \new_word };
    assign _e_2922 = _e_2923 ? _e_2927 : _e_2939;
    localparam[14:0] _e_2951 = 1;
    assign _e_2949 = time_n1 + _e_2951;
    assign _e_2948 = _e_2949[14:0];
    assign _e_2947 = {3'd2, _e_2948, \mask_left , \word };
    assign _e_2913 = _e_2914 ? _e_2922 : _e_2947;
    assign time_n2 = \state [29:15];
    assign word_n1 = \state [14:7];
    assign _e_4035 = \state [32:30] == 3'd3;
    localparam[0:0] _e_4036 = 1;
    localparam[0:0] _e_4037 = 1;
    assign _e_4038 = _e_4035 && _e_4036;
    assign _e_4039 = _e_4038 && _e_4037;
    assign _e_2963 = \config [18:4];
    localparam[14:0] _e_2965 = 1;
    assign _e_2962 = _e_2963 - _e_2965;
    assign _e_2961 = _e_2962[14:0];
    assign _e_2959 = time_n2 == _e_2961;
    assign _e_2967 = {3'd4, word_n1, \rx , 21'bX};
    localparam[14:0] _e_2975 = 1;
    assign _e_2973 = time_n2 + _e_2975;
    assign _e_2972 = _e_2973[14:0];
    assign _e_2971 = {3'd3, _e_2972, word_n1, 7'bX};
    assign _e_2958 = _e_2959 ? _e_2967 : _e_2971;
    assign \_  = \state [29:22];
    assign __n1 = \state [21:21];
    assign _e_4041 = \state [32:30] == 3'd4;
    localparam[0:0] _e_4042 = 1;
    localparam[0:0] _e_4043 = 1;
    assign _e_4044 = _e_4041 && _e_4042;
    assign _e_4045 = _e_4044 && _e_4043;
    localparam[14:0] _e_2981 = 0;
    assign _e_2982 = \config [2:0];
    assign _e_2980 = {3'd5, _e_2981, _e_2982, 12'bX};
    assign time_n3 = \state [29:15];
    assign \count  = \state [14:12];
    assign _e_4047 = \state [32:30] == 3'd5;
    localparam[0:0] _e_4048 = 1;
    localparam[0:0] _e_4049 = 1;
    assign _e_4050 = _e_4047 && _e_4048;
    assign _e_4051 = _e_4050 && _e_4049;
    assign _e_2990 = \config [18:4];
    assign _e_2988 = time_n3 >= _e_2990;
    localparam[2:0] _e_2996 = 1;
    assign _e_2994 = \count  == _e_2996;
    assign _e_2998 = {3'd0, 30'bX};
    localparam[14:0] _e_3001 = 0;
    localparam[2:0] _e_3005 = 1;
    assign _e_3003 = \count  - _e_3005;
    assign _e_3002 = _e_3003[2:0];
    assign _e_3000 = {3'd5, _e_3001, _e_3002, 12'bX};
    assign _e_2993 = _e_2994 ? _e_2998 : _e_3000;
    localparam[14:0] _e_3011 = 1;
    assign _e_3009 = time_n3 + _e_3011;
    assign _e_3008 = _e_3009[14:0];
    assign _e_3007 = {3'd5, _e_3008, \count , 12'bX};
    assign _e_2987 = _e_2988 ? _e_2993 : _e_3007;
    always_comb begin
        priority casez ({_e_4021, _e_4025, _e_4033, _e_4039, _e_4045, _e_4051})
            6'b1?????: _e_2861 = _e_2865;
            6'b01????: _e_2861 = _e_2876;
            6'b001???: _e_2861 = _e_2913;
            6'b0001??: _e_2861 = _e_2958;
            6'b00001?: _e_2861 = _e_2980;
            6'b000001: _e_2861 = _e_2987;
            6'b?: _e_2861 = 33'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_2859;
        end
        else begin
            \state  <= _e_2861;
        end
    end
    assign word_n2 = \state [29:22];
    assign \parity  = \state [21:21];
    assign _e_4053 = \state [32:30] == 3'd4;
    localparam[0:0] _e_4054 = 1;
    localparam[0:0] _e_4055 = 1;
    assign _e_4056 = _e_4053 && _e_4054;
    assign _e_4057 = _e_4056 && _e_4055;
    assign _e_3022 = \config [3];
    assign _e_3021 = !_e_3022;
    (* src = "build/libs/protocols/src/uart.spade:223,36" *)
    \protocols::uart::odd_parity  odd_parity_0(.word_i(word_n2), .output__(_e_3026));
    assign _e_3025 = _e_3026 ^ \parity ;
    assign _e_3024 = !_e_3025;
    assign _e_3020 = _e_3021 || _e_3024;
    assign _e_3030 = {2'd0, word_n2};
    assign _e_3033 = {2'd1, word_n2};
    assign _e_3019 = _e_3020 ? _e_3030 : _e_3033;
    assign __n2 = \state ;
    localparam[0:0] _e_4058 = 1;
    assign _e_3036 = {2'd2, 8'bX};
    always_comb begin
        priority casez ({_e_4057, _e_4058})
            2'b1?: _e_3013 = _e_3019;
            2'b01: _e_3013 = _e_3036;
            2'b?: _e_3013 = 10'dx;
        endcase
    end
    assign output__ = _e_3013;
endmodule

module \protocols::uart::odd_parity  (
        input[7:0] word_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::uart::odd_parity" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::uart::odd_parity );
        end
    end
    `endif
    logic[7:0] \word ;
    assign \word  = word_i;
    (* src = "build/libs/protocols/src/uart.spade:235,6" *)
    logic[7:0] _e_3046;
    (* src = "build/libs/protocols/src/uart.spade:235,5" *)
    logic _e_3045;
    (* src = "build/libs/protocols/src/uart.spade:236,14" *)
    logic[7:0] _e_3052;
    (* src = "build/libs/protocols/src/uart.spade:236,13" *)
    logic[7:0] _e_3051;
    (* src = "build/libs/protocols/src/uart.spade:236,12" *)
    logic _e_3050;
    (* src = "build/libs/protocols/src/uart.spade:235,5" *)
    logic _e_3044;
    (* src = "build/libs/protocols/src/uart.spade:237,14" *)
    logic[7:0] _e_3059;
    (* src = "build/libs/protocols/src/uart.spade:237,13" *)
    logic[7:0] _e_3058;
    (* src = "build/libs/protocols/src/uart.spade:237,12" *)
    logic _e_3057;
    (* src = "build/libs/protocols/src/uart.spade:235,5" *)
    logic _e_3043;
    (* src = "build/libs/protocols/src/uart.spade:238,14" *)
    logic[7:0] _e_3066;
    (* src = "build/libs/protocols/src/uart.spade:238,13" *)
    logic[7:0] _e_3065;
    (* src = "build/libs/protocols/src/uart.spade:238,12" *)
    logic _e_3064;
    (* src = "build/libs/protocols/src/uart.spade:235,5" *)
    logic _e_3042;
    (* src = "build/libs/protocols/src/uart.spade:239,14" *)
    logic[7:0] _e_3073;
    (* src = "build/libs/protocols/src/uart.spade:239,13" *)
    logic[7:0] _e_3072;
    (* src = "build/libs/protocols/src/uart.spade:239,12" *)
    logic _e_3071;
    (* src = "build/libs/protocols/src/uart.spade:235,5" *)
    logic _e_3041;
    (* src = "build/libs/protocols/src/uart.spade:240,14" *)
    logic[7:0] _e_3080;
    (* src = "build/libs/protocols/src/uart.spade:240,13" *)
    logic[7:0] _e_3079;
    (* src = "build/libs/protocols/src/uart.spade:240,12" *)
    logic _e_3078;
    (* src = "build/libs/protocols/src/uart.spade:235,5" *)
    logic _e_3040;
    (* src = "build/libs/protocols/src/uart.spade:241,14" *)
    logic[7:0] _e_3087;
    (* src = "build/libs/protocols/src/uart.spade:241,13" *)
    logic[7:0] _e_3086;
    (* src = "build/libs/protocols/src/uart.spade:241,12" *)
    logic _e_3085;
    (* src = "build/libs/protocols/src/uart.spade:235,5" *)
    logic _e_3039;
    (* src = "build/libs/protocols/src/uart.spade:242,14" *)
    logic[7:0] _e_3094;
    (* src = "build/libs/protocols/src/uart.spade:242,13" *)
    logic[7:0] _e_3093;
    (* src = "build/libs/protocols/src/uart.spade:242,12" *)
    logic _e_3092;
    (* src = "build/libs/protocols/src/uart.spade:235,5" *)
    logic _e_3038;
    localparam[7:0] _e_3048 = 1;
    assign _e_3046 = \word  & _e_3048;
    localparam[7:0] _e_3049 = 1;
    assign _e_3045 = _e_3046 == _e_3049;
    localparam[7:0] _e_3054 = 1;
    assign _e_3052 = \word  >> _e_3054;
    localparam[7:0] _e_3055 = 1;
    assign _e_3051 = _e_3052 & _e_3055;
    localparam[7:0] _e_3056 = 1;
    assign _e_3050 = _e_3051 == _e_3056;
    assign _e_3044 = _e_3045 ^ _e_3050;
    localparam[7:0] _e_3061 = 2;
    assign _e_3059 = \word  >> _e_3061;
    localparam[7:0] _e_3062 = 1;
    assign _e_3058 = _e_3059 & _e_3062;
    localparam[7:0] _e_3063 = 1;
    assign _e_3057 = _e_3058 == _e_3063;
    assign _e_3043 = _e_3044 ^ _e_3057;
    localparam[7:0] _e_3068 = 3;
    assign _e_3066 = \word  >> _e_3068;
    localparam[7:0] _e_3069 = 1;
    assign _e_3065 = _e_3066 & _e_3069;
    localparam[7:0] _e_3070 = 1;
    assign _e_3064 = _e_3065 == _e_3070;
    assign _e_3042 = _e_3043 ^ _e_3064;
    localparam[7:0] _e_3075 = 4;
    assign _e_3073 = \word  >> _e_3075;
    localparam[7:0] _e_3076 = 1;
    assign _e_3072 = _e_3073 & _e_3076;
    localparam[7:0] _e_3077 = 1;
    assign _e_3071 = _e_3072 == _e_3077;
    assign _e_3041 = _e_3042 ^ _e_3071;
    localparam[7:0] _e_3082 = 5;
    assign _e_3080 = \word  >> _e_3082;
    localparam[7:0] _e_3083 = 1;
    assign _e_3079 = _e_3080 & _e_3083;
    localparam[7:0] _e_3084 = 1;
    assign _e_3078 = _e_3079 == _e_3084;
    assign _e_3040 = _e_3041 ^ _e_3078;
    localparam[7:0] _e_3089 = 6;
    assign _e_3087 = \word  >> _e_3089;
    localparam[7:0] _e_3090 = 1;
    assign _e_3086 = _e_3087 & _e_3090;
    localparam[7:0] _e_3091 = 1;
    assign _e_3085 = _e_3086 == _e_3091;
    assign _e_3039 = _e_3040 ^ _e_3085;
    localparam[7:0] _e_3096 = 7;
    assign _e_3094 = \word  >> _e_3096;
    localparam[7:0] _e_3097 = 1;
    assign _e_3093 = _e_3094 & _e_3097;
    localparam[7:0] _e_3098 = 1;
    assign _e_3092 = _e_3093 == _e_3098;
    assign _e_3038 = _e_3039 ^ _e_3092;
    assign output__ = _e_3038;
endmodule

module \quickscope::quickscope_th  (
        input clk_i,
        input rst_i,
        input trigger_i,
        input[23:0] data_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::quickscope_th" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::quickscope_th );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \trigger ;
    assign \trigger  = trigger_i;
    logic[23:0] \data ;
    assign \data  = data_i;
    (* src = "build/libs/quickscope/src/main.spade:97,5" *)
    logic[8:0] _e_3386;
    (* src = "build/libs/quickscope/src/main.spade:97,5" *)
    logic _e_3386_mut;
    (* src = "build/libs/quickscope/src/main.spade:97,5" *)
    \quickscope::quickscope[1455]  quickscope_0(.clk_i(\clk ), .rst_i(\rst ), .trigger_i(\trigger ), .data_i(\data ), .output__(_e_3386), .input__(_e_3386_mut));
    assign output__ = _e_3386;
    assign _e_3386_mut = input__;
endmodule

module \quickscope::quickscope_th2  (
        input clk_i,
        input rst_i,
        input trigger_i,
        input[31:0] data_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::quickscope_th2" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::quickscope_th2 );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \trigger ;
    assign \trigger  = trigger_i;
    logic[31:0] \data ;
    assign \data  = data_i;
    (* src = "build/libs/quickscope/src/main.spade:101,5" *)
    logic[8:0] _e_3392;
    (* src = "build/libs/quickscope/src/main.spade:101,5" *)
    logic _e_3392_mut;
    (* src = "build/libs/quickscope/src/main.spade:101,5" *)
    \quickscope::quickscope[1456]  quickscope_0(.clk_i(\clk ), .rst_i(\rst ), .trigger_i(\trigger ), .data_i(\data ), .output__(_e_3392), .input__(_e_3392_mut));
    assign output__ = _e_3392;
    assign _e_3392_mut = input__;
endmodule

module \nstd::array::bool_array_th  (
        input[2:0] input_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::bool_array_th" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::bool_array_th );
        end
    end
    `endif
    logic[2:0] \input ;
    assign \input  = input_i;
    (* src = "build/libs/nstd/src/array.spade:75,14" *)
    logic _e_3550;
    (* src = "build/libs/nstd/src/array.spade:76,14" *)
    logic _e_3558;
    (* src = "build/libs/nstd/src/array.spade:74,5" *)
    logic[1:0] _e_3549;
    
    (* src = "build/libs/nstd/src/array.spade:75,14" *)
    \nstd::array::impl_32::any[1457]  any_0(.self_i(\input ), .output__(_e_3550));
    
    (* src = "build/libs/nstd/src/array.spade:76,14" *)
    \nstd::array::impl_32::all[1458]  all_0(.self_i(\input ), .output__(_e_3558));
    assign _e_3549 = {_e_3550, _e_3558};
    assign output__ = _e_3549;
endmodule

module \nstd::option::alongside_th  (
        input clk_i,
        input rst_i,
        input[16:0] input_i,
        output[24:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::option::alongside_th" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::option::alongside_th );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[16:0] \input ;
    assign \input  = input_i;
    (* src = "build/libs/nstd/src/option.spade:21,30" *)
    logic[8:0] _e_3598;
    (* src = "build/libs/nstd/src/option.spade:20,5" *)
    logic[24:0] _e_3595;
    localparam[7:0] _e_3600 = 0;
    assign _e_3598 = {\rst , _e_3600};
    
    (* src = "build/libs/nstd/src/option.spade:20,5" *)
    \nstd::option::impl_39::alongside[1459]  alongside_0(.self_i(\input ), .clk_i(\clk ), .rst_i(_e_3598), .output__(_e_3595));
    assign output__ = _e_3595;
endmodule

module \std::conv::impl_2::to_uint  (
        input self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_2::to_uint" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_2::to_uint );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic _e_501;
    assign _e_501 = \self ;
    assign output__ = _e_501;
endmodule

module \std::conv::impl_2::to_int  (
        input self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_2::to_int" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_2::to_int );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic _e_505;
    assign _e_505 = \self ;
    assign output__ = _e_505;
endmodule

module \std::conv::impl_5::to_be_bytes  (
        input[15:0] self_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_5::to_be_bytes" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_5::to_be_bytes );
        end
    end
    `endif
    logic[15:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:184,16" *)
    logic[15:0] _e_522;
    (* src = "<compiler dir>/stdlib/conv.spade:184,10" *)
    logic[7:0] _e_521;
    (* src = "<compiler dir>/stdlib/conv.spade:184,28" *)
    logic[7:0] _e_525;
    (* src = "<compiler dir>/stdlib/conv.spade:184,9" *)
    logic[15:0] _e_520;
    localparam[15:0] _e_524 = 8;
    assign _e_522 = \self  >> _e_524;
    assign _e_521 = _e_522[7:0];
    assign _e_525 = \self [7:0];
    assign _e_520 = {_e_525, _e_521};
    assign output__ = _e_520;
endmodule

module \std::conv::impl_5::to_le_bytes  (
        input[15:0] self_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_5::to_le_bytes" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_5::to_le_bytes );
        end
    end
    `endif
    logic[15:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:190,31" *)
    logic[15:0] _e_529;
    (* src = "<compiler dir>/stdlib/conv.spade:190,9" *)
    logic[15:0] _e_528;
    (* src = "<compiler dir>/stdlib/conv.spade:190,31" *)
    \std::conv::impl_5::to_be_bytes  to_be_bytes_0(.self_i(\self ), .output__(_e_529));
    (* src = "<compiler dir>/stdlib/conv.spade:190,9" *)
    \std::conv::flip_array[1460]  flip_array_0(.in_i(_e_529), .output__(_e_528));
    assign output__ = _e_528;
endmodule

module \std::conv::impl_6::to_be_bytes  (
        input[23:0] self_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_6::to_be_bytes" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_6::to_be_bytes );
        end
    end
    `endif
    logic[23:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:198,16" *)
    logic[23:0] _e_534;
    (* src = "<compiler dir>/stdlib/conv.spade:198,10" *)
    logic[7:0] _e_533;
    (* src = "<compiler dir>/stdlib/conv.spade:198,35" *)
    logic[23:0] _e_538;
    (* src = "<compiler dir>/stdlib/conv.spade:198,29" *)
    logic[7:0] _e_537;
    (* src = "<compiler dir>/stdlib/conv.spade:198,47" *)
    logic[7:0] _e_541;
    (* src = "<compiler dir>/stdlib/conv.spade:198,9" *)
    logic[23:0] _e_532;
    localparam[23:0] _e_536 = 16;
    assign _e_534 = \self  >> _e_536;
    assign _e_533 = _e_534[7:0];
    localparam[23:0] _e_540 = 8;
    assign _e_538 = \self  >> _e_540;
    assign _e_537 = _e_538[7:0];
    assign _e_541 = \self [7:0];
    assign _e_532 = {_e_541, _e_537, _e_533};
    assign output__ = _e_532;
endmodule

module \std::conv::impl_6::to_le_bytes  (
        input[23:0] self_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_6::to_le_bytes" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_6::to_le_bytes );
        end
    end
    `endif
    logic[23:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:204,31" *)
    logic[23:0] _e_545;
    (* src = "<compiler dir>/stdlib/conv.spade:204,9" *)
    logic[23:0] _e_544;
    (* src = "<compiler dir>/stdlib/conv.spade:204,31" *)
    \std::conv::impl_6::to_be_bytes  to_be_bytes_0(.self_i(\self ), .output__(_e_545));
    (* src = "<compiler dir>/stdlib/conv.spade:204,9" *)
    \std::conv::flip_array[1461]  flip_array_0(.in_i(_e_545), .output__(_e_544));
    assign output__ = _e_544;
endmodule

module \std::conv::impl_7::to_be_bytes  (
        input[31:0] self_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_7::to_be_bytes" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_7::to_be_bytes );
        end
    end
    `endif
    logic[31:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:212,16" *)
    logic[31:0] _e_550;
    (* src = "<compiler dir>/stdlib/conv.spade:212,10" *)
    logic[7:0] _e_549;
    (* src = "<compiler dir>/stdlib/conv.spade:212,35" *)
    logic[31:0] _e_554;
    (* src = "<compiler dir>/stdlib/conv.spade:212,29" *)
    logic[7:0] _e_553;
    (* src = "<compiler dir>/stdlib/conv.spade:212,54" *)
    logic[31:0] _e_558;
    (* src = "<compiler dir>/stdlib/conv.spade:212,48" *)
    logic[7:0] _e_557;
    (* src = "<compiler dir>/stdlib/conv.spade:212,66" *)
    logic[7:0] _e_561;
    (* src = "<compiler dir>/stdlib/conv.spade:212,9" *)
    logic[31:0] _e_548;
    localparam[31:0] _e_552 = 32'd24;
    assign _e_550 = \self  >> _e_552;
    assign _e_549 = _e_550[7:0];
    localparam[31:0] _e_556 = 32'd16;
    assign _e_554 = \self  >> _e_556;
    assign _e_553 = _e_554[7:0];
    localparam[31:0] _e_560 = 32'd8;
    assign _e_558 = \self  >> _e_560;
    assign _e_557 = _e_558[7:0];
    assign _e_561 = \self [7:0];
    assign _e_548 = {_e_561, _e_557, _e_553, _e_549};
    assign output__ = _e_548;
endmodule

module \std::conv::impl_7::to_le_bytes  (
        input[31:0] self_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_7::to_le_bytes" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_7::to_le_bytes );
        end
    end
    `endif
    logic[31:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:218,31" *)
    logic[31:0] _e_565;
    (* src = "<compiler dir>/stdlib/conv.spade:218,9" *)
    logic[31:0] _e_564;
    (* src = "<compiler dir>/stdlib/conv.spade:218,31" *)
    \std::conv::impl_7::to_be_bytes  to_be_bytes_0(.self_i(\self ), .output__(_e_565));
    (* src = "<compiler dir>/stdlib/conv.spade:218,9" *)
    \std::conv::flip_array[1462]  flip_array_0(.in_i(_e_565), .output__(_e_564));
    assign output__ = _e_564;
endmodule

module \ready_valid::impl_21::split_to_u8  (
        input[16:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_21::split_to_u8" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_21::split_to_u8 );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/ready_valid/src/main.spade:205,18" *)
    logic \ds_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:207,35" *)
    logic[17:0] _e_1751;
    (* src = "build/libs/ready_valid/src/main.spade:208,32" *)
    logic _e_1755;
    (* src = "build/libs/ready_valid/src/main.spade:208,52" *)
    logic[16:0] _e_1757;
    (* src = "build/libs/ready_valid/src/main.spade:208,19" *)
    logic[35:0] _e_1753;
    (* src = "build/libs/ready_valid/src/main.spade:209,17" *)
    logic[35:0] _e_1763;
    (* src = "build/libs/ready_valid/src/main.spade:209,17" *)
    logic[17:0] _e_1760;
    (* src = "build/libs/ready_valid/src/main.spade:209,17" *)
    logic \_ ;
    (* src = "build/libs/ready_valid/src/main.spade:209,17" *)
    logic[16:0] _e_1762;
    logic _e_4061;
    logic _e_4064;
    logic _e_4065;
    logic _e_4066;
    (* src = "build/libs/ready_valid/src/main.spade:209,51" *)
    logic[17:0] _e_1764;
    (* src = "build/libs/ready_valid/src/main.spade:210,17" *)
    logic[35:0] _e_1769;
    (* src = "build/libs/ready_valid/src/main.spade:210,17" *)
    logic[17:0] _e_1765;
    (* src = "build/libs/ready_valid/src/main.spade:210,17" *)
    logic _e_1766;
    (* src = "build/libs/ready_valid/src/main.spade:210,17" *)
    logic[16:0] _e_1768;
    (* src = "build/libs/ready_valid/src/main.spade:210,45" *)
    logic[15:0] \data ;
    logic _e_4069;
    logic _e_4072;
    logic _e_4074;
    logic _e_4075;
    logic _e_4076;
    (* src = "build/libs/ready_valid/src/main.spade:210,85" *)
    logic[15:0] _e_1772;
    (* src = "build/libs/ready_valid/src/main.spade:210,79" *)
    logic[7:0] _e_1771;
    (* src = "build/libs/ready_valid/src/main.spade:210,60" *)
    logic[17:0] _e_1770;
    (* src = "build/libs/ready_valid/src/main.spade:211,17" *)
    logic[35:0] _e_1779;
    (* src = "build/libs/ready_valid/src/main.spade:211,17" *)
    logic[17:0] _e_1775;
    (* src = "build/libs/ready_valid/src/main.spade:211,17" *)
    logic _e_1776;
    (* src = "build/libs/ready_valid/src/main.spade:211,17" *)
    logic[16:0] _e_1778;
    (* src = "build/libs/ready_valid/src/main.spade:211,46" *)
    logic[15:0] data_n1;
    logic _e_4079;
    logic _e_4080;
    logic _e_4082;
    logic _e_4084;
    logic _e_4085;
    logic _e_4086;
    (* src = "build/libs/ready_valid/src/main.spade:211,61" *)
    logic[17:0] _e_1780;
    (* src = "build/libs/ready_valid/src/main.spade:212,17" *)
    logic[35:0] _e_1785;
    (* src = "build/libs/ready_valid/src/main.spade:212,17" *)
    logic[17:0] __n1;
    (* src = "build/libs/ready_valid/src/main.spade:212,17" *)
    logic _e_1783;
    (* src = "build/libs/ready_valid/src/main.spade:212,17" *)
    logic[16:0] __n2;
    logic _e_4089;
    logic _e_4091;
    logic _e_4092;
    (* src = "build/libs/ready_valid/src/main.spade:213,17" *)
    logic[35:0] _e_1791;
    (* src = "build/libs/ready_valid/src/main.spade:213,17" *)
    logic[17:0] _e_1788;
    (* src = "build/libs/ready_valid/src/main.spade:213,18" *)
    logic[15:0] \val ;
    (* src = "build/libs/ready_valid/src/main.spade:213,17" *)
    logic _e_1789;
    (* src = "build/libs/ready_valid/src/main.spade:213,17" *)
    logic[16:0] __n3;
    logic _e_4095;
    logic _e_4097;
    logic _e_4100;
    logic _e_4101;
    (* src = "build/libs/ready_valid/src/main.spade:213,80" *)
    logic[15:0] _e_1794;
    (* src = "build/libs/ready_valid/src/main.spade:213,74" *)
    logic[7:0] _e_1793;
    (* src = "build/libs/ready_valid/src/main.spade:213,55" *)
    logic[17:0] _e_1792;
    (* src = "build/libs/ready_valid/src/main.spade:214,17" *)
    logic[35:0] _e_1801;
    (* src = "build/libs/ready_valid/src/main.spade:214,17" *)
    logic[17:0] _e_1798;
    (* src = "build/libs/ready_valid/src/main.spade:214,18" *)
    logic[7:0] val_n1;
    (* src = "build/libs/ready_valid/src/main.spade:214,17" *)
    logic _e_1799;
    (* src = "build/libs/ready_valid/src/main.spade:214,17" *)
    logic[16:0] _e_1800;
    logic _e_4104;
    logic _e_4106;
    logic _e_4109;
    logic _e_4110;
    logic _e_4111;
    (* src = "build/libs/ready_valid/src/main.spade:214,58" *)
    logic[17:0] _e_1802;
    (* src = "build/libs/ready_valid/src/main.spade:215,17" *)
    logic[35:0] _e_1808;
    (* src = "build/libs/ready_valid/src/main.spade:215,17" *)
    logic[17:0] _e_1804;
    (* src = "build/libs/ready_valid/src/main.spade:215,18" *)
    logic[7:0] val_n2;
    (* src = "build/libs/ready_valid/src/main.spade:215,17" *)
    logic _e_1805;
    (* src = "build/libs/ready_valid/src/main.spade:215,17" *)
    logic[16:0] _e_1807;
    (* src = "build/libs/ready_valid/src/main.spade:215,49" *)
    logic[15:0] data_n2;
    logic _e_4114;
    logic _e_4116;
    logic _e_4119;
    logic _e_4121;
    logic _e_4122;
    logic _e_4123;
    (* src = "build/libs/ready_valid/src/main.spade:215,64" *)
    logic[17:0] _e_1809;
    (* src = "build/libs/ready_valid/src/main.spade:208,13" *)
    logic[17:0] _e_1752;
    (* src = "build/libs/ready_valid/src/main.spade:207,18" *)
    reg[17:0] \state ;
    (* src = "build/libs/ready_valid/src/main.spade:218,13" *)
    logic _e_1811_mut;
    logic _e_4125;
    (* src = "build/libs/ready_valid/src/main.spade:220,13" *)
    logic[17:0] __n4;
    (* src = "build/libs/ready_valid/src/main.spade:218,27" *)
    logic _e_1813;
    (* src = "build/libs/ready_valid/src/main.spade:223,35" *)
    logic[16:0] _e_1823;
    (* src = "build/libs/ready_valid/src/main.spade:223,26" *)
    logic[34:0] _e_1821;
    (* src = "build/libs/ready_valid/src/main.spade:224,13" *)
    logic[34:0] _e_1829;
    (* src = "build/libs/ready_valid/src/main.spade:224,13" *)
    logic[17:0] _e_1826;
    (* src = "build/libs/ready_valid/src/main.spade:224,13" *)
    logic[16:0] _e_1828;
    (* src = "build/libs/ready_valid/src/main.spade:224,35" *)
    logic[15:0] \upstream ;
    logic _e_4129;
    logic _e_4131;
    logic _e_4133;
    logic _e_4134;
    (* src = "build/libs/ready_valid/src/main.spade:224,59" *)
    logic[7:0] _e_1831;
    (* src = "build/libs/ready_valid/src/main.spade:224,54" *)
    logic[8:0] _e_1830;
    (* src = "build/libs/ready_valid/src/main.spade:225,13" *)
    logic[34:0] _e_1835;
    (* src = "build/libs/ready_valid/src/main.spade:225,13" *)
    logic[17:0] _e_1833;
    (* src = "build/libs/ready_valid/src/main.spade:225,13" *)
    logic[16:0] _e_1834;
    logic _e_4137;
    logic _e_4139;
    logic _e_4140;
    (* src = "build/libs/ready_valid/src/main.spade:225,44" *)
    logic[8:0] _e_1836;
    (* src = "build/libs/ready_valid/src/main.spade:226,13" *)
    logic[34:0] _e_1840;
    (* src = "build/libs/ready_valid/src/main.spade:226,13" *)
    logic[17:0] _e_1838;
    (* src = "build/libs/ready_valid/src/main.spade:226,14" *)
    logic[7:0] \value ;
    (* src = "build/libs/ready_valid/src/main.spade:226,13" *)
    logic[16:0] __n5;
    logic _e_4143;
    logic _e_4145;
    logic _e_4147;
    (* src = "build/libs/ready_valid/src/main.spade:226,47" *)
    logic[8:0] _e_1841;
    (* src = "build/libs/ready_valid/src/main.spade:227,13" *)
    logic[34:0] _e_1846;
    (* src = "build/libs/ready_valid/src/main.spade:227,13" *)
    logic[17:0] _e_1844;
    (* src = "build/libs/ready_valid/src/main.spade:227,14" *)
    logic[15:0] value_n1;
    (* src = "build/libs/ready_valid/src/main.spade:227,13" *)
    logic[16:0] __n6;
    logic _e_4150;
    logic _e_4152;
    logic _e_4154;
    (* src = "build/libs/ready_valid/src/main.spade:227,52" *)
    logic[7:0] _e_1848;
    (* src = "build/libs/ready_valid/src/main.spade:227,47" *)
    logic[8:0] _e_1847;
    (* src = "build/libs/ready_valid/src/main.spade:223,20" *)
    logic[8:0] data_n3;
    (* src = "build/libs/ready_valid/src/main.spade:230,9" *)
    logic[8:0] _e_1851;
    (* src = "build/libs/ready_valid/src/main.spade:230,9" *)
    logic _e_1851_mut;
    (* src = "build/libs/ready_valid/src/main.spade:205,18" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_0(.input__(\ds_mut ));
    assign _e_1751 = {2'd0, 16'bX};
    assign _e_1755 = \ds_mut ;
    assign _e_1757 = \self [16:0];
    assign _e_1753 = {\state , _e_1755, _e_1757};
    assign _e_1763 = _e_1753;
    assign _e_1760 = _e_1753[35:18];
    assign \_  = _e_1753[17];
    assign _e_1762 = _e_1753[16:0];
    assign _e_4061 = _e_1760[17:16] == 2'd0;
    localparam[0:0] _e_4062 = 1;
    assign _e_4064 = _e_1762[16] == 1'd0;
    assign _e_4065 = _e_4061 && _e_4062;
    assign _e_4066 = _e_4065 && _e_4064;
    assign _e_1764 = {2'd0, 16'bX};
    assign _e_1769 = _e_1753;
    assign _e_1765 = _e_1753[35:18];
    assign _e_1766 = _e_1753[17];
    assign _e_1768 = _e_1753[16:0];
    assign \data  = _e_1768[15:0];
    assign _e_4069 = _e_1765[17:16] == 2'd0;
    assign _e_4072 = _e_1768[16] == 1'd1;
    localparam[0:0] _e_4073 = 1;
    assign _e_4074 = _e_4072 && _e_4073;
    assign _e_4075 = _e_4069 && _e_1766;
    assign _e_4076 = _e_4075 && _e_4074;
    localparam[15:0] _e_1774 = 8;
    assign _e_1772 = \data  >> _e_1774;
    assign _e_1771 = _e_1772[7:0];
    assign _e_1770 = {2'd1, _e_1771, 8'bX};
    assign _e_1779 = _e_1753;
    assign _e_1775 = _e_1753[35:18];
    assign _e_1776 = _e_1753[17];
    assign _e_1778 = _e_1753[16:0];
    assign data_n1 = _e_1778[15:0];
    assign _e_4079 = _e_1775[17:16] == 2'd0;
    assign _e_4080 = !_e_1776;
    assign _e_4082 = _e_1778[16] == 1'd1;
    localparam[0:0] _e_4083 = 1;
    assign _e_4084 = _e_4082 && _e_4083;
    assign _e_4085 = _e_4079 && _e_4080;
    assign _e_4086 = _e_4085 && _e_4084;
    assign _e_1780 = {2'd2, data_n1};
    assign _e_1785 = _e_1753;
    assign __n1 = _e_1753[35:18];
    assign _e_1783 = _e_1753[17];
    assign __n2 = _e_1753[16:0];
    localparam[0:0] _e_4088 = 1;
    assign _e_4089 = !_e_1783;
    localparam[0:0] _e_4090 = 1;
    assign _e_4091 = _e_4088 && _e_4089;
    assign _e_4092 = _e_4091 && _e_4090;
    assign _e_1791 = _e_1753;
    assign _e_1788 = _e_1753[35:18];
    assign \val  = _e_1788[15:0];
    assign _e_1789 = _e_1753[17];
    assign __n3 = _e_1753[16:0];
    assign _e_4095 = _e_1788[17:16] == 2'd2;
    localparam[0:0] _e_4096 = 1;
    assign _e_4097 = _e_4095 && _e_4096;
    localparam[0:0] _e_4099 = 1;
    assign _e_4100 = _e_4097 && _e_1789;
    assign _e_4101 = _e_4100 && _e_4099;
    localparam[15:0] _e_1796 = 8;
    assign _e_1794 = \val  >> _e_1796;
    assign _e_1793 = _e_1794[7:0];
    assign _e_1792 = {2'd1, _e_1793, 8'bX};
    assign _e_1801 = _e_1753;
    assign _e_1798 = _e_1753[35:18];
    assign val_n1 = _e_1798[15:8];
    assign _e_1799 = _e_1753[17];
    assign _e_1800 = _e_1753[16:0];
    assign _e_4104 = _e_1798[17:16] == 2'd1;
    localparam[0:0] _e_4105 = 1;
    assign _e_4106 = _e_4104 && _e_4105;
    assign _e_4109 = _e_1800[16] == 1'd0;
    assign _e_4110 = _e_4106 && _e_1799;
    assign _e_4111 = _e_4110 && _e_4109;
    assign _e_1802 = {2'd0, 16'bX};
    assign _e_1808 = _e_1753;
    assign _e_1804 = _e_1753[35:18];
    assign val_n2 = _e_1804[15:8];
    assign _e_1805 = _e_1753[17];
    assign _e_1807 = _e_1753[16:0];
    assign data_n2 = _e_1807[15:0];
    assign _e_4114 = _e_1804[17:16] == 2'd1;
    localparam[0:0] _e_4115 = 1;
    assign _e_4116 = _e_4114 && _e_4115;
    assign _e_4119 = _e_1807[16] == 1'd1;
    localparam[0:0] _e_4120 = 1;
    assign _e_4121 = _e_4119 && _e_4120;
    assign _e_4122 = _e_4116 && _e_1805;
    assign _e_4123 = _e_4122 && _e_4121;
    assign _e_1809 = {2'd2, data_n2};
    always_comb begin
        priority casez ({_e_4066, _e_4076, _e_4086, _e_4092, _e_4101, _e_4111, _e_4123})
            7'b1??????: _e_1752 = _e_1764;
            7'b01?????: _e_1752 = _e_1770;
            7'b001????: _e_1752 = _e_1780;
            7'b0001???: _e_1752 = \state ;
            7'b00001??: _e_1752 = _e_1792;
            7'b000001?: _e_1752 = _e_1802;
            7'b0000001: _e_1752 = _e_1809;
            7'b?: _e_1752 = 18'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_1751;
        end
        else begin
            \state  <= _e_1752;
        end
    end
    assign \self_mut  = _e_1811_mut;
    assign _e_4125 = \state [17:16] == 2'd0;
    localparam[0:0] _e_1817 = 1;
    assign __n4 = \state ;
    localparam[0:0] _e_4126 = 1;
    localparam[0:0] _e_1819 = 0;
    always_comb begin
        priority casez ({_e_4125, _e_4126})
            2'b1?: _e_1813 = _e_1817;
            2'b01: _e_1813 = _e_1819;
            2'b?: _e_1813 = 1'dx;
        endcase
    end
    assign _e_1811_mut = _e_1813;
    assign _e_1823 = \self [16:0];
    assign _e_1821 = {\state , _e_1823};
    assign _e_1829 = _e_1821;
    assign _e_1826 = _e_1821[34:17];
    assign _e_1828 = _e_1821[16:0];
    assign \upstream  = _e_1828[15:0];
    assign _e_4129 = _e_1826[17:16] == 2'd0;
    assign _e_4131 = _e_1828[16] == 1'd1;
    localparam[0:0] _e_4132 = 1;
    assign _e_4133 = _e_4131 && _e_4132;
    assign _e_4134 = _e_4129 && _e_4133;
    assign _e_1831 = \upstream [7:0];
    assign _e_1830 = {1'd1, _e_1831};
    assign _e_1835 = _e_1821;
    assign _e_1833 = _e_1821[34:17];
    assign _e_1834 = _e_1821[16:0];
    assign _e_4137 = _e_1833[17:16] == 2'd0;
    assign _e_4139 = _e_1834[16] == 1'd0;
    assign _e_4140 = _e_4137 && _e_4139;
    assign _e_1836 = {1'd0, 8'bX};
    assign _e_1840 = _e_1821;
    assign _e_1838 = _e_1821[34:17];
    assign \value  = _e_1838[15:8];
    assign __n5 = _e_1821[16:0];
    assign _e_4143 = _e_1838[17:16] == 2'd1;
    localparam[0:0] _e_4144 = 1;
    assign _e_4145 = _e_4143 && _e_4144;
    localparam[0:0] _e_4146 = 1;
    assign _e_4147 = _e_4145 && _e_4146;
    assign _e_1841 = {1'd1, \value };
    assign _e_1846 = _e_1821;
    assign _e_1844 = _e_1821[34:17];
    assign value_n1 = _e_1844[15:0];
    assign __n6 = _e_1821[16:0];
    assign _e_4150 = _e_1844[17:16] == 2'd2;
    localparam[0:0] _e_4151 = 1;
    assign _e_4152 = _e_4150 && _e_4151;
    localparam[0:0] _e_4153 = 1;
    assign _e_4154 = _e_4152 && _e_4153;
    assign _e_1848 = value_n1[7:0];
    assign _e_1847 = {1'd1, _e_1848};
    always_comb begin
        priority casez ({_e_4134, _e_4140, _e_4147, _e_4154})
            4'b1???: data_n3 = _e_1830;
            4'b01??: data_n3 = _e_1836;
            4'b001?: data_n3 = _e_1841;
            4'b0001: data_n3 = _e_1847;
            4'b?: data_n3 = 9'dx;
        endcase
    end
    assign _e_1851 = {data_n3};
    assign {\ds_mut } = _e_1851_mut;
    assign output__ = _e_1851;
    assign _e_1851_mut = input__;
endmodule

module \protocols::i2c::impl_23::into_bytes  (
        input[31:0] self_i,
        output[37:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::impl_23::into_bytes" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::impl_23::into_bytes );
        end
    end
    `endif
    logic[31:0] \self ;
    assign \self  = self_i;
    (* src = "build/libs/protocols/src/i2c.spade:28,13" *)
    logic[6:0] \device ;
    (* src = "build/libs/protocols/src/i2c.spade:28,13" *)
    logic[15:0] \addr ;
    (* src = "build/libs/protocols/src/i2c.spade:28,13" *)
    logic[7:0] \byte ;
    logic _e_4156;
    logic _e_4160;
    logic _e_4161;
    logic _e_4162;
    (* src = "build/libs/protocols/src/i2c.spade:28,76" *)
    logic[7:0] _e_1923;
    (* src = "build/libs/protocols/src/i2c.spade:28,93" *)
    logic[15:0] _e_1927;
    (* src = "build/libs/protocols/src/i2c.spade:28,87" *)
    logic[7:0] _e_1926;
    (* src = "build/libs/protocols/src/i2c.spade:28,105" *)
    logic[7:0] _e_1930;
    (* src = "build/libs/protocols/src/i2c.spade:28,67" *)
    logic[31:0] _e_1922;
    (* src = "build/libs/protocols/src/i2c.spade:28,52" *)
    logic[37:0] _e_1921;
    (* src = "build/libs/protocols/src/i2c.spade:29,13" *)
    logic[6:0] device_n1;
    (* src = "build/libs/protocols/src/i2c.spade:29,13" *)
    logic[15:0] addr_n1;
    logic _e_4164;
    logic _e_4167;
    logic _e_4168;
    (* src = "build/libs/protocols/src/i2c.spade:29,69" *)
    logic[7:0] _e_1939;
    (* src = "build/libs/protocols/src/i2c.spade:29,86" *)
    logic[15:0] _e_1943;
    (* src = "build/libs/protocols/src/i2c.spade:29,80" *)
    logic[7:0] _e_1942;
    (* src = "build/libs/protocols/src/i2c.spade:29,98" *)
    logic[7:0] _e_1946;
    (* src = "build/libs/protocols/src/i2c.spade:29,60" *)
    logic[31:0] _e_1938;
    (* src = "build/libs/protocols/src/i2c.spade:29,45" *)
    logic[37:0] _e_1937;
    (* src = "build/libs/protocols/src/i2c.spade:27,9" *)
    logic[37:0] _e_1915;
    assign \device  = \self [30:24];
    assign \addr  = \self [23:8];
    assign \byte  = \self [7:0];
    assign _e_4156 = \self [31] == 1'd0;
    localparam[0:0] _e_4157 = 1;
    localparam[0:0] _e_4158 = 1;
    localparam[0:0] _e_4159 = 1;
    assign _e_4160 = _e_4156 && _e_4157;
    assign _e_4161 = _e_4160 && _e_4158;
    assign _e_4162 = _e_4161 && _e_4159;
    localparam[0:0] _e_1925 = 0;
    assign _e_1923 = {\device , _e_1925};
    localparam[15:0] _e_1929 = 8;
    assign _e_1927 = \addr  >> _e_1929;
    assign _e_1926 = _e_1927[7:0];
    assign _e_1930 = \addr [7:0];
    assign _e_1922 = {\byte , _e_1930, _e_1926, _e_1923};
    localparam[2:0] _e_1933 = 4;
    (* src = "build/libs/protocols/src/i2c.spade:28,52" *)
    \protocols::i2c::new_byte_queue  new_byte_queue_0(.inner_i(_e_1922), .count_i(_e_1933), .output__(_e_1921));
    assign device_n1 = \self [30:24];
    assign addr_n1 = \self [23:8];
    assign _e_4164 = \self [31] == 1'd1;
    localparam[0:0] _e_4165 = 1;
    localparam[0:0] _e_4166 = 1;
    assign _e_4167 = _e_4164 && _e_4165;
    assign _e_4168 = _e_4167 && _e_4166;
    localparam[0:0] _e_1941 = 1;
    assign _e_1939 = {device_n1, _e_1941};
    localparam[15:0] _e_1945 = 8;
    assign _e_1943 = addr_n1 >> _e_1945;
    assign _e_1942 = _e_1943[7:0];
    assign _e_1946 = addr_n1[7:0];
    localparam[7:0] _e_1948 = 0;
    assign _e_1938 = {_e_1948, _e_1946, _e_1942, _e_1939};
    localparam[2:0] _e_1949 = 3;
    (* src = "build/libs/protocols/src/i2c.spade:29,45" *)
    \protocols::i2c::new_byte_queue  new_byte_queue_1(.inner_i(_e_1938), .count_i(_e_1949), .output__(_e_1937));
    always_comb begin
        priority casez ({_e_4162, _e_4168})
            2'b1?: _e_1915 = _e_1921;
            2'b01: _e_1915 = _e_1937;
            2'b?: _e_1915 = 38'dx;
        endcase
    end
    assign output__ = _e_1915;
endmodule

module \protocols::i2c::impl_23::is_write  (
        input[31:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::impl_23::is_write" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::impl_23::is_write );
        end
    end
    `endif
    logic[31:0] \self ;
    assign \self  = self_i;
    (* src = "build/libs/protocols/src/i2c.spade:35,13" *)
    logic[6:0] \_ ;
    (* src = "build/libs/protocols/src/i2c.spade:35,13" *)
    logic[15:0] __n1;
    (* src = "build/libs/protocols/src/i2c.spade:35,13" *)
    logic[7:0] __n2;
    logic _e_4170;
    logic _e_4174;
    logic _e_4175;
    logic _e_4176;
    (* src = "build/libs/protocols/src/i2c.spade:36,13" *)
    logic[6:0] __n3;
    (* src = "build/libs/protocols/src/i2c.spade:36,13" *)
    logic[15:0] __n4;
    logic _e_4178;
    logic _e_4181;
    logic _e_4182;
    (* src = "build/libs/protocols/src/i2c.spade:34,9" *)
    logic _e_1951;
    assign \_  = \self [30:24];
    assign __n1 = \self [23:8];
    assign __n2 = \self [7:0];
    assign _e_4170 = \self [31] == 1'd0;
    localparam[0:0] _e_4171 = 1;
    localparam[0:0] _e_4172 = 1;
    localparam[0:0] _e_4173 = 1;
    assign _e_4174 = _e_4170 && _e_4171;
    assign _e_4175 = _e_4174 && _e_4172;
    assign _e_4176 = _e_4175 && _e_4173;
    localparam[0:0] _e_1957 = 1;
    assign __n3 = \self [30:24];
    assign __n4 = \self [23:8];
    assign _e_4178 = \self [31] == 1'd1;
    localparam[0:0] _e_4179 = 1;
    localparam[0:0] _e_4180 = 1;
    assign _e_4181 = _e_4178 && _e_4179;
    assign _e_4182 = _e_4181 && _e_4180;
    localparam[0:0] _e_1961 = 0;
    always_comb begin
        priority casez ({_e_4176, _e_4182})
            2'b1?: _e_1951 = _e_1957;
            2'b01: _e_1951 = _e_1961;
            2'b?: _e_1951 = 1'dx;
        endcase
    end
    assign output__ = _e_1951;
endmodule

module \protocols::i2c::impl_24::is_empty  (
        input[37:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::impl_24::is_empty" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::impl_24::is_empty );
        end
    end
    `endif
    logic[37:0] \self ;
    assign \self  = self_i;
    (* src = "build/libs/protocols/src/i2c.spade:57,9" *)
    logic[2:0] _e_1969;
    (* src = "build/libs/protocols/src/i2c.spade:57,21" *)
    logic[2:0] _e_1971;
    (* src = "build/libs/protocols/src/i2c.spade:57,9" *)
    logic _e_1968;
    assign _e_1969 = \self [2:0];
    assign _e_1971 = \self [5:3];
    assign _e_1968 = _e_1969 == _e_1971;
    assign output__ = _e_1968;
endmodule

module \protocols::i2c::impl_24::next  (
        input[37:0] self_i,
        output[37:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::impl_24::next" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::impl_24::next );
        end
    end
    `endif
    logic[37:0] \self ;
    assign \self  = self_i;
    (* src = "build/libs/protocols/src/i2c.spade:62,20" *)
    logic[31:0] _e_1975;
    (* src = "build/libs/protocols/src/i2c.spade:63,20" *)
    logic[2:0] _e_1977;
    (* src = "build/libs/protocols/src/i2c.spade:64,24" *)
    logic[2:0] _e_1981;
    (* src = "build/libs/protocols/src/i2c.spade:64,24" *)
    logic[3:0] _e_1980;
    (* src = "build/libs/protocols/src/i2c.spade:64,18" *)
    logic[2:0] _e_1979;
    (* src = "build/libs/protocols/src/i2c.spade:61,9" *)
    logic[37:0] _e_1974;
    assign _e_1975 = \self [37:6];
    assign _e_1977 = \self [5:3];
    assign _e_1981 = \self [2:0];
    localparam[2:0] _e_1983 = 1;
    assign _e_1980 = _e_1981 + _e_1983;
    assign _e_1979 = _e_1980[2:0];
    assign _e_1974 = {_e_1975, _e_1977, _e_1979};
    assign output__ = _e_1974;
endmodule

module \protocols::i2c::impl_24::byte  (
        input[37:0] self_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::i2c::impl_24::byte" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::i2c::impl_24::byte );
        end
    end
    `endif
    logic[37:0] \self ;
    assign \self  = self_i;
    (* src = "build/libs/protocols/src/i2c.spade:69,9" *)
    logic[31:0] _e_1986;
    (* src = "build/libs/protocols/src/i2c.spade:69,26" *)
    logic[2:0] _e_1989;
    (* src = "build/libs/protocols/src/i2c.spade:69,20" *)
    logic[1:0] _e_1988;
    (* src = "build/libs/protocols/src/i2c.spade:69,9" *)
    logic[7:0] _e_1985;
    assign _e_1986 = \self [37:6];
    assign _e_1989 = \self [2:0];
    assign _e_1988 = _e_1989[1:0];
    assign _e_1985 = _e_1986[_e_1988 * 8+:8];
    assign output__ = _e_1985;
endmodule

module \protocols::uart::impl_25::into_uart  (
        input[8:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        input[18:0] config_i,
        output tx_o
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::uart::impl_25::into_uart" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::uart::impl_25::into_uart );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[18:0] \config ;
    assign \config  = config_i;
    logic \tx_mut ;
    assign tx_o = \tx_mut ;
    (* src = "build/libs/protocols/src/uart.spade:119,19" *)
    logic _e_2826;
    (* src = "build/libs/protocols/src/uart.spade:119,19" *)
    \protocols::uart::uart_tx  uart_tx_0(.clk_i(\clk ), .rst_i(\rst ), .transmit_i(\self ), .transmit_o(\self_mut ), .config_i(\config ), .output__(_e_2826));
    assign \tx_mut  = _e_2826;
endmodule

module \protocols::uart::impl_26::strip_parity  (
        input[9:0] self_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "protocols::uart::impl_26::strip_parity" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \protocols::uart::impl_26::strip_parity );
        end
    end
    `endif
    logic[9:0] \self ;
    assign \self  = self_i;
    (* src = "build/libs/protocols/src/uart.spade:141,13" *)
    logic[7:0] \val ;
    logic _e_4184;
    logic _e_4186;
    (* src = "build/libs/protocols/src/uart.spade:141,33" *)
    logic[8:0] _e_2837;
    (* src = "build/libs/protocols/src/uart.spade:142,13" *)
    logic[7:0] val_n1;
    logic _e_4188;
    logic _e_4190;
    (* src = "build/libs/protocols/src/uart.spade:142,42" *)
    logic[8:0] _e_2841;
    logic _e_4192;
    (* src = "build/libs/protocols/src/uart.spade:143,30" *)
    logic[8:0] _e_2844;
    (* src = "build/libs/protocols/src/uart.spade:140,9" *)
    logic[8:0] _e_2833;
    assign \val  = \self [7:0];
    assign _e_4184 = \self [9:8] == 2'd0;
    localparam[0:0] _e_4185 = 1;
    assign _e_4186 = _e_4184 && _e_4185;
    assign _e_2837 = {1'd1, \val };
    assign val_n1 = \self [7:0];
    assign _e_4188 = \self [9:8] == 2'd1;
    localparam[0:0] _e_4189 = 1;
    assign _e_4190 = _e_4188 && _e_4189;
    assign _e_2841 = {1'd1, val_n1};
    assign _e_4192 = \self [9:8] == 2'd2;
    assign _e_2844 = {1'd0, 8'bX};
    always_comb begin
        priority casez ({_e_4186, _e_4190, _e_4192})
            3'b1??: _e_2833 = _e_2837;
            3'b01?: _e_2833 = _e_2841;
            3'b001: _e_2833 = _e_2844;
            3'b?: _e_2833 = 9'dx;
        endcase
    end
    assign output__ = _e_2833;
endmodule

module \std::cdc::sync2[1447]  (
        input clk_i,
        input in_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::sync2[1447]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::sync2[1447] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:16,14" *)
    reg \sync1 ;
    (* src = "<compiler dir>/stdlib/cdc.spade:17,14" *)
    reg \sync2 ;
    always @(posedge \clk ) begin
        \sync1  <= \in ;
    end
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign output__ = \sync2 ;
endmodule

module \std::conv::impl_4::to_bits[1448]  (
        input[7:0] self_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_4::to_bits[1448]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_4::to_bits[1448] );
        end
    end
    `endif
    logic[7:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:175,9" *)
    logic[7:0] _e_517;
    (* src = "<compiler dir>/stdlib/conv.spade:175,9" *)
    \std::conv::uint_to_bits[1463]  uint_to_bits_0(.input_i(\self ), .output__(_e_517));
    assign output__ = _e_517;
endmodule

module \quickscope::quickscope[1449]  (
        input clk_i,
        input rst_i,
        input trigger_i,
        input[15:0] data_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::quickscope[1449]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::quickscope[1449] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \trigger ;
    assign \trigger  = trigger_i;
    logic[15:0] \data ;
    assign \data  = data_i;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic _e_4193;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic _e_4194_mut;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic \empty ;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic \empty_mut ;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic _e_4195;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic _e_4196_mut;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic \full ;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic \full_mut ;
    (* src = "build/libs/quickscope/src/main.spade:57,26" *)
    logic _e_3274;
    (* src = "build/libs/quickscope/src/main.spade:57,36" *)
    logic _e_3277;
    (* src = "build/libs/quickscope/src/main.spade:57,13" *)
    logic[2:0] _e_3272;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic[2:0] _e_3283;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3280;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3281;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3282;
    logic _e_4198;
    logic _e_4200;
    logic _e_4201;
    logic _e_4202;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic[2:0] _e_3288;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic _e_3285;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic \_ ;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic _e_3287;
    logic _e_4207;
    logic _e_4208;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic[2:0] _e_3293;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n1;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n2;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n3;
    logic _e_4213;
    logic _e_4214;
    (* src = "build/libs/quickscope/src/main.spade:57,7" *)
    logic _e_3271;
    (* src = "build/libs/quickscope/src/main.spade:56,13" *)
    reg \triggered ;
    (* src = "build/libs/quickscope/src/main.spade:68,33" *)
    logic[16:0] _e_3298;
    (* src = "build/libs/quickscope/src/main.spade:68,53" *)
    logic[16:0] _e_3301;
    (* src = "build/libs/quickscope/src/main.spade:68,18" *)
    logic[16:0] \data_in ;
    (* src = "build/libs/quickscope/src/main.spade:70,24" *)
    logic \triggered_now ;
    (* src = "build/libs/quickscope/src/main.spade:71,40" *)
    logic[23:0] _e_3311;
    (* src = "build/libs/quickscope/src/main.spade:71,35" *)
    logic[24:0] _e_3310;
    (* src = "build/libs/quickscope/src/main.spade:71,71" *)
    logic[24:0] _e_3316;
    (* src = "build/libs/quickscope/src/main.spade:71,17" *)
    logic[24:0] \header ;
    (* src = "build/libs/quickscope/src/main.spade:72,40" *)
    logic[15:0] _e_3322;
    (* src = "build/libs/quickscope/src/main.spade:72,35" *)
    logic[16:0] _e_3321;
    (* src = "build/libs/quickscope/src/main.spade:72,61" *)
    logic[16:0] _e_3326;
    (* src = "build/libs/quickscope/src/main.spade:72,17" *)
    logic[16:0] \footer ;
    (* src = "build/libs/quickscope/src/main.spade:74,17" *)
    logic _e_3340_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[16:0] _e_3337;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3337_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[18:0] _e_3336;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3336_mut;
    (* src = "build/libs/quickscope/src/main.spade:76,19" *)
    logic _e_3344_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[18:0] _e_3335;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3335_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[16:0] _e_3334;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3334_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[16:0] _e_3333;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3333_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[8:0] _e_3332;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3332_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3331;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3331_mut;
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    logic[9:0] _e_3363;
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    logic _e_3363_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3330;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3330_mut;
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    logic[9:0] _e_3367;
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    logic _e_3367_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3329;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3329_mut;
    (* src = "build/libs/quickscope/src/main.spade:90,20" *)
    logic[15:0] _e_3373;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[8:0] _e_3328;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3328_mut;
    
    assign _e_4193 = _e_4194_mut;
    assign \empty  = {_e_4193};
    assign {_e_4194_mut} = \empty_mut ;
    
    assign _e_4195 = _e_4196_mut;
    assign \full  = {_e_4195};
    assign {_e_4196_mut} = \full_mut ;
    localparam[0:0] _e_3269 = 0;
    assign _e_3274 = \empty ;
    assign _e_3277 = \full ;
    assign _e_3272 = {\triggered , _e_3274, _e_3277};
    assign _e_3283 = _e_3272;
    assign _e_3280 = _e_3272[2];
    assign _e_3281 = _e_3272[1];
    assign _e_3282 = _e_3272[0];
    assign _e_4198 = !_e_3280;
    assign _e_4200 = !_e_3282;
    assign _e_4201 = _e_4198 && _e_3281;
    assign _e_4202 = _e_4201 && _e_4200;
    assign _e_3288 = _e_3272;
    assign _e_3285 = _e_3272[2];
    assign \_  = _e_3272[1];
    assign _e_3287 = _e_3272[0];
    localparam[0:0] _e_4205 = 1;
    assign _e_4207 = _e_3285 && _e_4205;
    assign _e_4208 = _e_4207 && _e_3287;
    localparam[0:0] _e_3289 = 0;
    assign _e_3293 = _e_3272;
    assign __n1 = _e_3272[2];
    assign __n2 = _e_3272[1];
    assign __n3 = _e_3272[0];
    localparam[0:0] _e_4210 = 1;
    localparam[0:0] _e_4211 = 1;
    localparam[0:0] _e_4212 = 1;
    assign _e_4213 = _e_4210 && _e_4211;
    assign _e_4214 = _e_4213 && _e_4212;
    always_comb begin
        priority casez ({_e_4202, _e_4208, _e_4214})
            3'b1??: _e_3271 = \trigger ;
            3'b01?: _e_3271 = _e_3289;
            3'b001: _e_3271 = \triggered ;
            3'b?: _e_3271 = 1'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \triggered  <= _e_3269;
        end
        else begin
            \triggered  <= _e_3271;
        end
    end
    assign _e_3298 = {1'd1, \data };
    assign _e_3301 = {1'd0, 16'bX};
    assign \data_in  = \triggered  ? _e_3298 : _e_3301;
    (* src = "build/libs/quickscope/src/main.spade:70,24" *)
    \std::io::rising_edge  rising_edge_0(.clk_i(\clk ), .sync1_i(\triggered ), .output__(\triggered_now ));
    localparam[7:0] _e_3312 = 255;
    localparam[7:0] _e_3313 = 1;
    localparam[7:0] _e_3314 = 2;
    assign _e_3311 = {_e_3314, _e_3313, _e_3312};
    assign _e_3310 = {1'd1, _e_3311};
    assign _e_3316 = {1'd0, 24'bX};
    assign \header  = \triggered_now  ? _e_3310 : _e_3316;
    localparam[7:0] _e_3323 = 255;
    localparam[7:0] _e_3324 = 1;
    assign _e_3322 = {_e_3324, _e_3323};
    assign _e_3321 = {1'd1, _e_3322};
    assign _e_3326 = {1'd0, 16'bX};
    assign \footer  = \triggered_now  ? _e_3321 : _e_3326;
    assign \full_mut  = _e_3340_mut;
    assign _e_3337 = {\data_in };
    assign {_e_3340_mut} = _e_3337_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_20::fifo_buffer[1464]  fifo_buffer_0(.self_i(_e_3337), .self_o(_e_3337_mut), .clk_i(\clk ), .rst_i(\rst ), .output__(_e_3336), .input__(_e_3336_mut));
    assign \empty_mut  = _e_3344_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_19::read_empty[1465]  read_empty_0(.self_i(_e_3336), .self_o(_e_3336_mut), .wire_o(_e_3344_mut), .output__(_e_3335), .input__(_e_3335_mut));
    assign _e_3334 = _e_3335[16:0];
    assign _e_3335_mut = _e_3334_mut;
    
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::map[1466]  map_0(.self_i(_e_3334), .self_o(_e_3334_mut), .output__(_e_3333), .input__(_e_3333_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \quickscope::impl_27::into_element_stream[1467]  into_element_stream_0(.self_i(_e_3333), .self_o(_e_3333_mut), .clk_i(\clk ), .rst_i(\rst ), .output__(_e_3332), .input__(_e_3332_mut));
    
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::map[1468]  map_1(.self_i(_e_3332), .self_o(_e_3332_mut), .output__(_e_3331), .input__(_e_3331_mut));
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    \quickscope::emit_bytes_once[1469]  emit_bytes_once_0(.clk_i(\clk ), .rst_i(\rst ), .value_i(\footer ), .output__(_e_3363), .input__(_e_3363_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::append_lower_priority[1470]  append_lower_priority_0(.self_i(_e_3331), .self_o(_e_3331_mut), .other_i(_e_3363), .other_o(_e_3363_mut), .output__(_e_3330), .input__(_e_3330_mut));
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    \quickscope::emit_bytes_once[1471]  emit_bytes_once_1(.clk_i(\clk ), .rst_i(\rst ), .value_i(\header ), .output__(_e_3367), .input__(_e_3367_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::append_higher_priority[1472]  append_higher_priority_0(.self_i(_e_3330), .self_o(_e_3330_mut), .other_i(_e_3367), .other_o(_e_3367_mut), .output__(_e_3329), .input__(_e_3329_mut));
    localparam[7:0] _e_3374 = 255;
    localparam[7:0] _e_3375 = 254;
    assign _e_3373 = {_e_3375, _e_3374};
    
    localparam[7:0] _e_3384 = 254;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::escape_byte::impl_14::escape_bytes[1473]  escape_bytes_0(.self_i(_e_3329), .self_o(_e_3329_mut), .clk_i(\clk ), .rst_i(\rst ), .escapees_i(_e_3373), .escape_prefix_i(_e_3384), .output__(_e_3328), .input__(_e_3328_mut));
    assign output__ = _e_3328;
    assign _e_3328_mut = input__;
endmodule

module \ready_valid::escape_byte::impl_14::escape_bytes[1450]  (
        input[9:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        input[15:0] escapees_i,
        input[7:0] escape_prefix_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::escape_byte::impl_14::escape_bytes[1450]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::escape_byte::impl_14::escape_bytes[1450] );
        end
    end
    `endif
    logic[9:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[15:0] \escapees ;
    assign \escapees  = escapees_i;
    logic[7:0] \escape_prefix ;
    assign \escape_prefix  = escape_prefix_i;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_4215;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_4216_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_1186;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_1186_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,13" *)
    logic \ds_ready ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,13" *)
    logic \ds_ready_inv_mut ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,49" *)
    logic[9:0] _e_1190;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,39" *)
    logic[19:0] _e_1188;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[19:0] _e_1198;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[8:0] \_ ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[9:0] _e_1196;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic _e_1197;
    logic _e_4220;
    logic _e_4221;
    logic _e_4222;
    logic _e_4223;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,34" *)
    logic[8:0] _e_1200;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,33" *)
    logic[17:0] _e_1199;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[19:0] _e_1207;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[8:0] __n1;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[9:0] _e_1205;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,17" *)
    logic[8:0] _e_1204;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,22" *)
    logic[7:0] \d ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic _e_1206;
    logic _e_4227;
    logic _e_4229;
    logic _e_4231;
    logic _e_4232;
    logic _e_4233;
    logic _e_4234;
    logic _e_4235;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,50" *)
    logic[8:0] _e_1209;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,49" *)
    logic[17:0] _e_1208;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[19:0] _e_1217;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[8:0] __n2;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[9:0] _e_1215;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,17" *)
    logic[8:0] _e_1214;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,22" *)
    logic[7:0] d_n1;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic _e_1216;
    logic _e_4239;
    logic _e_4241;
    logic _e_4243;
    logic _e_4244;
    logic _e_4245;
    logic _e_4246;
    logic _e_4247;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,59" *)
    logic _e_1221;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,56" *)
    logic[7:0] _e_1220;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,51" *)
    logic[8:0] _e_1219;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,50" *)
    logic[17:0] _e_1218;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[19:0] _e_1232;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[8:0] _e_1229;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[9:0] _e_1230;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic __n3;
    logic _e_4250;
    logic _e_4252;
    logic _e_4254;
    logic _e_4255;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,43" *)
    logic[8:0] _e_1234;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,49" *)
    logic[8:0] _e_1235;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,42" *)
    logic[17:0] _e_1233;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[19:0] _e_1241;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[8:0] _e_1236;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[9:0] _e_1239;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,29" *)
    logic[8:0] _e_1238;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,34" *)
    logic[7:0] d_n2;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic __n4;
    logic _e_4258;
    logic _e_4260;
    logic _e_4262;
    logic _e_4264;
    logic _e_4265;
    logic _e_4267;
    logic _e_4268;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,18" *)
    logic[8:0] _e_1244;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,27" *)
    logic[8:0] _e_1246;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,17" *)
    logic[17:0] _e_1243;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[19:0] _e_1252;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[8:0] _e_1247;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[9:0] _e_1250;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,29" *)
    logic[8:0] _e_1249;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,34" *)
    logic[7:0] d_n3;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic __n5;
    logic _e_4271;
    logic _e_4273;
    logic _e_4275;
    logic _e_4277;
    logic _e_4278;
    logic _e_4280;
    logic _e_4281;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,20" *)
    logic _e_1255;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,22" *)
    logic[8:0] _e_1260;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,43" *)
    logic[8:0] _e_1262;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,21" *)
    logic[17:0] _e_1259;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,22" *)
    logic[8:0] _e_1266;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,31" *)
    logic[8:0] _e_1268;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,21" *)
    logic[17:0] _e_1265;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,17" *)
    logic[17:0] _e_1254;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[19:0] _e_1273;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[8:0] _e_1270;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,14" *)
    logic[7:0] \c ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[9:0] __n6;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic __n7;
    logic _e_4284;
    logic _e_4286;
    logic _e_4289;
    logic _e_4290;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,38" *)
    logic[7:0] _e_1279;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,23" *)
    logic[7:0] _e_1277;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,18" *)
    logic[8:0] _e_1276;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,46" *)
    logic[8:0] _e_1281;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,17" *)
    logic[17:0] _e_1275;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,33" *)
    logic[17:0] _e_1284;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,13" *)
    logic[8:0] \out ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,13" *)
    logic[8:0] \next_state ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:52,35" *)
    logic[8:0] _e_1288;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:52,18" *)
    reg[8:0] \state ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,13" *)
    logic _e_1290_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,33" *)
    logic[9:0] _e_1294;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic[9:0] _e_1300;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic[8:0] _e_1298;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic \ds ;
    logic _e_4293;
    logic _e_4295;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic[9:0] _e_1305;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic[8:0] _e_1303;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,14" *)
    logic[7:0] __n8;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic __n9;
    logic _e_4298;
    logic _e_4300;
    logic _e_4302;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,27" *)
    logic _e_1292;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:59,9" *)
    logic[8:0] _e_1307;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:59,9" *)
    logic _e_1307_mut;
    
    assign _e_4215 = _e_4216_mut;
    assign _e_1186 = {_e_4215};
    assign {_e_4216_mut} = _e_1186_mut;
    assign \ds_ready  = _e_1186;
    assign _e_1186_mut = \ds_ready_inv_mut ;
    assign _e_1190 = \self [9:0];
    assign _e_1188 = {\state , _e_1190, \ds_ready };
    assign _e_1198 = _e_1188;
    assign \_  = _e_1188[19:11];
    assign _e_1196 = _e_1188[10:1];
    assign _e_1197 = _e_1188[0];
    localparam[0:0] _e_4218 = 1;
    assign _e_4220 = _e_1196[9] == 1'd0;
    assign _e_4221 = !_e_1197;
    assign _e_4222 = _e_4218 && _e_4220;
    assign _e_4223 = _e_4222 && _e_4221;
    assign _e_1200 = {1'd0, 8'bX};
    assign _e_1199 = {_e_1200, \state };
    assign _e_1207 = _e_1188;
    assign __n1 = _e_1188[19:11];
    assign _e_1205 = _e_1188[10:1];
    assign _e_1204 = _e_1205[8:0];
    assign \d  = _e_1204[7:0];
    assign _e_1206 = _e_1188[0];
    localparam[0:0] _e_4225 = 1;
    assign _e_4227 = _e_1205[9] == 1'd1;
    assign _e_4229 = _e_1204[8] == 1'd1;
    localparam[0:0] _e_4230 = 1;
    assign _e_4231 = _e_4229 && _e_4230;
    assign _e_4232 = _e_4227 && _e_4231;
    assign _e_4233 = !_e_1206;
    assign _e_4234 = _e_4225 && _e_4232;
    assign _e_4235 = _e_4234 && _e_4233;
    assign _e_1209 = {1'd1, \d };
    assign _e_1208 = {_e_1209, \state };
    assign _e_1217 = _e_1188;
    assign __n2 = _e_1188[19:11];
    assign _e_1215 = _e_1188[10:1];
    assign _e_1214 = _e_1215[8:0];
    assign d_n1 = _e_1214[7:0];
    assign _e_1216 = _e_1188[0];
    localparam[0:0] _e_4237 = 1;
    assign _e_4239 = _e_1215[9] == 1'd1;
    assign _e_4241 = _e_1214[8] == 1'd0;
    localparam[0:0] _e_4242 = 1;
    assign _e_4243 = _e_4241 && _e_4242;
    assign _e_4244 = _e_4239 && _e_4243;
    assign _e_4245 = !_e_1216;
    assign _e_4246 = _e_4237 && _e_4244;
    assign _e_4247 = _e_4246 && _e_4245;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,59" *)
    \nstd::array::impl_35::contains[1474]  contains_0(.self_i(\escapees ), .needle_i(d_n1), .output__(_e_1221));
    assign _e_1220 = _e_1221 ? \escape_prefix  : d_n1;
    assign _e_1219 = {1'd1, _e_1220};
    assign _e_1218 = {_e_1219, \state };
    assign _e_1232 = _e_1188;
    assign _e_1229 = _e_1188[19:11];
    assign _e_1230 = _e_1188[10:1];
    assign __n3 = _e_1188[0];
    assign _e_4250 = _e_1229[8] == 1'd0;
    assign _e_4252 = _e_1230[9] == 1'd0;
    localparam[0:0] _e_4253 = 1;
    assign _e_4254 = _e_4250 && _e_4252;
    assign _e_4255 = _e_4254 && _e_4253;
    assign _e_1234 = {1'd0, 8'bX};
    assign _e_1235 = {1'd0, 8'bX};
    assign _e_1233 = {_e_1234, _e_1235};
    assign _e_1241 = _e_1188;
    assign _e_1236 = _e_1188[19:11];
    assign _e_1239 = _e_1188[10:1];
    assign _e_1238 = _e_1239[8:0];
    assign d_n2 = _e_1238[7:0];
    assign __n4 = _e_1188[0];
    assign _e_4258 = _e_1236[8] == 1'd0;
    assign _e_4260 = _e_1239[9] == 1'd1;
    assign _e_4262 = _e_1238[8] == 1'd1;
    localparam[0:0] _e_4263 = 1;
    assign _e_4264 = _e_4262 && _e_4263;
    assign _e_4265 = _e_4260 && _e_4264;
    localparam[0:0] _e_4266 = 1;
    assign _e_4267 = _e_4258 && _e_4265;
    assign _e_4268 = _e_4267 && _e_4266;
    assign _e_1244 = {1'd1, d_n2};
    assign _e_1246 = {1'd0, 8'bX};
    assign _e_1243 = {_e_1244, _e_1246};
    assign _e_1252 = _e_1188;
    assign _e_1247 = _e_1188[19:11];
    assign _e_1250 = _e_1188[10:1];
    assign _e_1249 = _e_1250[8:0];
    assign d_n3 = _e_1249[7:0];
    assign __n5 = _e_1188[0];
    assign _e_4271 = _e_1247[8] == 1'd0;
    assign _e_4273 = _e_1250[9] == 1'd1;
    assign _e_4275 = _e_1249[8] == 1'd0;
    localparam[0:0] _e_4276 = 1;
    assign _e_4277 = _e_4275 && _e_4276;
    assign _e_4278 = _e_4273 && _e_4277;
    localparam[0:0] _e_4279 = 1;
    assign _e_4280 = _e_4271 && _e_4278;
    assign _e_4281 = _e_4280 && _e_4279;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,20" *)
    \nstd::array::impl_35::contains[1474]  contains_1(.self_i(\escapees ), .needle_i(d_n3), .output__(_e_1255));
    assign _e_1260 = {1'd1, \escape_prefix };
    assign _e_1262 = {1'd1, d_n3};
    assign _e_1259 = {_e_1260, _e_1262};
    assign _e_1266 = {1'd1, d_n3};
    assign _e_1268 = {1'd0, 8'bX};
    assign _e_1265 = {_e_1266, _e_1268};
    assign _e_1254 = _e_1255 ? _e_1259 : _e_1265;
    assign _e_1273 = _e_1188;
    assign _e_1270 = _e_1188[19:11];
    assign \c  = _e_1270[7:0];
    assign __n6 = _e_1188[10:1];
    assign __n7 = _e_1188[0];
    assign _e_4284 = _e_1270[8] == 1'd1;
    localparam[0:0] _e_4285 = 1;
    assign _e_4286 = _e_4284 && _e_4285;
    localparam[0:0] _e_4287 = 1;
    localparam[0:0] _e_4288 = 1;
    assign _e_4289 = _e_4286 && _e_4287;
    assign _e_4290 = _e_4289 && _e_4288;
    assign _e_1279 = {\c };
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,23" *)
    \ready_valid::escape_byte::impl_16::call[1475]  call_0(.args_i(_e_1279), .output__(_e_1277));
    assign _e_1276 = {1'd1, _e_1277};
    assign _e_1281 = {1'd0, 8'bX};
    assign _e_1275 = {_e_1276, _e_1281};
    always_comb begin
        priority casez ({_e_4223, _e_4235, _e_4247, _e_4255, _e_4268, _e_4281, _e_4290})
            7'b1??????: _e_1284 = _e_1199;
            7'b01?????: _e_1284 = _e_1208;
            7'b001????: _e_1284 = _e_1218;
            7'b0001???: _e_1284 = _e_1233;
            7'b00001??: _e_1284 = _e_1243;
            7'b000001?: _e_1284 = _e_1254;
            7'b0000001: _e_1284 = _e_1275;
            7'b?: _e_1284 = 18'dx;
        endcase
    end
    assign \out  = _e_1284[17:9];
    assign \next_state  = _e_1284[8:0];
    assign _e_1288 = {1'd0, 8'bX};
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_1288;
        end
        else begin
            \state  <= \next_state ;
        end
    end
    assign \self_mut  = _e_1290_mut;
    assign _e_1294 = {\state , \ds_ready };
    assign _e_1300 = _e_1294;
    assign _e_1298 = _e_1294[9:1];
    assign \ds  = _e_1294[0];
    assign _e_4293 = _e_1298[8] == 1'd0;
    localparam[0:0] _e_4294 = 1;
    assign _e_4295 = _e_4293 && _e_4294;
    assign _e_1305 = _e_1294;
    assign _e_1303 = _e_1294[9:1];
    assign __n8 = _e_1303[7:0];
    assign __n9 = _e_1294[0];
    assign _e_4298 = _e_1303[8] == 1'd1;
    localparam[0:0] _e_4299 = 1;
    assign _e_4300 = _e_4298 && _e_4299;
    localparam[0:0] _e_4301 = 1;
    assign _e_4302 = _e_4300 && _e_4301;
    localparam[0:0] _e_1306 = 0;
    always_comb begin
        priority casez ({_e_4295, _e_4302})
            2'b1?: _e_1292 = \ds ;
            2'b01: _e_1292 = _e_1306;
            2'b?: _e_1292 = 1'dx;
        endcase
    end
    assign _e_1290_mut = _e_1292;
    assign _e_1307 = {\out };
    assign {\ds_ready_inv_mut } = _e_1307_mut;
    assign output__ = _e_1307;
    assign _e_1307_mut = input__;
endmodule

module \std::ports::new_mut_wire[1451]  (
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ports::new_mut_wire[1451]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ports::new_mut_wire[1451] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic _e_4303;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic _e_4304_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic _e_1124;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic _e_1124_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic _e_1123_mut;
    
    assign _e_4303 = _e_4304_mut;
    assign _e_1124 = {_e_4303};
    assign {_e_4304_mut} = _e_1124_mut;
    assign _e_1124_mut = _e_1123_mut;
    assign _e_1123_mut = input__;
endmodule

module \ready_valid::impl_17::buffer[1452]  (
        input[16:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        output[16:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::buffer[1452]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::buffer[1452] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/ready_valid/src/main.spade:20,18" *)
    logic \ds_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:22,35" *)
    logic[16:0] _e_1389;
    (* src = "build/libs/ready_valid/src/main.spade:22,58" *)
    logic[16:0] _e_1393;
    (* src = "build/libs/ready_valid/src/main.spade:22,49" *)
    logic[33:0] _e_1391;
    (* src = "build/libs/ready_valid/src/main.spade:23,13" *)
    logic[33:0] _e_1399;
    (* src = "build/libs/ready_valid/src/main.spade:23,13" *)
    logic[16:0] _e_1397;
    (* src = "build/libs/ready_valid/src/main.spade:23,14" *)
    logic[15:0] \_ ;
    (* src = "build/libs/ready_valid/src/main.spade:23,13" *)
    logic[16:0] __n1;
    logic _e_4307;
    logic _e_4309;
    logic _e_4311;
    (* src = "build/libs/ready_valid/src/main.spade:23,37" *)
    logic _e_1401;
    (* src = "build/libs/ready_valid/src/main.spade:24,17" *)
    logic[16:0] _e_1404;
    (* src = "build/libs/ready_valid/src/main.spade:23,29" *)
    logic[16:0] _e_1400;
    (* src = "build/libs/ready_valid/src/main.spade:28,13" *)
    logic[33:0] _e_1410;
    (* src = "build/libs/ready_valid/src/main.spade:28,13" *)
    logic[16:0] _e_1407;
    (* src = "build/libs/ready_valid/src/main.spade:28,13" *)
    logic[16:0] _e_1409;
    (* src = "build/libs/ready_valid/src/main.spade:28,20" *)
    logic[15:0] \new_n0 ;
    logic _e_4314;
    logic _e_4316;
    logic _e_4318;
    logic _e_4319;
    (* src = "build/libs/ready_valid/src/main.spade:28,34" *)
    logic[16:0] _e_1411;
    (* src = "build/libs/ready_valid/src/main.spade:29,13" *)
    logic[33:0] _e_1415;
    (* src = "build/libs/ready_valid/src/main.spade:29,13" *)
    logic[16:0] _e_1413;
    (* src = "build/libs/ready_valid/src/main.spade:29,13" *)
    logic[16:0] _e_1414;
    logic _e_4322;
    logic _e_4324;
    logic _e_4325;
    (* src = "build/libs/ready_valid/src/main.spade:29,29" *)
    logic[16:0] _e_1416;
    (* src = "build/libs/ready_valid/src/main.spade:22,43" *)
    logic[16:0] _e_1390;
    (* src = "build/libs/ready_valid/src/main.spade:22,18" *)
    reg[16:0] \value ;
    (* src = "build/libs/ready_valid/src/main.spade:32,13" *)
    logic _e_1417_mut;
    (* src = "build/libs/ready_valid/src/main.spade:32,27" *)
    logic _e_1419;
    (* src = "build/libs/ready_valid/src/main.spade:34,9" *)
    logic[16:0] _e_1422;
    (* src = "build/libs/ready_valid/src/main.spade:34,9" *)
    logic _e_1422_mut;
    (* src = "build/libs/ready_valid/src/main.spade:20,18" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_0(.input__(\ds_mut ));
    assign _e_1389 = {1'd0, 16'bX};
    assign _e_1393 = \self [16:0];
    assign _e_1391 = {\value , _e_1393};
    assign _e_1399 = _e_1391;
    assign _e_1397 = _e_1391[33:17];
    assign \_  = _e_1397[15:0];
    assign __n1 = _e_1391[16:0];
    assign _e_4307 = _e_1397[16] == 1'd1;
    localparam[0:0] _e_4308 = 1;
    assign _e_4309 = _e_4307 && _e_4308;
    localparam[0:0] _e_4310 = 1;
    assign _e_4311 = _e_4309 && _e_4310;
    assign _e_1401 = \ds_mut ;
    assign _e_1404 = {1'd0, 16'bX};
    assign _e_1400 = _e_1401 ? _e_1404 : \value ;
    assign _e_1410 = _e_1391;
    assign _e_1407 = _e_1391[33:17];
    assign _e_1409 = _e_1391[16:0];
    assign \new_n0  = _e_1409[15:0];
    assign _e_4314 = _e_1407[16] == 1'd0;
    assign _e_4316 = _e_1409[16] == 1'd1;
    localparam[0:0] _e_4317 = 1;
    assign _e_4318 = _e_4316 && _e_4317;
    assign _e_4319 = _e_4314 && _e_4318;
    assign _e_1411 = {1'd1, \new_n0 };
    assign _e_1415 = _e_1391;
    assign _e_1413 = _e_1391[33:17];
    assign _e_1414 = _e_1391[16:0];
    assign _e_4322 = _e_1413[16] == 1'd0;
    assign _e_4324 = _e_1414[16] == 1'd0;
    assign _e_4325 = _e_4322 && _e_4324;
    assign _e_1416 = {1'd0, 16'bX};
    always_comb begin
        priority casez ({_e_4311, _e_4319, _e_4325})
            3'b1??: _e_1390 = _e_1400;
            3'b01?: _e_1390 = _e_1411;
            3'b001: _e_1390 = _e_1416;
            3'b?: _e_1390 = 17'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \value  <= _e_1389;
        end
        else begin
            \value  <= _e_1390;
        end
    end
    assign \self_mut  = _e_1417_mut;
    (* src = "build/libs/ready_valid/src/main.spade:32,27" *)
    \std::option::impl_12::is_none[1476]  is_none_0(.self_i(\value ), .output__(_e_1419));
    assign _e_1417_mut = _e_1419;
    assign _e_1422 = {\value };
    assign {\ds_mut } = _e_1422_mut;
    assign output__ = _e_1422;
    assign _e_1422_mut = input__;
endmodule

module \std::array::impl_0::concat[1453]  (
        input self_i,
        input[6:0] other_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::concat[1453]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::concat[1453] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic[6:0] \other ;
    assign \other  = other_i;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    logic[7:0] _e_74;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    \std::conv::concat_arrays[1477]  concat_arrays_0(.l_i(\self ), .r_i(\other ), .output__(_e_74));
    assign output__ = _e_74;
endmodule

module \std::conv::impl_1::to_uint[1454]  (
        input[7:0] self_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::impl_1::to_uint[1454]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::impl_1::to_uint[1454] );
        end
    end
    `endif
    logic[7:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/conv.spade:129,9" *)
    logic[7:0] _e_494;
    (* src = "<compiler dir>/stdlib/conv.spade:129,9" *)
    \std::conv::bits_to_uint[1478]  bits_to_uint_0(.input_i(\self ), .output__(_e_494));
    assign output__ = _e_494;
endmodule

module \quickscope::quickscope[1455]  (
        input clk_i,
        input rst_i,
        input trigger_i,
        input[23:0] data_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::quickscope[1455]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::quickscope[1455] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \trigger ;
    assign \trigger  = trigger_i;
    logic[23:0] \data ;
    assign \data  = data_i;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic _e_4326;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic _e_4327_mut;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic \empty ;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic \empty_mut ;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic _e_4328;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic _e_4329_mut;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic \full ;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic \full_mut ;
    (* src = "build/libs/quickscope/src/main.spade:57,26" *)
    logic _e_3274;
    (* src = "build/libs/quickscope/src/main.spade:57,36" *)
    logic _e_3277;
    (* src = "build/libs/quickscope/src/main.spade:57,13" *)
    logic[2:0] _e_3272;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic[2:0] _e_3283;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3280;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3281;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3282;
    logic _e_4331;
    logic _e_4333;
    logic _e_4334;
    logic _e_4335;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic[2:0] _e_3288;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic _e_3285;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic \_ ;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic _e_3287;
    logic _e_4340;
    logic _e_4341;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic[2:0] _e_3293;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n1;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n2;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n3;
    logic _e_4346;
    logic _e_4347;
    (* src = "build/libs/quickscope/src/main.spade:57,7" *)
    logic _e_3271;
    (* src = "build/libs/quickscope/src/main.spade:56,13" *)
    reg \triggered ;
    (* src = "build/libs/quickscope/src/main.spade:68,33" *)
    logic[24:0] _e_3298;
    (* src = "build/libs/quickscope/src/main.spade:68,53" *)
    logic[24:0] _e_3301;
    (* src = "build/libs/quickscope/src/main.spade:68,18" *)
    logic[24:0] \data_in ;
    (* src = "build/libs/quickscope/src/main.spade:70,24" *)
    logic \triggered_now ;
    (* src = "build/libs/quickscope/src/main.spade:71,40" *)
    logic[23:0] _e_3311;
    (* src = "build/libs/quickscope/src/main.spade:71,35" *)
    logic[24:0] _e_3310;
    (* src = "build/libs/quickscope/src/main.spade:71,71" *)
    logic[24:0] _e_3316;
    (* src = "build/libs/quickscope/src/main.spade:71,17" *)
    logic[24:0] \header ;
    (* src = "build/libs/quickscope/src/main.spade:72,40" *)
    logic[15:0] _e_3322;
    (* src = "build/libs/quickscope/src/main.spade:72,35" *)
    logic[16:0] _e_3321;
    (* src = "build/libs/quickscope/src/main.spade:72,61" *)
    logic[16:0] _e_3326;
    (* src = "build/libs/quickscope/src/main.spade:72,17" *)
    logic[16:0] \footer ;
    (* src = "build/libs/quickscope/src/main.spade:74,17" *)
    logic _e_3340_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[24:0] _e_3337;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3337_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[26:0] _e_3336;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3336_mut;
    (* src = "build/libs/quickscope/src/main.spade:76,19" *)
    logic _e_3344_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[26:0] _e_3335;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3335_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[24:0] _e_3334;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3334_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[24:0] _e_3333;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3333_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[8:0] _e_3332;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3332_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3331;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3331_mut;
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    logic[9:0] _e_3363;
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    logic _e_3363_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3330;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3330_mut;
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    logic[9:0] _e_3367;
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    logic _e_3367_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3329;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3329_mut;
    (* src = "build/libs/quickscope/src/main.spade:90,20" *)
    logic[15:0] _e_3373;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[8:0] _e_3328;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3328_mut;
    
    assign _e_4326 = _e_4327_mut;
    assign \empty  = {_e_4326};
    assign {_e_4327_mut} = \empty_mut ;
    
    assign _e_4328 = _e_4329_mut;
    assign \full  = {_e_4328};
    assign {_e_4329_mut} = \full_mut ;
    localparam[0:0] _e_3269 = 0;
    assign _e_3274 = \empty ;
    assign _e_3277 = \full ;
    assign _e_3272 = {\triggered , _e_3274, _e_3277};
    assign _e_3283 = _e_3272;
    assign _e_3280 = _e_3272[2];
    assign _e_3281 = _e_3272[1];
    assign _e_3282 = _e_3272[0];
    assign _e_4331 = !_e_3280;
    assign _e_4333 = !_e_3282;
    assign _e_4334 = _e_4331 && _e_3281;
    assign _e_4335 = _e_4334 && _e_4333;
    assign _e_3288 = _e_3272;
    assign _e_3285 = _e_3272[2];
    assign \_  = _e_3272[1];
    assign _e_3287 = _e_3272[0];
    localparam[0:0] _e_4338 = 1;
    assign _e_4340 = _e_3285 && _e_4338;
    assign _e_4341 = _e_4340 && _e_3287;
    localparam[0:0] _e_3289 = 0;
    assign _e_3293 = _e_3272;
    assign __n1 = _e_3272[2];
    assign __n2 = _e_3272[1];
    assign __n3 = _e_3272[0];
    localparam[0:0] _e_4343 = 1;
    localparam[0:0] _e_4344 = 1;
    localparam[0:0] _e_4345 = 1;
    assign _e_4346 = _e_4343 && _e_4344;
    assign _e_4347 = _e_4346 && _e_4345;
    always_comb begin
        priority casez ({_e_4335, _e_4341, _e_4347})
            3'b1??: _e_3271 = \trigger ;
            3'b01?: _e_3271 = _e_3289;
            3'b001: _e_3271 = \triggered ;
            3'b?: _e_3271 = 1'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \triggered  <= _e_3269;
        end
        else begin
            \triggered  <= _e_3271;
        end
    end
    assign _e_3298 = {1'd1, \data };
    assign _e_3301 = {1'd0, 24'bX};
    assign \data_in  = \triggered  ? _e_3298 : _e_3301;
    (* src = "build/libs/quickscope/src/main.spade:70,24" *)
    \std::io::rising_edge  rising_edge_0(.clk_i(\clk ), .sync1_i(\triggered ), .output__(\triggered_now ));
    localparam[7:0] _e_3312 = 255;
    localparam[7:0] _e_3313 = 1;
    localparam[7:0] _e_3314 = 3;
    assign _e_3311 = {_e_3314, _e_3313, _e_3312};
    assign _e_3310 = {1'd1, _e_3311};
    assign _e_3316 = {1'd0, 24'bX};
    assign \header  = \triggered_now  ? _e_3310 : _e_3316;
    localparam[7:0] _e_3323 = 255;
    localparam[7:0] _e_3324 = 1;
    assign _e_3322 = {_e_3324, _e_3323};
    assign _e_3321 = {1'd1, _e_3322};
    assign _e_3326 = {1'd0, 16'bX};
    assign \footer  = \triggered_now  ? _e_3321 : _e_3326;
    assign \full_mut  = _e_3340_mut;
    assign _e_3337 = {\data_in };
    assign {_e_3340_mut} = _e_3337_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_20::fifo_buffer[1479]  fifo_buffer_0(.self_i(_e_3337), .self_o(_e_3337_mut), .clk_i(\clk ), .rst_i(\rst ), .output__(_e_3336), .input__(_e_3336_mut));
    assign \empty_mut  = _e_3344_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_19::read_empty[1480]  read_empty_0(.self_i(_e_3336), .self_o(_e_3336_mut), .wire_o(_e_3344_mut), .output__(_e_3335), .input__(_e_3335_mut));
    assign _e_3334 = _e_3335[24:0];
    assign _e_3335_mut = _e_3334_mut;
    
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::map[1481]  map_0(.self_i(_e_3334), .self_o(_e_3334_mut), .output__(_e_3333), .input__(_e_3333_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \quickscope::impl_27::into_element_stream[1482]  into_element_stream_0(.self_i(_e_3333), .self_o(_e_3333_mut), .clk_i(\clk ), .rst_i(\rst ), .output__(_e_3332), .input__(_e_3332_mut));
    
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::map[1483]  map_1(.self_i(_e_3332), .self_o(_e_3332_mut), .output__(_e_3331), .input__(_e_3331_mut));
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    \quickscope::emit_bytes_once[1469]  emit_bytes_once_0(.clk_i(\clk ), .rst_i(\rst ), .value_i(\footer ), .output__(_e_3363), .input__(_e_3363_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::append_lower_priority[1470]  append_lower_priority_0(.self_i(_e_3331), .self_o(_e_3331_mut), .other_i(_e_3363), .other_o(_e_3363_mut), .output__(_e_3330), .input__(_e_3330_mut));
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    \quickscope::emit_bytes_once[1471]  emit_bytes_once_1(.clk_i(\clk ), .rst_i(\rst ), .value_i(\header ), .output__(_e_3367), .input__(_e_3367_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::append_higher_priority[1472]  append_higher_priority_0(.self_i(_e_3330), .self_o(_e_3330_mut), .other_i(_e_3367), .other_o(_e_3367_mut), .output__(_e_3329), .input__(_e_3329_mut));
    localparam[7:0] _e_3374 = 255;
    localparam[7:0] _e_3375 = 254;
    assign _e_3373 = {_e_3375, _e_3374};
    
    localparam[7:0] _e_3384 = 254;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::escape_byte::impl_14::escape_bytes[1484]  escape_bytes_0(.self_i(_e_3329), .self_o(_e_3329_mut), .clk_i(\clk ), .rst_i(\rst ), .escapees_i(_e_3373), .escape_prefix_i(_e_3384), .output__(_e_3328), .input__(_e_3328_mut));
    assign output__ = _e_3328;
    assign _e_3328_mut = input__;
endmodule

module \quickscope::quickscope[1456]  (
        input clk_i,
        input rst_i,
        input trigger_i,
        input[31:0] data_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::quickscope[1456]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::quickscope[1456] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic \trigger ;
    assign \trigger  = trigger_i;
    logic[31:0] \data ;
    assign \data  = data_i;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic _e_4348;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic _e_4349_mut;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic \empty ;
    (* src = "build/libs/quickscope/src/main.spade:53,16" *)
    logic \empty_mut ;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic _e_4350;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic _e_4351_mut;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic \full ;
    (* src = "build/libs/quickscope/src/main.spade:54,15" *)
    logic \full_mut ;
    (* src = "build/libs/quickscope/src/main.spade:57,26" *)
    logic _e_3274;
    (* src = "build/libs/quickscope/src/main.spade:57,36" *)
    logic _e_3277;
    (* src = "build/libs/quickscope/src/main.spade:57,13" *)
    logic[2:0] _e_3272;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic[2:0] _e_3283;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3280;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3281;
    (* src = "build/libs/quickscope/src/main.spade:59,10" *)
    logic _e_3282;
    logic _e_4353;
    logic _e_4355;
    logic _e_4356;
    logic _e_4357;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic[2:0] _e_3288;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic _e_3285;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic \_ ;
    (* src = "build/libs/quickscope/src/main.spade:62,10" *)
    logic _e_3287;
    logic _e_4362;
    logic _e_4363;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic[2:0] _e_3293;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n1;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n2;
    (* src = "build/libs/quickscope/src/main.spade:64,10" *)
    logic __n3;
    logic _e_4368;
    logic _e_4369;
    (* src = "build/libs/quickscope/src/main.spade:57,7" *)
    logic _e_3271;
    (* src = "build/libs/quickscope/src/main.spade:56,13" *)
    reg \triggered ;
    (* src = "build/libs/quickscope/src/main.spade:68,33" *)
    logic[32:0] _e_3298;
    (* src = "build/libs/quickscope/src/main.spade:68,53" *)
    logic[32:0] _e_3301;
    (* src = "build/libs/quickscope/src/main.spade:68,18" *)
    logic[32:0] \data_in ;
    (* src = "build/libs/quickscope/src/main.spade:70,24" *)
    logic \triggered_now ;
    (* src = "build/libs/quickscope/src/main.spade:71,40" *)
    logic[23:0] _e_3311;
    (* src = "build/libs/quickscope/src/main.spade:71,35" *)
    logic[24:0] _e_3310;
    (* src = "build/libs/quickscope/src/main.spade:71,71" *)
    logic[24:0] _e_3316;
    (* src = "build/libs/quickscope/src/main.spade:71,17" *)
    logic[24:0] \header ;
    (* src = "build/libs/quickscope/src/main.spade:72,40" *)
    logic[15:0] _e_3322;
    (* src = "build/libs/quickscope/src/main.spade:72,35" *)
    logic[16:0] _e_3321;
    (* src = "build/libs/quickscope/src/main.spade:72,61" *)
    logic[16:0] _e_3326;
    (* src = "build/libs/quickscope/src/main.spade:72,17" *)
    logic[16:0] \footer ;
    (* src = "build/libs/quickscope/src/main.spade:74,17" *)
    logic _e_3340_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[32:0] _e_3337;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3337_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[34:0] _e_3336;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3336_mut;
    (* src = "build/libs/quickscope/src/main.spade:76,19" *)
    logic _e_3344_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[34:0] _e_3335;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3335_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[32:0] _e_3334;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3334_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[32:0] _e_3333;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3333_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[8:0] _e_3332;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3332_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3331;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3331_mut;
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    logic[9:0] _e_3363;
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    logic _e_3363_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3330;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3330_mut;
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    logic[9:0] _e_3367;
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    logic _e_3367_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[9:0] _e_3329;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3329_mut;
    (* src = "build/libs/quickscope/src/main.spade:90,20" *)
    logic[15:0] _e_3373;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic[8:0] _e_3328;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    logic _e_3328_mut;
    
    assign _e_4348 = _e_4349_mut;
    assign \empty  = {_e_4348};
    assign {_e_4349_mut} = \empty_mut ;
    
    assign _e_4350 = _e_4351_mut;
    assign \full  = {_e_4350};
    assign {_e_4351_mut} = \full_mut ;
    localparam[0:0] _e_3269 = 0;
    assign _e_3274 = \empty ;
    assign _e_3277 = \full ;
    assign _e_3272 = {\triggered , _e_3274, _e_3277};
    assign _e_3283 = _e_3272;
    assign _e_3280 = _e_3272[2];
    assign _e_3281 = _e_3272[1];
    assign _e_3282 = _e_3272[0];
    assign _e_4353 = !_e_3280;
    assign _e_4355 = !_e_3282;
    assign _e_4356 = _e_4353 && _e_3281;
    assign _e_4357 = _e_4356 && _e_4355;
    assign _e_3288 = _e_3272;
    assign _e_3285 = _e_3272[2];
    assign \_  = _e_3272[1];
    assign _e_3287 = _e_3272[0];
    localparam[0:0] _e_4360 = 1;
    assign _e_4362 = _e_3285 && _e_4360;
    assign _e_4363 = _e_4362 && _e_3287;
    localparam[0:0] _e_3289 = 0;
    assign _e_3293 = _e_3272;
    assign __n1 = _e_3272[2];
    assign __n2 = _e_3272[1];
    assign __n3 = _e_3272[0];
    localparam[0:0] _e_4365 = 1;
    localparam[0:0] _e_4366 = 1;
    localparam[0:0] _e_4367 = 1;
    assign _e_4368 = _e_4365 && _e_4366;
    assign _e_4369 = _e_4368 && _e_4367;
    always_comb begin
        priority casez ({_e_4357, _e_4363, _e_4369})
            3'b1??: _e_3271 = \trigger ;
            3'b01?: _e_3271 = _e_3289;
            3'b001: _e_3271 = \triggered ;
            3'b?: _e_3271 = 1'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \triggered  <= _e_3269;
        end
        else begin
            \triggered  <= _e_3271;
        end
    end
    assign _e_3298 = {1'd1, \data };
    assign _e_3301 = {1'd0, 32'bX};
    assign \data_in  = \triggered  ? _e_3298 : _e_3301;
    (* src = "build/libs/quickscope/src/main.spade:70,24" *)
    \std::io::rising_edge  rising_edge_0(.clk_i(\clk ), .sync1_i(\triggered ), .output__(\triggered_now ));
    localparam[7:0] _e_3312 = 255;
    localparam[7:0] _e_3313 = 1;
    localparam[7:0] _e_3314 = 4;
    assign _e_3311 = {_e_3314, _e_3313, _e_3312};
    assign _e_3310 = {1'd1, _e_3311};
    assign _e_3316 = {1'd0, 24'bX};
    assign \header  = \triggered_now  ? _e_3310 : _e_3316;
    localparam[7:0] _e_3323 = 255;
    localparam[7:0] _e_3324 = 1;
    assign _e_3322 = {_e_3324, _e_3323};
    assign _e_3321 = {1'd1, _e_3322};
    assign _e_3326 = {1'd0, 16'bX};
    assign \footer  = \triggered_now  ? _e_3321 : _e_3326;
    assign \full_mut  = _e_3340_mut;
    assign _e_3337 = {\data_in };
    assign {_e_3340_mut} = _e_3337_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_20::fifo_buffer[1485]  fifo_buffer_0(.self_i(_e_3337), .self_o(_e_3337_mut), .clk_i(\clk ), .rst_i(\rst ), .output__(_e_3336), .input__(_e_3336_mut));
    assign \empty_mut  = _e_3344_mut;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_19::read_empty[1486]  read_empty_0(.self_i(_e_3336), .self_o(_e_3336_mut), .wire_o(_e_3344_mut), .output__(_e_3335), .input__(_e_3335_mut));
    assign _e_3334 = _e_3335[32:0];
    assign _e_3335_mut = _e_3334_mut;
    
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::map[1487]  map_0(.self_i(_e_3334), .self_o(_e_3334_mut), .output__(_e_3333), .input__(_e_3333_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \quickscope::impl_27::into_element_stream[1488]  into_element_stream_0(.self_i(_e_3333), .self_o(_e_3333_mut), .clk_i(\clk ), .rst_i(\rst ), .output__(_e_3332), .input__(_e_3332_mut));
    
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::map[1489]  map_1(.self_i(_e_3332), .self_o(_e_3332_mut), .output__(_e_3331), .input__(_e_3331_mut));
    (* src = "build/libs/quickscope/src/main.spade:84,35" *)
    \quickscope::emit_bytes_once[1469]  emit_bytes_once_0(.clk_i(\clk ), .rst_i(\rst ), .value_i(\footer ), .output__(_e_3363), .input__(_e_3363_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::append_lower_priority[1470]  append_lower_priority_0(.self_i(_e_3331), .self_o(_e_3331_mut), .other_i(_e_3363), .other_o(_e_3363_mut), .output__(_e_3330), .input__(_e_3330_mut));
    (* src = "build/libs/quickscope/src/main.spade:86,36" *)
    \quickscope::emit_bytes_once[1471]  emit_bytes_once_1(.clk_i(\clk ), .rst_i(\rst ), .value_i(\header ), .output__(_e_3367), .input__(_e_3367_mut));
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::impl_17::append_higher_priority[1472]  append_higher_priority_0(.self_i(_e_3330), .self_o(_e_3330_mut), .other_i(_e_3367), .other_o(_e_3367_mut), .output__(_e_3329), .input__(_e_3329_mut));
    localparam[7:0] _e_3374 = 255;
    localparam[7:0] _e_3375 = 254;
    assign _e_3373 = {_e_3375, _e_3374};
    
    localparam[7:0] _e_3384 = 254;
    (* src = "build/libs/quickscope/src/main.spade:74,4" *)
    \ready_valid::escape_byte::impl_14::escape_bytes[1490]  escape_bytes_0(.self_i(_e_3329), .self_o(_e_3329_mut), .clk_i(\clk ), .rst_i(\rst ), .escapees_i(_e_3373), .escape_prefix_i(_e_3384), .output__(_e_3328), .input__(_e_3328_mut));
    assign output__ = _e_3328;
    assign _e_3328_mut = input__;
endmodule

module \nstd::array::impl_32::any[1457]  (
        input[2:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::any[1457]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::any[1457] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    (* src = "build/libs/nstd/src/array.spade:25,9" *)
    logic[2:0] _e_3449;
    (* src = "build/libs/nstd/src/array.spade:25,9" *)
    logic _e_3448;
    (* src = "build/libs/nstd/src/array.spade:25,9" *)
    \std::array::impl_0::map[1491]  map_0(.self_i(\self ), .output__(_e_3449));
    localparam[0:0] _e_3452 = 0;
    
    (* src = "build/libs/nstd/src/array.spade:25,9" *)
    \nstd::array::impl_32::fold[1492]  fold_0(.self_i(_e_3449), .init_i(_e_3452), .output__(_e_3448));
    assign output__ = _e_3448;
endmodule

module \nstd::array::impl_32::all[1458]  (
        input[2:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::all[1458]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::all[1458] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    (* src = "build/libs/nstd/src/array.spade:17,9" *)
    logic[2:0] _e_3434;
    (* src = "build/libs/nstd/src/array.spade:17,9" *)
    logic _e_3433;
    (* src = "build/libs/nstd/src/array.spade:17,9" *)
    \std::array::impl_0::map[1493]  map_0(.self_i(\self ), .output__(_e_3434));
    localparam[0:0] _e_3437 = 1;
    
    (* src = "build/libs/nstd/src/array.spade:17,9" *)
    \nstd::array::impl_32::fold[1494]  fold_0(.self_i(_e_3434), .init_i(_e_3437), .output__(_e_3433));
    assign output__ = _e_3433;
endmodule

module \nstd::option::impl_39::alongside[1459]  (
        input[16:0] self_i,
        input clk_i,
        input[8:0] rst_i,
        output[24:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::option::impl_39::alongside[1459]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::option::impl_39::alongside[1459] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    logic \clk ;
    assign \clk  = clk_i;
    logic[8:0] \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/nstd/src/option.spade:5,30" *)
    logic _e_3569;
    (* src = "build/libs/nstd/src/option.spade:5,37" *)
    logic[7:0] _e_3571;
    (* src = "build/libs/nstd/src/option.spade:6,13" *)
    logic[15:0] \val ;
    logic _e_4371;
    logic _e_4373;
    (* src = "build/libs/nstd/src/option.spade:7,24" *)
    logic[7:0] _e_3580;
    (* src = "build/libs/nstd/src/option.spade:7,17" *)
    logic[7:0] _e_3578;
    logic _e_4375;
    (* src = "build/libs/nstd/src/option.spade:5,46" *)
    logic[7:0] _e_3573;
    (* src = "build/libs/nstd/src/option.spade:5,18" *)
    reg[7:0] \state ;
    (* src = "build/libs/nstd/src/option.spade:13,13" *)
    logic[15:0] val_n1;
    logic _e_4377;
    logic _e_4379;
    (* src = "build/libs/nstd/src/option.spade:13,31" *)
    logic[23:0] _e_3589;
    (* src = "build/libs/nstd/src/option.spade:13,26" *)
    logic[24:0] _e_3588;
    logic _e_4381;
    (* src = "build/libs/nstd/src/option.spade:14,21" *)
    logic[24:0] _e_3593;
    (* src = "build/libs/nstd/src/option.spade:12,9" *)
    logic[24:0] _e_3584;
    assign _e_3569 = \rst [8];
    assign _e_3571 = \rst [7:0];
    assign \val  = \self [15:0];
    assign _e_4371 = \self [16] == 1'd1;
    localparam[0:0] _e_4372 = 1;
    assign _e_4373 = _e_4371 && _e_4372;
    assign _e_3580 = {\state };
    (* src = "build/libs/nstd/src/option.spade:7,17" *)
    \nstd::option::impl_40::call[1495]  call_0(.args_i(_e_3580), .output__(_e_3578));
    assign _e_4375 = \self [16] == 1'd0;
    always_comb begin
        priority casez ({_e_4373, _e_4375})
            2'b1?: _e_3573 = _e_3578;
            2'b01: _e_3573 = \state ;
            2'b?: _e_3573 = 8'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (_e_3569) begin
            \state  <= _e_3571;
        end
        else begin
            \state  <= _e_3573;
        end
    end
    assign val_n1 = \self [15:0];
    assign _e_4377 = \self [16] == 1'd1;
    localparam[0:0] _e_4378 = 1;
    assign _e_4379 = _e_4377 && _e_4378;
    assign _e_3589 = {val_n1, \state };
    assign _e_3588 = {1'd1, _e_3589};
    assign _e_4381 = \self [16] == 1'd0;
    assign _e_3593 = {1'd0, 24'bX};
    always_comb begin
        priority casez ({_e_4379, _e_4381})
            2'b1?: _e_3584 = _e_3588;
            2'b01: _e_3584 = _e_3593;
            2'b?: _e_3584 = 25'dx;
        endcase
    end
    assign output__ = _e_3584;
endmodule

module \std::conv::flip_array[1460]  (
        input[15:0] in_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::flip_array[1460]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::flip_array[1460] );
        end
    end
    `endif
    logic[15:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    logic[15:0] \result ;
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    \std::conv::std::conv::flip_array::F[1496]  F_0(.in_i(\in ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::conv::flip_array[1461]  (
        input[23:0] in_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::flip_array[1461]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::flip_array[1461] );
        end
    end
    `endif
    logic[23:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    logic[23:0] \result ;
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    \std::conv::std::conv::flip_array::F[1497]  F_0(.in_i(\in ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::conv::flip_array[1462]  (
        input[31:0] in_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::flip_array[1462]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::flip_array[1462] );
        end
    end
    `endif
    logic[31:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    logic[31:0] \result ;
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    \std::conv::std::conv::flip_array::F[1498]  F_0(.in_i(\in ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::conv::uint_to_bits[1463]  (
        input[7:0] input_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::uint_to_bits[1463]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::uint_to_bits[1463] );
        end
    end
    `endif
    logic[7:0] \input ;
    assign \input  = input_i;
    logic[7:0] _e_471;
    assign _e_471 = \input ;
    assign output__ = _e_471;
endmodule

module \ready_valid::impl_20::fifo_buffer[1464]  (
        input[16:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        output[18:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_20::fifo_buffer[1464]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_20::fifo_buffer[1464] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    logic[18:0] _e_1739;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    logic _e_1739_mut;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    \ready_valid::impl_20::cdc_fifo_buffer[1499]  cdc_fifo_buffer_0(.self_i(\self ), .self_o(\self_mut ), .write_clk_i(\clk ), .write_rst_i(\rst ), .read_clk_i(\clk ), .read_rst_i(\rst ), .output__(_e_1739), .input__(_e_1739_mut));
    assign output__ = _e_1739;
    assign _e_1739_mut = input__;
endmodule

module \ready_valid::impl_19::read_empty[1465]  (
        input[18:0] self_i, output self_o,
        output wire_o,
        output[18:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_19::read_empty[1465]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_19::read_empty[1465] );
        end
    end
    `endif
    logic[18:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \wire_mut ;
    assign wire_o = \wire_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \full ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \empty ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic[16:0] \data ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \data_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:158,9" *)
    logic[18:0] _e_1689;
    (* src = "build/libs/ready_valid/src/main.spade:158,9" *)
    logic _e_1689_mut;
    assign \full  = \self [18];
    assign \empty  = \self [17];
    assign \data  = \self [16:0];
    assign \self_mut  = \data_mut ;
    assign \wire_mut  = \empty ;
    assign _e_1689 = {\full , \empty , \data };
    assign {\data_mut } = _e_1689_mut;
    assign output__ = _e_1689;
    assign _e_1689_mut = input__;
endmodule

module \ready_valid::impl_17::map[1466]  (
        input[16:0] self_i, output self_o,
        output[16:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::map[1466]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::map[1466] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:75,22" *)
    logic[16:0] _e_1540;
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    logic[16:0] _e_1538;
    (* src = "build/libs/ready_valid/src/main.spade:76,20" *)
    logic _e_1544_mut;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic[16:0] _e_1537;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic _e_1537_mut;
    assign _e_1540 = \self [16:0];
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    \std::option::impl_12::map[1500]  map_0(.self_i(_e_1540), .output__(_e_1538));
    assign \self_mut  = _e_1544_mut;
    assign _e_1537 = {_e_1538};
    assign {_e_1544_mut} = _e_1537_mut;
    assign output__ = _e_1537;
    assign _e_1537_mut = input__;
endmodule

module \quickscope::impl_27::into_element_stream[1467]  (
        input[16:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_27::into_element_stream[1467]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_27::into_element_stream[1467] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/quickscope/src/main.spade:6,11" *)
    logic[16:0] \data ;
    (* src = "build/libs/quickscope/src/main.spade:6,11" *)
    logic \ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic _e_4382;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic _e_4383_mut;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic \ds_ready ;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic \ds_ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:8,85" *)
    logic[15:0] _e_3112;
    (* src = "build/libs/quickscope/src/main.spade:8,84" *)
    logic[17:0] _e_3111;
    (* src = "build/libs/quickscope/src/main.spade:9,35" *)
    logic _e_3119;
    (* src = "build/libs/quickscope/src/main.spade:9,16" *)
    logic[19:0] _e_3115;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[19:0] _e_3126;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[16:0] _e_3123;
    (* src = "build/libs/quickscope/src/main.spade:10,14" *)
    logic[15:0] data_n1;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[1:0] _e_3124;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic \_ ;
    logic _e_4386;
    logic _e_4388;
    logic _e_4389;
    logic _e_4392;
    logic _e_4393;
    (* src = "build/libs/quickscope/src/main.spade:10,35" *)
    logic[17:0] _e_3127;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[19:0] _e_3133;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[16:0] __n1;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[1:0] __n2;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic _e_3132;
    logic _e_4397;
    logic _e_4398;
    logic _e_4399;
    (* src = "build/libs/quickscope/src/main.spade:11,30" *)
    logic[17:0] _e_3134;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[19:0] _e_3140;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[16:0] _e_3137;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[1:0] _e_3138;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic __n3;
    logic _e_4402;
    logic _e_4403;
    logic _e_4406;
    logic _e_4407;
    (* src = "build/libs/quickscope/src/main.spade:12,29" *)
    logic[17:0] _e_3141;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[19:0] _e_3148;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[16:0] _e_3145;
    (* src = "build/libs/quickscope/src/main.spade:13,14" *)
    logic[15:0] data_n2;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[1:0] _e_3146;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic __n4;
    logic _e_4410;
    logic _e_4412;
    logic _e_4413;
    logic _e_4416;
    logic _e_4417;
    (* src = "build/libs/quickscope/src/main.spade:13,35" *)
    logic[17:0] _e_3149;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[19:0] _e_3155;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[16:0] __n5;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[1:0] __n6;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic __n7;
    logic _e_4422;
    logic _e_4423;
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    logic[7:0] _e_3158;
    (* src = "build/libs/quickscope/src/main.spade:14,47" *)
    logic[7:0] _e_3163;
    (* src = "build/libs/quickscope/src/main.spade:14,46" *)
    logic[7:0] _e_3162;
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    logic[15:0] _e_3157;
    (* src = "build/libs/quickscope/src/main.spade:14,76" *)
    logic[2:0] _e_3165;
    (* src = "build/libs/quickscope/src/main.spade:14,70" *)
    logic[1:0] _e_3164;
    (* src = "build/libs/quickscope/src/main.spade:14,26" *)
    logic[17:0] _e_3156;
    (* src = "build/libs/quickscope/src/main.spade:9,10" *)
    logic[17:0] _e_3114;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    reg[17:0] _e_3108;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    logic[15:0] \array ;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    logic[1:0] \num_left ;
    (* src = "build/libs/quickscope/src/main.spade:17,21" *)
    logic _e_3171;
    (* src = "build/libs/quickscope/src/main.spade:17,38" *)
    logic _e_3175;
    (* src = "build/libs/quickscope/src/main.spade:17,56" *)
    logic _e_3178;
    (* src = "build/libs/quickscope/src/main.spade:17,38" *)
    logic _e_3174;
    (* src = "build/libs/quickscope/src/main.spade:17,20" *)
    logic _e_3169;
    logic _e_4424;
    (* src = "build/libs/quickscope/src/main.spade:21,18" *)
    logic[8:0] _e_3186;
    (* src = "build/libs/quickscope/src/main.spade:22,13" *)
    logic[1:0] __n8;
    (* src = "build/libs/quickscope/src/main.spade:22,23" *)
    logic[7:0] _e_3189;
    (* src = "build/libs/quickscope/src/main.spade:22,18" *)
    logic[8:0] _e_3188;
    (* src = "build/libs/quickscope/src/main.spade:20,11" *)
    logic[8:0] _e_3182;
    (* src = "build/libs/quickscope/src/main.spade:24,10" *)
    logic _e_3192_mut;
    (* src = "build/libs/quickscope/src/main.spade:19,7" *)
    logic[8:0] _e_3181;
    (* src = "build/libs/quickscope/src/main.spade:19,7" *)
    logic _e_3181_mut;
    assign \data  = \self [16:0];
    assign \self_mut  = \ready_mut ;
    
    assign _e_4382 = _e_4383_mut;
    assign \ds_ready  = {_e_4382};
    assign {_e_4383_mut} = \ds_ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:8,85" *)
    \std::undef::undef[1501]  undef_0(.output__(_e_3112));
    localparam[1:0] _e_3113 = 0;
    assign _e_3111 = {_e_3112, _e_3113};
    assign _e_3119 = \ds_ready ;
    assign _e_3115 = {\data , \num_left , _e_3119};
    assign _e_3126 = _e_3115;
    assign _e_3123 = _e_3115[19:3];
    assign data_n1 = _e_3123[15:0];
    assign _e_3124 = _e_3115[2:1];
    assign \_  = _e_3115[0];
    assign _e_4386 = _e_3123[16] == 1'd1;
    localparam[0:0] _e_4387 = 1;
    assign _e_4388 = _e_4386 && _e_4387;
    localparam[1:0] _e_4390 = 0;
    assign _e_4389 = _e_3124 == _e_4390;
    localparam[0:0] _e_4391 = 1;
    assign _e_4392 = _e_4388 && _e_4389;
    assign _e_4393 = _e_4392 && _e_4391;
    localparam[1:0] _e_3129 = 2;
    assign _e_3127 = {data_n1, _e_3129};
    assign _e_3133 = _e_3115;
    assign __n1 = _e_3115[19:3];
    assign __n2 = _e_3115[2:1];
    assign _e_3132 = _e_3115[0];
    localparam[0:0] _e_4395 = 1;
    localparam[0:0] _e_4396 = 1;
    assign _e_4397 = !_e_3132;
    assign _e_4398 = _e_4395 && _e_4396;
    assign _e_4399 = _e_4398 && _e_4397;
    assign _e_3134 = {\array , \num_left };
    assign _e_3140 = _e_3115;
    assign _e_3137 = _e_3115[19:3];
    assign _e_3138 = _e_3115[2:1];
    assign __n3 = _e_3115[0];
    assign _e_4402 = _e_3137[16] == 1'd0;
    localparam[1:0] _e_4404 = 0;
    assign _e_4403 = _e_3138 == _e_4404;
    localparam[0:0] _e_4405 = 1;
    assign _e_4406 = _e_4402 && _e_4403;
    assign _e_4407 = _e_4406 && _e_4405;
    assign _e_3141 = {\array , \num_left };
    assign _e_3148 = _e_3115;
    assign _e_3145 = _e_3115[19:3];
    assign data_n2 = _e_3145[15:0];
    assign _e_3146 = _e_3115[2:1];
    assign __n4 = _e_3115[0];
    assign _e_4410 = _e_3145[16] == 1'd1;
    localparam[0:0] _e_4411 = 1;
    assign _e_4412 = _e_4410 && _e_4411;
    localparam[1:0] _e_4414 = 1;
    assign _e_4413 = _e_3146 == _e_4414;
    localparam[0:0] _e_4415 = 1;
    assign _e_4416 = _e_4412 && _e_4413;
    assign _e_4417 = _e_4416 && _e_4415;
    localparam[1:0] _e_3151 = 2;
    assign _e_3149 = {data_n2, _e_3151};
    assign _e_3155 = _e_3115;
    assign __n5 = _e_3115[19:3];
    assign __n6 = _e_3115[2:1];
    assign __n7 = _e_3115[0];
    localparam[0:0] _e_4419 = 1;
    localparam[0:0] _e_4420 = 1;
    localparam[0:0] _e_4421 = 1;
    assign _e_4422 = _e_4419 && _e_4420;
    assign _e_4423 = _e_4422 && _e_4421;
    assign _e_3158 = \array [15-:8];
    (* src = "build/libs/quickscope/src/main.spade:14,47" *)
    \std::undef::undef[1502]  undef_1(.output__(_e_3163));
    assign _e_3162 = {_e_3163};
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    \std::array::impl_0::concat[1503]  concat_0(.self_i(_e_3158), .other_i(_e_3162), .output__(_e_3157));
    localparam[1:0] _e_3167 = 1;
    assign _e_3165 = \num_left  - _e_3167;
    assign _e_3164 = _e_3165[1:0];
    assign _e_3156 = {_e_3157, _e_3164};
    always_comb begin
        priority casez ({_e_4393, _e_4399, _e_4407, _e_4417, _e_4423})
            5'b1????: _e_3114 = _e_3127;
            5'b01???: _e_3114 = _e_3134;
            5'b001??: _e_3114 = _e_3141;
            5'b0001?: _e_3114 = _e_3149;
            5'b00001: _e_3114 = _e_3156;
            5'b?: _e_3114 = 18'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            _e_3108 <= _e_3111;
        end
        else begin
            _e_3108 <= _e_3114;
        end
    end
    assign \array  = _e_3108[17:2];
    assign \num_left  = _e_3108[1:0];
    localparam[1:0] _e_3173 = 0;
    assign _e_3171 = \num_left  == _e_3173;
    localparam[1:0] _e_3177 = 1;
    assign _e_3175 = \num_left  == _e_3177;
    assign _e_3178 = \ds_ready ;
    assign _e_3174 = _e_3175 && _e_3178;
    assign _e_3169 = _e_3171 || _e_3174;
    assign \ready_mut  = _e_3169;
    localparam[1:0] _e_4425 = 0;
    assign _e_4424 = \num_left  == _e_4425;
    assign _e_3186 = {1'd0, 8'bX};
    assign __n8 = \num_left ;
    localparam[0:0] _e_4426 = 1;
    localparam[0:0] _e_3191 = 0;
    assign _e_3189 = \array [_e_3191 * 8+:8];
    assign _e_3188 = {1'd1, _e_3189};
    always_comb begin
        priority casez ({_e_4424, _e_4426})
            2'b1?: _e_3182 = _e_3186;
            2'b01: _e_3182 = _e_3188;
            2'b?: _e_3182 = 9'dx;
        endcase
    end
    assign \ds_ready_mut  = _e_3192_mut;
    assign _e_3181 = {_e_3182};
    assign {_e_3192_mut} = _e_3181_mut;
    assign output__ = _e_3181;
    assign _e_3181_mut = input__;
endmodule

module \ready_valid::impl_17::map[1468]  (
        input[8:0] self_i, output self_o,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::map[1468]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::map[1468] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:75,22" *)
    logic[8:0] _e_1540;
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    logic[9:0] _e_1538;
    (* src = "build/libs/ready_valid/src/main.spade:76,20" *)
    logic _e_1544_mut;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic[9:0] _e_1537;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic _e_1537_mut;
    assign _e_1540 = \self [8:0];
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    \std::option::impl_12::map[1504]  map_0(.self_i(_e_1540), .output__(_e_1538));
    assign \self_mut  = _e_1544_mut;
    assign _e_1537 = {_e_1538};
    assign {_e_1544_mut} = _e_1537_mut;
    assign output__ = _e_1537;
    assign _e_1537_mut = input__;
endmodule

module \quickscope::emit_bytes_once[1469]  (
        input clk_i,
        input rst_i,
        input[16:0] value_i,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::emit_bytes_once[1469]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::emit_bytes_once[1469] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[16:0] \value ;
    assign \value  = value_i;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic[16:0] _e_3248;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic _e_3248_mut;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic[8:0] _e_3247;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic _e_3247_mut;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic[9:0] _e_3246;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic _e_3246_mut;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    \quickscope::emit_once[1505]  emit_once_0(.clk_i(\clk ), .rst_i(\rst ), .value_i(\value ), .output__(_e_3248), .input__(_e_3248_mut));
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    \quickscope::impl_27::into_element_stream[1467]  into_element_stream_0(.self_i(_e_3248), .self_o(_e_3248_mut), .clk_i(\clk ), .rst_i(\rst ), .output__(_e_3247), .input__(_e_3247_mut));
    
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    \ready_valid::impl_17::map[1506]  map_0(.self_i(_e_3247), .self_o(_e_3247_mut), .output__(_e_3246), .input__(_e_3246_mut));
    assign output__ = _e_3246;
    assign _e_3246_mut = input__;
endmodule

module \ready_valid::impl_17::append_lower_priority[1470]  (
        input[9:0] self_i, output self_o,
        input[9:0] other_i, output other_o,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::append_lower_priority[1470]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::append_lower_priority[1470] );
        end
    end
    `endif
    logic[9:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic[9:0] \other ;
    assign \other  = other_i;
    logic \other_mut ;
    assign other_o = \other_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:89,28" *)
    logic[9:0] _e_1558;
    (* src = "build/libs/ready_valid/src/main.spade:89,26" *)
    logic \self_takes ;
    (* src = "build/libs/ready_valid/src/main.spade:91,40" *)
    logic _e_4427;
    (* src = "build/libs/ready_valid/src/main.spade:91,40" *)
    logic _e_4428_mut;
    (* src = "build/libs/ready_valid/src/main.spade:91,40" *)
    logic _e_1565;
    (* src = "build/libs/ready_valid/src/main.spade:91,40" *)
    logic _e_1565_mut;
    (* src = "build/libs/ready_valid/src/main.spade:91,13" *)
    logic \ds_ready ;
    (* src = "build/libs/ready_valid/src/main.spade:91,13" *)
    logic \ds_ready_inv_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:93,13" *)
    logic _e_1566_mut;
    (* src = "build/libs/ready_valid/src/main.spade:94,13" *)
    logic _e_1569_mut;
    (* src = "build/libs/ready_valid/src/main.spade:94,29" *)
    logic _e_1573;
    (* src = "build/libs/ready_valid/src/main.spade:94,28" *)
    logic _e_1571;
    (* src = "build/libs/ready_valid/src/main.spade:98,17" *)
    logic[9:0] _e_1581;
    (* src = "build/libs/ready_valid/src/main.spade:100,17" *)
    logic[9:0] _e_1584;
    (* src = "build/libs/ready_valid/src/main.spade:97,13" *)
    logic[9:0] _e_1578;
    (* src = "build/libs/ready_valid/src/main.spade:96,9" *)
    logic[9:0] _e_1577;
    (* src = "build/libs/ready_valid/src/main.spade:96,9" *)
    logic _e_1577_mut;
    assign _e_1558 = \self [9:0];
    (* src = "build/libs/ready_valid/src/main.spade:89,26" *)
    \std::option::impl_12::is_some[1507]  is_some_0(.self_i(_e_1558), .output__(\self_takes ));
    
    assign _e_4427 = _e_4428_mut;
    assign _e_1565 = {_e_4427};
    assign {_e_4428_mut} = _e_1565_mut;
    assign \ds_ready  = _e_1565;
    assign _e_1565_mut = \ds_ready_inv_mut ;
    assign \self_mut  = _e_1566_mut;
    assign _e_1566_mut = \ds_ready ;
    assign \other_mut  = _e_1569_mut;
    assign _e_1573 = !\self_takes ;
    assign _e_1571 = _e_1573 && \ds_ready ;
    assign _e_1569_mut = _e_1571;
    assign _e_1581 = \self [9:0];
    assign _e_1584 = \other [9:0];
    assign _e_1578 = \self_takes  ? _e_1581 : _e_1584;
    assign _e_1577 = {_e_1578};
    assign {\ds_ready_inv_mut } = _e_1577_mut;
    assign output__ = _e_1577;
    assign _e_1577_mut = input__;
endmodule

module \quickscope::emit_bytes_once[1471]  (
        input clk_i,
        input rst_i,
        input[24:0] value_i,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::emit_bytes_once[1471]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::emit_bytes_once[1471] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[24:0] \value ;
    assign \value  = value_i;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic[24:0] _e_3248;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic _e_3248_mut;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic[8:0] _e_3247;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic _e_3247_mut;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic[9:0] _e_3246;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    logic _e_3246_mut;
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    \quickscope::emit_once[1508]  emit_once_0(.clk_i(\clk ), .rst_i(\rst ), .value_i(\value ), .output__(_e_3248), .input__(_e_3248_mut));
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    \quickscope::impl_27::into_element_stream[1482]  into_element_stream_0(.self_i(_e_3248), .self_o(_e_3248_mut), .clk_i(\clk ), .rst_i(\rst ), .output__(_e_3247), .input__(_e_3247_mut));
    
    (* src = "build/libs/quickscope/src/main.spade:43,4" *)
    \ready_valid::impl_17::map[1509]  map_0(.self_i(_e_3247), .self_o(_e_3247_mut), .output__(_e_3246), .input__(_e_3246_mut));
    assign output__ = _e_3246;
    assign _e_3246_mut = input__;
endmodule

module \ready_valid::impl_17::append_higher_priority[1472]  (
        input[9:0] self_i, output self_o,
        input[9:0] other_i, output other_o,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::append_higher_priority[1472]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::append_higher_priority[1472] );
        end
    end
    `endif
    logic[9:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic[9:0] \other ;
    assign \other  = other_i;
    logic \other_mut ;
    assign other_o = \other_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:107,9" *)
    logic[9:0] _e_1588;
    (* src = "build/libs/ready_valid/src/main.spade:107,9" *)
    logic _e_1588_mut;
    (* src = "build/libs/ready_valid/src/main.spade:107,9" *)
    \ready_valid::impl_17::append_lower_priority[1470]  append_lower_priority_0(.self_i(\other ), .self_o(\other_mut ), .other_i(\self ), .other_o(\self_mut ), .output__(_e_1588), .input__(_e_1588_mut));
    assign output__ = _e_1588;
    assign _e_1588_mut = input__;
endmodule

module \ready_valid::escape_byte::impl_14::escape_bytes[1473]  (
        input[9:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        input[15:0] escapees_i,
        input[7:0] escape_prefix_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::escape_byte::impl_14::escape_bytes[1473]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::escape_byte::impl_14::escape_bytes[1473] );
        end
    end
    `endif
    logic[9:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[15:0] \escapees ;
    assign \escapees  = escapees_i;
    logic[7:0] \escape_prefix ;
    assign \escape_prefix  = escape_prefix_i;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_4429;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_4430_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_1186;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_1186_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,13" *)
    logic \ds_ready ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,13" *)
    logic \ds_ready_inv_mut ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,49" *)
    logic[9:0] _e_1190;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,39" *)
    logic[19:0] _e_1188;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[19:0] _e_1198;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[8:0] \_ ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[9:0] _e_1196;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic _e_1197;
    logic _e_4434;
    logic _e_4435;
    logic _e_4436;
    logic _e_4437;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,34" *)
    logic[8:0] _e_1200;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,33" *)
    logic[17:0] _e_1199;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[19:0] _e_1207;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[8:0] __n1;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[9:0] _e_1205;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,17" *)
    logic[8:0] _e_1204;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,22" *)
    logic[7:0] \d ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic _e_1206;
    logic _e_4441;
    logic _e_4443;
    logic _e_4445;
    logic _e_4446;
    logic _e_4447;
    logic _e_4448;
    logic _e_4449;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,50" *)
    logic[8:0] _e_1209;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,49" *)
    logic[17:0] _e_1208;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[19:0] _e_1217;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[8:0] __n2;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[9:0] _e_1215;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,17" *)
    logic[8:0] _e_1214;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,22" *)
    logic[7:0] d_n1;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic _e_1216;
    logic _e_4453;
    logic _e_4455;
    logic _e_4457;
    logic _e_4458;
    logic _e_4459;
    logic _e_4460;
    logic _e_4461;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,59" *)
    logic _e_1221;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,56" *)
    logic[7:0] _e_1220;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,51" *)
    logic[8:0] _e_1219;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,50" *)
    logic[17:0] _e_1218;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[19:0] _e_1232;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[8:0] _e_1229;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[9:0] _e_1230;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic __n3;
    logic _e_4464;
    logic _e_4466;
    logic _e_4468;
    logic _e_4469;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,43" *)
    logic[8:0] _e_1234;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,49" *)
    logic[8:0] _e_1235;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,42" *)
    logic[17:0] _e_1233;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[19:0] _e_1241;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[8:0] _e_1236;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[9:0] _e_1239;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,29" *)
    logic[8:0] _e_1238;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,34" *)
    logic[7:0] d_n2;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic __n4;
    logic _e_4472;
    logic _e_4474;
    logic _e_4476;
    logic _e_4478;
    logic _e_4479;
    logic _e_4481;
    logic _e_4482;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,18" *)
    logic[8:0] _e_1244;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,27" *)
    logic[8:0] _e_1246;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,17" *)
    logic[17:0] _e_1243;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[19:0] _e_1252;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[8:0] _e_1247;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[9:0] _e_1250;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,29" *)
    logic[8:0] _e_1249;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,34" *)
    logic[7:0] d_n3;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic __n5;
    logic _e_4485;
    logic _e_4487;
    logic _e_4489;
    logic _e_4491;
    logic _e_4492;
    logic _e_4494;
    logic _e_4495;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,20" *)
    logic _e_1255;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,22" *)
    logic[8:0] _e_1260;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,43" *)
    logic[8:0] _e_1262;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,21" *)
    logic[17:0] _e_1259;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,22" *)
    logic[8:0] _e_1266;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,31" *)
    logic[8:0] _e_1268;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,21" *)
    logic[17:0] _e_1265;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,17" *)
    logic[17:0] _e_1254;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[19:0] _e_1273;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[8:0] _e_1270;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,14" *)
    logic[7:0] \c ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[9:0] __n6;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic __n7;
    logic _e_4498;
    logic _e_4500;
    logic _e_4503;
    logic _e_4504;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,38" *)
    logic[7:0] _e_1279;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,23" *)
    logic[7:0] _e_1277;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,18" *)
    logic[8:0] _e_1276;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,46" *)
    logic[8:0] _e_1281;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,17" *)
    logic[17:0] _e_1275;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,33" *)
    logic[17:0] _e_1284;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,13" *)
    logic[8:0] \out ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,13" *)
    logic[8:0] \next_state ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:52,35" *)
    logic[8:0] _e_1288;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:52,18" *)
    reg[8:0] \state ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,13" *)
    logic _e_1290_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,33" *)
    logic[9:0] _e_1294;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic[9:0] _e_1300;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic[8:0] _e_1298;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic \ds ;
    logic _e_4507;
    logic _e_4509;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic[9:0] _e_1305;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic[8:0] _e_1303;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,14" *)
    logic[7:0] __n8;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic __n9;
    logic _e_4512;
    logic _e_4514;
    logic _e_4516;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,27" *)
    logic _e_1292;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:59,9" *)
    logic[8:0] _e_1307;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:59,9" *)
    logic _e_1307_mut;
    
    assign _e_4429 = _e_4430_mut;
    assign _e_1186 = {_e_4429};
    assign {_e_4430_mut} = _e_1186_mut;
    assign \ds_ready  = _e_1186;
    assign _e_1186_mut = \ds_ready_inv_mut ;
    assign _e_1190 = \self [9:0];
    assign _e_1188 = {\state , _e_1190, \ds_ready };
    assign _e_1198 = _e_1188;
    assign \_  = _e_1188[19:11];
    assign _e_1196 = _e_1188[10:1];
    assign _e_1197 = _e_1188[0];
    localparam[0:0] _e_4432 = 1;
    assign _e_4434 = _e_1196[9] == 1'd0;
    assign _e_4435 = !_e_1197;
    assign _e_4436 = _e_4432 && _e_4434;
    assign _e_4437 = _e_4436 && _e_4435;
    assign _e_1200 = {1'd0, 8'bX};
    assign _e_1199 = {_e_1200, \state };
    assign _e_1207 = _e_1188;
    assign __n1 = _e_1188[19:11];
    assign _e_1205 = _e_1188[10:1];
    assign _e_1204 = _e_1205[8:0];
    assign \d  = _e_1204[7:0];
    assign _e_1206 = _e_1188[0];
    localparam[0:0] _e_4439 = 1;
    assign _e_4441 = _e_1205[9] == 1'd1;
    assign _e_4443 = _e_1204[8] == 1'd1;
    localparam[0:0] _e_4444 = 1;
    assign _e_4445 = _e_4443 && _e_4444;
    assign _e_4446 = _e_4441 && _e_4445;
    assign _e_4447 = !_e_1206;
    assign _e_4448 = _e_4439 && _e_4446;
    assign _e_4449 = _e_4448 && _e_4447;
    assign _e_1209 = {1'd1, \d };
    assign _e_1208 = {_e_1209, \state };
    assign _e_1217 = _e_1188;
    assign __n2 = _e_1188[19:11];
    assign _e_1215 = _e_1188[10:1];
    assign _e_1214 = _e_1215[8:0];
    assign d_n1 = _e_1214[7:0];
    assign _e_1216 = _e_1188[0];
    localparam[0:0] _e_4451 = 1;
    assign _e_4453 = _e_1215[9] == 1'd1;
    assign _e_4455 = _e_1214[8] == 1'd0;
    localparam[0:0] _e_4456 = 1;
    assign _e_4457 = _e_4455 && _e_4456;
    assign _e_4458 = _e_4453 && _e_4457;
    assign _e_4459 = !_e_1216;
    assign _e_4460 = _e_4451 && _e_4458;
    assign _e_4461 = _e_4460 && _e_4459;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,59" *)
    \nstd::array::impl_35::contains[1474]  contains_0(.self_i(\escapees ), .needle_i(d_n1), .output__(_e_1221));
    assign _e_1220 = _e_1221 ? \escape_prefix  : d_n1;
    assign _e_1219 = {1'd1, _e_1220};
    assign _e_1218 = {_e_1219, \state };
    assign _e_1232 = _e_1188;
    assign _e_1229 = _e_1188[19:11];
    assign _e_1230 = _e_1188[10:1];
    assign __n3 = _e_1188[0];
    assign _e_4464 = _e_1229[8] == 1'd0;
    assign _e_4466 = _e_1230[9] == 1'd0;
    localparam[0:0] _e_4467 = 1;
    assign _e_4468 = _e_4464 && _e_4466;
    assign _e_4469 = _e_4468 && _e_4467;
    assign _e_1234 = {1'd0, 8'bX};
    assign _e_1235 = {1'd0, 8'bX};
    assign _e_1233 = {_e_1234, _e_1235};
    assign _e_1241 = _e_1188;
    assign _e_1236 = _e_1188[19:11];
    assign _e_1239 = _e_1188[10:1];
    assign _e_1238 = _e_1239[8:0];
    assign d_n2 = _e_1238[7:0];
    assign __n4 = _e_1188[0];
    assign _e_4472 = _e_1236[8] == 1'd0;
    assign _e_4474 = _e_1239[9] == 1'd1;
    assign _e_4476 = _e_1238[8] == 1'd1;
    localparam[0:0] _e_4477 = 1;
    assign _e_4478 = _e_4476 && _e_4477;
    assign _e_4479 = _e_4474 && _e_4478;
    localparam[0:0] _e_4480 = 1;
    assign _e_4481 = _e_4472 && _e_4479;
    assign _e_4482 = _e_4481 && _e_4480;
    assign _e_1244 = {1'd1, d_n2};
    assign _e_1246 = {1'd0, 8'bX};
    assign _e_1243 = {_e_1244, _e_1246};
    assign _e_1252 = _e_1188;
    assign _e_1247 = _e_1188[19:11];
    assign _e_1250 = _e_1188[10:1];
    assign _e_1249 = _e_1250[8:0];
    assign d_n3 = _e_1249[7:0];
    assign __n5 = _e_1188[0];
    assign _e_4485 = _e_1247[8] == 1'd0;
    assign _e_4487 = _e_1250[9] == 1'd1;
    assign _e_4489 = _e_1249[8] == 1'd0;
    localparam[0:0] _e_4490 = 1;
    assign _e_4491 = _e_4489 && _e_4490;
    assign _e_4492 = _e_4487 && _e_4491;
    localparam[0:0] _e_4493 = 1;
    assign _e_4494 = _e_4485 && _e_4492;
    assign _e_4495 = _e_4494 && _e_4493;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,20" *)
    \nstd::array::impl_35::contains[1474]  contains_1(.self_i(\escapees ), .needle_i(d_n3), .output__(_e_1255));
    assign _e_1260 = {1'd1, \escape_prefix };
    assign _e_1262 = {1'd1, d_n3};
    assign _e_1259 = {_e_1260, _e_1262};
    assign _e_1266 = {1'd1, d_n3};
    assign _e_1268 = {1'd0, 8'bX};
    assign _e_1265 = {_e_1266, _e_1268};
    assign _e_1254 = _e_1255 ? _e_1259 : _e_1265;
    assign _e_1273 = _e_1188;
    assign _e_1270 = _e_1188[19:11];
    assign \c  = _e_1270[7:0];
    assign __n6 = _e_1188[10:1];
    assign __n7 = _e_1188[0];
    assign _e_4498 = _e_1270[8] == 1'd1;
    localparam[0:0] _e_4499 = 1;
    assign _e_4500 = _e_4498 && _e_4499;
    localparam[0:0] _e_4501 = 1;
    localparam[0:0] _e_4502 = 1;
    assign _e_4503 = _e_4500 && _e_4501;
    assign _e_4504 = _e_4503 && _e_4502;
    assign _e_1279 = {\c };
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,23" *)
    \quickscope::impl_31::call[1510]  call_0(.args_i(_e_1279), .output__(_e_1277));
    assign _e_1276 = {1'd1, _e_1277};
    assign _e_1281 = {1'd0, 8'bX};
    assign _e_1275 = {_e_1276, _e_1281};
    always_comb begin
        priority casez ({_e_4437, _e_4449, _e_4461, _e_4469, _e_4482, _e_4495, _e_4504})
            7'b1??????: _e_1284 = _e_1199;
            7'b01?????: _e_1284 = _e_1208;
            7'b001????: _e_1284 = _e_1218;
            7'b0001???: _e_1284 = _e_1233;
            7'b00001??: _e_1284 = _e_1243;
            7'b000001?: _e_1284 = _e_1254;
            7'b0000001: _e_1284 = _e_1275;
            7'b?: _e_1284 = 18'dx;
        endcase
    end
    assign \out  = _e_1284[17:9];
    assign \next_state  = _e_1284[8:0];
    assign _e_1288 = {1'd0, 8'bX};
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_1288;
        end
        else begin
            \state  <= \next_state ;
        end
    end
    assign \self_mut  = _e_1290_mut;
    assign _e_1294 = {\state , \ds_ready };
    assign _e_1300 = _e_1294;
    assign _e_1298 = _e_1294[9:1];
    assign \ds  = _e_1294[0];
    assign _e_4507 = _e_1298[8] == 1'd0;
    localparam[0:0] _e_4508 = 1;
    assign _e_4509 = _e_4507 && _e_4508;
    assign _e_1305 = _e_1294;
    assign _e_1303 = _e_1294[9:1];
    assign __n8 = _e_1303[7:0];
    assign __n9 = _e_1294[0];
    assign _e_4512 = _e_1303[8] == 1'd1;
    localparam[0:0] _e_4513 = 1;
    assign _e_4514 = _e_4512 && _e_4513;
    localparam[0:0] _e_4515 = 1;
    assign _e_4516 = _e_4514 && _e_4515;
    localparam[0:0] _e_1306 = 0;
    always_comb begin
        priority casez ({_e_4509, _e_4516})
            2'b1?: _e_1292 = \ds ;
            2'b01: _e_1292 = _e_1306;
            2'b?: _e_1292 = 1'dx;
        endcase
    end
    assign _e_1290_mut = _e_1292;
    assign _e_1307 = {\out };
    assign {\ds_ready_inv_mut } = _e_1307_mut;
    assign output__ = _e_1307;
    assign _e_1307_mut = input__;
endmodule

module \nstd::array::impl_35::contains[1474]  (
        input[15:0] self_i,
        input[7:0] needle_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_35::contains[1474]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_35::contains[1474] );
        end
    end
    `endif
    logic[15:0] \self ;
    assign \self  = self_i;
    logic[7:0] \needle ;
    assign \needle  = needle_i;
    (* src = "build/libs/nstd/src/array.spade:48,42" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:48,42" *)
    \nstd::array::nstd::array::impl_35::contains::F[1511]  F_0(.self_i(\self ), .needle_i(\needle ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \ready_valid::escape_byte::impl_16::call[1475]  (
        input[7:0] args_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::escape_byte::impl_16::call[1475]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::escape_byte::impl_16::call[1475] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:110,35" *)
    logic[7:0] _e_1376;
    assign \byte  = \args [7:0];
    localparam[7:0] _e_1378 = 32;
    assign _e_1376 = \byte  ^ _e_1378;
    assign output__ = _e_1376;
endmodule

module \std::option::impl_12::is_none[1476]  (
        input[16:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_none[1476]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_none[1476] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:15,10" *)
    logic _e_968;
    (* src = "<compiler dir>/stdlib/option.spade:15,9" *)
    logic _e_967;
    (* src = "<compiler dir>/stdlib/option.spade:15,10" *)
    \std::option::impl_12::is_some[1512]  is_some_0(.self_i(\self ), .output__(_e_968));
    assign _e_967 = !_e_968;
    assign output__ = _e_967;
endmodule

module \std::conv::concat_arrays[1477]  (
        input l_i,
        input[6:0] r_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1477]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1477] );
        end
    end
    `endif
    logic \l ;
    assign \l  = l_i;
    logic[6:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[7:0] _e_428;
    logic[7:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \std::conv::bits_to_uint[1478]  (
        input[7:0] input_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::bits_to_uint[1478]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::bits_to_uint[1478] );
        end
    end
    `endif
    logic[7:0] \input ;
    assign \input  = input_i;
    logic[7:0] _e_475;
    assign _e_475 = \input ;
    assign output__ = _e_475;
endmodule

module \ready_valid::impl_20::fifo_buffer[1479]  (
        input[24:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        output[26:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_20::fifo_buffer[1479]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_20::fifo_buffer[1479] );
        end
    end
    `endif
    logic[24:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    logic[26:0] _e_1739;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    logic _e_1739_mut;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    \ready_valid::impl_20::cdc_fifo_buffer[1513]  cdc_fifo_buffer_0(.self_i(\self ), .self_o(\self_mut ), .write_clk_i(\clk ), .write_rst_i(\rst ), .read_clk_i(\clk ), .read_rst_i(\rst ), .output__(_e_1739), .input__(_e_1739_mut));
    assign output__ = _e_1739;
    assign _e_1739_mut = input__;
endmodule

module \ready_valid::impl_19::read_empty[1480]  (
        input[26:0] self_i, output self_o,
        output wire_o,
        output[26:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_19::read_empty[1480]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_19::read_empty[1480] );
        end
    end
    `endif
    logic[26:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \wire_mut ;
    assign wire_o = \wire_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \full ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \empty ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic[24:0] \data ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \data_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:158,9" *)
    logic[26:0] _e_1689;
    (* src = "build/libs/ready_valid/src/main.spade:158,9" *)
    logic _e_1689_mut;
    assign \full  = \self [26];
    assign \empty  = \self [25];
    assign \data  = \self [24:0];
    assign \self_mut  = \data_mut ;
    assign \wire_mut  = \empty ;
    assign _e_1689 = {\full , \empty , \data };
    assign {\data_mut } = _e_1689_mut;
    assign output__ = _e_1689;
    assign _e_1689_mut = input__;
endmodule

module \ready_valid::impl_17::map[1481]  (
        input[24:0] self_i, output self_o,
        output[24:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::map[1481]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::map[1481] );
        end
    end
    `endif
    logic[24:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:75,22" *)
    logic[24:0] _e_1540;
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    logic[24:0] _e_1538;
    (* src = "build/libs/ready_valid/src/main.spade:76,20" *)
    logic _e_1544_mut;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic[24:0] _e_1537;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic _e_1537_mut;
    assign _e_1540 = \self [24:0];
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    \std::option::impl_12::map[1514]  map_0(.self_i(_e_1540), .output__(_e_1538));
    assign \self_mut  = _e_1544_mut;
    assign _e_1537 = {_e_1538};
    assign {_e_1544_mut} = _e_1537_mut;
    assign output__ = _e_1537;
    assign _e_1537_mut = input__;
endmodule

module \quickscope::impl_27::into_element_stream[1482]  (
        input[24:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_27::into_element_stream[1482]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_27::into_element_stream[1482] );
        end
    end
    `endif
    logic[24:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/quickscope/src/main.spade:6,11" *)
    logic[24:0] \data ;
    (* src = "build/libs/quickscope/src/main.spade:6,11" *)
    logic \ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic _e_4519;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic _e_4520_mut;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic \ds_ready ;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic \ds_ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:8,85" *)
    logic[23:0] _e_3112;
    (* src = "build/libs/quickscope/src/main.spade:8,84" *)
    logic[25:0] _e_3111;
    (* src = "build/libs/quickscope/src/main.spade:9,35" *)
    logic _e_3119;
    (* src = "build/libs/quickscope/src/main.spade:9,16" *)
    logic[27:0] _e_3115;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[27:0] _e_3126;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[24:0] _e_3123;
    (* src = "build/libs/quickscope/src/main.spade:10,14" *)
    logic[23:0] data_n1;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[1:0] _e_3124;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic \_ ;
    logic _e_4523;
    logic _e_4525;
    logic _e_4526;
    logic _e_4529;
    logic _e_4530;
    (* src = "build/libs/quickscope/src/main.spade:10,35" *)
    logic[25:0] _e_3127;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[27:0] _e_3133;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[24:0] __n1;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[1:0] __n2;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic _e_3132;
    logic _e_4534;
    logic _e_4535;
    logic _e_4536;
    (* src = "build/libs/quickscope/src/main.spade:11,30" *)
    logic[25:0] _e_3134;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[27:0] _e_3140;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[24:0] _e_3137;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[1:0] _e_3138;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic __n3;
    logic _e_4539;
    logic _e_4540;
    logic _e_4543;
    logic _e_4544;
    (* src = "build/libs/quickscope/src/main.spade:12,29" *)
    logic[25:0] _e_3141;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[27:0] _e_3148;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[24:0] _e_3145;
    (* src = "build/libs/quickscope/src/main.spade:13,14" *)
    logic[23:0] data_n2;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[1:0] _e_3146;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic __n4;
    logic _e_4547;
    logic _e_4549;
    logic _e_4550;
    logic _e_4553;
    logic _e_4554;
    (* src = "build/libs/quickscope/src/main.spade:13,35" *)
    logic[25:0] _e_3149;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[27:0] _e_3155;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[24:0] __n5;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[1:0] __n6;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic __n7;
    logic _e_4559;
    logic _e_4560;
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    logic[15:0] _e_3158;
    (* src = "build/libs/quickscope/src/main.spade:14,47" *)
    logic[7:0] _e_3163;
    (* src = "build/libs/quickscope/src/main.spade:14,46" *)
    logic[7:0] _e_3162;
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    logic[23:0] _e_3157;
    (* src = "build/libs/quickscope/src/main.spade:14,76" *)
    logic[2:0] _e_3165;
    (* src = "build/libs/quickscope/src/main.spade:14,70" *)
    logic[1:0] _e_3164;
    (* src = "build/libs/quickscope/src/main.spade:14,26" *)
    logic[25:0] _e_3156;
    (* src = "build/libs/quickscope/src/main.spade:9,10" *)
    logic[25:0] _e_3114;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    reg[25:0] _e_3108;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    logic[23:0] \array ;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    logic[1:0] \num_left ;
    (* src = "build/libs/quickscope/src/main.spade:17,21" *)
    logic _e_3171;
    (* src = "build/libs/quickscope/src/main.spade:17,38" *)
    logic _e_3175;
    (* src = "build/libs/quickscope/src/main.spade:17,56" *)
    logic _e_3178;
    (* src = "build/libs/quickscope/src/main.spade:17,38" *)
    logic _e_3174;
    (* src = "build/libs/quickscope/src/main.spade:17,20" *)
    logic _e_3169;
    logic _e_4561;
    (* src = "build/libs/quickscope/src/main.spade:21,18" *)
    logic[8:0] _e_3186;
    (* src = "build/libs/quickscope/src/main.spade:22,13" *)
    logic[1:0] __n8;
    (* src = "build/libs/quickscope/src/main.spade:22,23" *)
    logic[7:0] _e_3189;
    (* src = "build/libs/quickscope/src/main.spade:22,18" *)
    logic[8:0] _e_3188;
    (* src = "build/libs/quickscope/src/main.spade:20,11" *)
    logic[8:0] _e_3182;
    (* src = "build/libs/quickscope/src/main.spade:24,10" *)
    logic _e_3192_mut;
    (* src = "build/libs/quickscope/src/main.spade:19,7" *)
    logic[8:0] _e_3181;
    (* src = "build/libs/quickscope/src/main.spade:19,7" *)
    logic _e_3181_mut;
    assign \data  = \self [24:0];
    assign \self_mut  = \ready_mut ;
    
    assign _e_4519 = _e_4520_mut;
    assign \ds_ready  = {_e_4519};
    assign {_e_4520_mut} = \ds_ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:8,85" *)
    \std::undef::undef[1515]  undef_0(.output__(_e_3112));
    localparam[1:0] _e_3113 = 0;
    assign _e_3111 = {_e_3112, _e_3113};
    assign _e_3119 = \ds_ready ;
    assign _e_3115 = {\data , \num_left , _e_3119};
    assign _e_3126 = _e_3115;
    assign _e_3123 = _e_3115[27:3];
    assign data_n1 = _e_3123[23:0];
    assign _e_3124 = _e_3115[2:1];
    assign \_  = _e_3115[0];
    assign _e_4523 = _e_3123[24] == 1'd1;
    localparam[0:0] _e_4524 = 1;
    assign _e_4525 = _e_4523 && _e_4524;
    localparam[1:0] _e_4527 = 0;
    assign _e_4526 = _e_3124 == _e_4527;
    localparam[0:0] _e_4528 = 1;
    assign _e_4529 = _e_4525 && _e_4526;
    assign _e_4530 = _e_4529 && _e_4528;
    localparam[1:0] _e_3129 = 3;
    assign _e_3127 = {data_n1, _e_3129};
    assign _e_3133 = _e_3115;
    assign __n1 = _e_3115[27:3];
    assign __n2 = _e_3115[2:1];
    assign _e_3132 = _e_3115[0];
    localparam[0:0] _e_4532 = 1;
    localparam[0:0] _e_4533 = 1;
    assign _e_4534 = !_e_3132;
    assign _e_4535 = _e_4532 && _e_4533;
    assign _e_4536 = _e_4535 && _e_4534;
    assign _e_3134 = {\array , \num_left };
    assign _e_3140 = _e_3115;
    assign _e_3137 = _e_3115[27:3];
    assign _e_3138 = _e_3115[2:1];
    assign __n3 = _e_3115[0];
    assign _e_4539 = _e_3137[24] == 1'd0;
    localparam[1:0] _e_4541 = 0;
    assign _e_4540 = _e_3138 == _e_4541;
    localparam[0:0] _e_4542 = 1;
    assign _e_4543 = _e_4539 && _e_4540;
    assign _e_4544 = _e_4543 && _e_4542;
    assign _e_3141 = {\array , \num_left };
    assign _e_3148 = _e_3115;
    assign _e_3145 = _e_3115[27:3];
    assign data_n2 = _e_3145[23:0];
    assign _e_3146 = _e_3115[2:1];
    assign __n4 = _e_3115[0];
    assign _e_4547 = _e_3145[24] == 1'd1;
    localparam[0:0] _e_4548 = 1;
    assign _e_4549 = _e_4547 && _e_4548;
    localparam[1:0] _e_4551 = 1;
    assign _e_4550 = _e_3146 == _e_4551;
    localparam[0:0] _e_4552 = 1;
    assign _e_4553 = _e_4549 && _e_4550;
    assign _e_4554 = _e_4553 && _e_4552;
    localparam[1:0] _e_3151 = 3;
    assign _e_3149 = {data_n2, _e_3151};
    assign _e_3155 = _e_3115;
    assign __n5 = _e_3115[27:3];
    assign __n6 = _e_3115[2:1];
    assign __n7 = _e_3115[0];
    localparam[0:0] _e_4556 = 1;
    localparam[0:0] _e_4557 = 1;
    localparam[0:0] _e_4558 = 1;
    assign _e_4559 = _e_4556 && _e_4557;
    assign _e_4560 = _e_4559 && _e_4558;
    assign _e_3158 = \array [23-:16];
    (* src = "build/libs/quickscope/src/main.spade:14,47" *)
    \std::undef::undef[1502]  undef_1(.output__(_e_3163));
    assign _e_3162 = {_e_3163};
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    \std::array::impl_0::concat[1516]  concat_0(.self_i(_e_3158), .other_i(_e_3162), .output__(_e_3157));
    localparam[1:0] _e_3167 = 1;
    assign _e_3165 = \num_left  - _e_3167;
    assign _e_3164 = _e_3165[1:0];
    assign _e_3156 = {_e_3157, _e_3164};
    always_comb begin
        priority casez ({_e_4530, _e_4536, _e_4544, _e_4554, _e_4560})
            5'b1????: _e_3114 = _e_3127;
            5'b01???: _e_3114 = _e_3134;
            5'b001??: _e_3114 = _e_3141;
            5'b0001?: _e_3114 = _e_3149;
            5'b00001: _e_3114 = _e_3156;
            5'b?: _e_3114 = 26'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            _e_3108 <= _e_3111;
        end
        else begin
            _e_3108 <= _e_3114;
        end
    end
    assign \array  = _e_3108[25:2];
    assign \num_left  = _e_3108[1:0];
    localparam[1:0] _e_3173 = 0;
    assign _e_3171 = \num_left  == _e_3173;
    localparam[1:0] _e_3177 = 1;
    assign _e_3175 = \num_left  == _e_3177;
    assign _e_3178 = \ds_ready ;
    assign _e_3174 = _e_3175 && _e_3178;
    assign _e_3169 = _e_3171 || _e_3174;
    assign \ready_mut  = _e_3169;
    localparam[1:0] _e_4562 = 0;
    assign _e_4561 = \num_left  == _e_4562;
    assign _e_3186 = {1'd0, 8'bX};
    assign __n8 = \num_left ;
    localparam[0:0] _e_4563 = 1;
    localparam[1:0] _e_3191 = 0;
    assign _e_3189 = \array [_e_3191 * 8+:8];
    assign _e_3188 = {1'd1, _e_3189};
    always_comb begin
        priority casez ({_e_4561, _e_4563})
            2'b1?: _e_3182 = _e_3186;
            2'b01: _e_3182 = _e_3188;
            2'b?: _e_3182 = 9'dx;
        endcase
    end
    assign \ds_ready_mut  = _e_3192_mut;
    assign _e_3181 = {_e_3182};
    assign {_e_3192_mut} = _e_3181_mut;
    assign output__ = _e_3181;
    assign _e_3181_mut = input__;
endmodule

module \ready_valid::impl_17::map[1483]  (
        input[8:0] self_i, output self_o,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::map[1483]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::map[1483] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:75,22" *)
    logic[8:0] _e_1540;
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    logic[9:0] _e_1538;
    (* src = "build/libs/ready_valid/src/main.spade:76,20" *)
    logic _e_1544_mut;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic[9:0] _e_1537;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic _e_1537_mut;
    assign _e_1540 = \self [8:0];
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    \std::option::impl_12::map[1517]  map_0(.self_i(_e_1540), .output__(_e_1538));
    assign \self_mut  = _e_1544_mut;
    assign _e_1537 = {_e_1538};
    assign {_e_1544_mut} = _e_1537_mut;
    assign output__ = _e_1537;
    assign _e_1537_mut = input__;
endmodule

module \ready_valid::escape_byte::impl_14::escape_bytes[1484]  (
        input[9:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        input[15:0] escapees_i,
        input[7:0] escape_prefix_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::escape_byte::impl_14::escape_bytes[1484]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::escape_byte::impl_14::escape_bytes[1484] );
        end
    end
    `endif
    logic[9:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[15:0] \escapees ;
    assign \escapees  = escapees_i;
    logic[7:0] \escape_prefix ;
    assign \escape_prefix  = escape_prefix_i;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_4564;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_4565_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_1186;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_1186_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,13" *)
    logic \ds_ready ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,13" *)
    logic \ds_ready_inv_mut ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,49" *)
    logic[9:0] _e_1190;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,39" *)
    logic[19:0] _e_1188;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[19:0] _e_1198;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[8:0] \_ ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[9:0] _e_1196;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic _e_1197;
    logic _e_4569;
    logic _e_4570;
    logic _e_4571;
    logic _e_4572;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,34" *)
    logic[8:0] _e_1200;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,33" *)
    logic[17:0] _e_1199;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[19:0] _e_1207;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[8:0] __n1;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[9:0] _e_1205;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,17" *)
    logic[8:0] _e_1204;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,22" *)
    logic[7:0] \d ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic _e_1206;
    logic _e_4576;
    logic _e_4578;
    logic _e_4580;
    logic _e_4581;
    logic _e_4582;
    logic _e_4583;
    logic _e_4584;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,50" *)
    logic[8:0] _e_1209;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,49" *)
    logic[17:0] _e_1208;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[19:0] _e_1217;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[8:0] __n2;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[9:0] _e_1215;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,17" *)
    logic[8:0] _e_1214;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,22" *)
    logic[7:0] d_n1;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic _e_1216;
    logic _e_4588;
    logic _e_4590;
    logic _e_4592;
    logic _e_4593;
    logic _e_4594;
    logic _e_4595;
    logic _e_4596;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,59" *)
    logic _e_1221;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,56" *)
    logic[7:0] _e_1220;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,51" *)
    logic[8:0] _e_1219;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,50" *)
    logic[17:0] _e_1218;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[19:0] _e_1232;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[8:0] _e_1229;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[9:0] _e_1230;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic __n3;
    logic _e_4599;
    logic _e_4601;
    logic _e_4603;
    logic _e_4604;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,43" *)
    logic[8:0] _e_1234;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,49" *)
    logic[8:0] _e_1235;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,42" *)
    logic[17:0] _e_1233;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[19:0] _e_1241;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[8:0] _e_1236;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[9:0] _e_1239;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,29" *)
    logic[8:0] _e_1238;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,34" *)
    logic[7:0] d_n2;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic __n4;
    logic _e_4607;
    logic _e_4609;
    logic _e_4611;
    logic _e_4613;
    logic _e_4614;
    logic _e_4616;
    logic _e_4617;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,18" *)
    logic[8:0] _e_1244;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,27" *)
    logic[8:0] _e_1246;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,17" *)
    logic[17:0] _e_1243;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[19:0] _e_1252;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[8:0] _e_1247;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[9:0] _e_1250;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,29" *)
    logic[8:0] _e_1249;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,34" *)
    logic[7:0] d_n3;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic __n5;
    logic _e_4620;
    logic _e_4622;
    logic _e_4624;
    logic _e_4626;
    logic _e_4627;
    logic _e_4629;
    logic _e_4630;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,20" *)
    logic _e_1255;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,22" *)
    logic[8:0] _e_1260;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,43" *)
    logic[8:0] _e_1262;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,21" *)
    logic[17:0] _e_1259;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,22" *)
    logic[8:0] _e_1266;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,31" *)
    logic[8:0] _e_1268;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,21" *)
    logic[17:0] _e_1265;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,17" *)
    logic[17:0] _e_1254;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[19:0] _e_1273;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[8:0] _e_1270;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,14" *)
    logic[7:0] \c ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[9:0] __n6;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic __n7;
    logic _e_4633;
    logic _e_4635;
    logic _e_4638;
    logic _e_4639;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,38" *)
    logic[7:0] _e_1279;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,23" *)
    logic[7:0] _e_1277;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,18" *)
    logic[8:0] _e_1276;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,46" *)
    logic[8:0] _e_1281;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,17" *)
    logic[17:0] _e_1275;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,33" *)
    logic[17:0] _e_1284;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,13" *)
    logic[8:0] \out ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,13" *)
    logic[8:0] \next_state ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:52,35" *)
    logic[8:0] _e_1288;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:52,18" *)
    reg[8:0] \state ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,13" *)
    logic _e_1290_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,33" *)
    logic[9:0] _e_1294;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic[9:0] _e_1300;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic[8:0] _e_1298;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic \ds ;
    logic _e_4642;
    logic _e_4644;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic[9:0] _e_1305;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic[8:0] _e_1303;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,14" *)
    logic[7:0] __n8;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic __n9;
    logic _e_4647;
    logic _e_4649;
    logic _e_4651;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,27" *)
    logic _e_1292;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:59,9" *)
    logic[8:0] _e_1307;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:59,9" *)
    logic _e_1307_mut;
    
    assign _e_4564 = _e_4565_mut;
    assign _e_1186 = {_e_4564};
    assign {_e_4565_mut} = _e_1186_mut;
    assign \ds_ready  = _e_1186;
    assign _e_1186_mut = \ds_ready_inv_mut ;
    assign _e_1190 = \self [9:0];
    assign _e_1188 = {\state , _e_1190, \ds_ready };
    assign _e_1198 = _e_1188;
    assign \_  = _e_1188[19:11];
    assign _e_1196 = _e_1188[10:1];
    assign _e_1197 = _e_1188[0];
    localparam[0:0] _e_4567 = 1;
    assign _e_4569 = _e_1196[9] == 1'd0;
    assign _e_4570 = !_e_1197;
    assign _e_4571 = _e_4567 && _e_4569;
    assign _e_4572 = _e_4571 && _e_4570;
    assign _e_1200 = {1'd0, 8'bX};
    assign _e_1199 = {_e_1200, \state };
    assign _e_1207 = _e_1188;
    assign __n1 = _e_1188[19:11];
    assign _e_1205 = _e_1188[10:1];
    assign _e_1204 = _e_1205[8:0];
    assign \d  = _e_1204[7:0];
    assign _e_1206 = _e_1188[0];
    localparam[0:0] _e_4574 = 1;
    assign _e_4576 = _e_1205[9] == 1'd1;
    assign _e_4578 = _e_1204[8] == 1'd1;
    localparam[0:0] _e_4579 = 1;
    assign _e_4580 = _e_4578 && _e_4579;
    assign _e_4581 = _e_4576 && _e_4580;
    assign _e_4582 = !_e_1206;
    assign _e_4583 = _e_4574 && _e_4581;
    assign _e_4584 = _e_4583 && _e_4582;
    assign _e_1209 = {1'd1, \d };
    assign _e_1208 = {_e_1209, \state };
    assign _e_1217 = _e_1188;
    assign __n2 = _e_1188[19:11];
    assign _e_1215 = _e_1188[10:1];
    assign _e_1214 = _e_1215[8:0];
    assign d_n1 = _e_1214[7:0];
    assign _e_1216 = _e_1188[0];
    localparam[0:0] _e_4586 = 1;
    assign _e_4588 = _e_1215[9] == 1'd1;
    assign _e_4590 = _e_1214[8] == 1'd0;
    localparam[0:0] _e_4591 = 1;
    assign _e_4592 = _e_4590 && _e_4591;
    assign _e_4593 = _e_4588 && _e_4592;
    assign _e_4594 = !_e_1216;
    assign _e_4595 = _e_4586 && _e_4593;
    assign _e_4596 = _e_4595 && _e_4594;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,59" *)
    \nstd::array::impl_35::contains[1474]  contains_0(.self_i(\escapees ), .needle_i(d_n1), .output__(_e_1221));
    assign _e_1220 = _e_1221 ? \escape_prefix  : d_n1;
    assign _e_1219 = {1'd1, _e_1220};
    assign _e_1218 = {_e_1219, \state };
    assign _e_1232 = _e_1188;
    assign _e_1229 = _e_1188[19:11];
    assign _e_1230 = _e_1188[10:1];
    assign __n3 = _e_1188[0];
    assign _e_4599 = _e_1229[8] == 1'd0;
    assign _e_4601 = _e_1230[9] == 1'd0;
    localparam[0:0] _e_4602 = 1;
    assign _e_4603 = _e_4599 && _e_4601;
    assign _e_4604 = _e_4603 && _e_4602;
    assign _e_1234 = {1'd0, 8'bX};
    assign _e_1235 = {1'd0, 8'bX};
    assign _e_1233 = {_e_1234, _e_1235};
    assign _e_1241 = _e_1188;
    assign _e_1236 = _e_1188[19:11];
    assign _e_1239 = _e_1188[10:1];
    assign _e_1238 = _e_1239[8:0];
    assign d_n2 = _e_1238[7:0];
    assign __n4 = _e_1188[0];
    assign _e_4607 = _e_1236[8] == 1'd0;
    assign _e_4609 = _e_1239[9] == 1'd1;
    assign _e_4611 = _e_1238[8] == 1'd1;
    localparam[0:0] _e_4612 = 1;
    assign _e_4613 = _e_4611 && _e_4612;
    assign _e_4614 = _e_4609 && _e_4613;
    localparam[0:0] _e_4615 = 1;
    assign _e_4616 = _e_4607 && _e_4614;
    assign _e_4617 = _e_4616 && _e_4615;
    assign _e_1244 = {1'd1, d_n2};
    assign _e_1246 = {1'd0, 8'bX};
    assign _e_1243 = {_e_1244, _e_1246};
    assign _e_1252 = _e_1188;
    assign _e_1247 = _e_1188[19:11];
    assign _e_1250 = _e_1188[10:1];
    assign _e_1249 = _e_1250[8:0];
    assign d_n3 = _e_1249[7:0];
    assign __n5 = _e_1188[0];
    assign _e_4620 = _e_1247[8] == 1'd0;
    assign _e_4622 = _e_1250[9] == 1'd1;
    assign _e_4624 = _e_1249[8] == 1'd0;
    localparam[0:0] _e_4625 = 1;
    assign _e_4626 = _e_4624 && _e_4625;
    assign _e_4627 = _e_4622 && _e_4626;
    localparam[0:0] _e_4628 = 1;
    assign _e_4629 = _e_4620 && _e_4627;
    assign _e_4630 = _e_4629 && _e_4628;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,20" *)
    \nstd::array::impl_35::contains[1474]  contains_1(.self_i(\escapees ), .needle_i(d_n3), .output__(_e_1255));
    assign _e_1260 = {1'd1, \escape_prefix };
    assign _e_1262 = {1'd1, d_n3};
    assign _e_1259 = {_e_1260, _e_1262};
    assign _e_1266 = {1'd1, d_n3};
    assign _e_1268 = {1'd0, 8'bX};
    assign _e_1265 = {_e_1266, _e_1268};
    assign _e_1254 = _e_1255 ? _e_1259 : _e_1265;
    assign _e_1273 = _e_1188;
    assign _e_1270 = _e_1188[19:11];
    assign \c  = _e_1270[7:0];
    assign __n6 = _e_1188[10:1];
    assign __n7 = _e_1188[0];
    assign _e_4633 = _e_1270[8] == 1'd1;
    localparam[0:0] _e_4634 = 1;
    assign _e_4635 = _e_4633 && _e_4634;
    localparam[0:0] _e_4636 = 1;
    localparam[0:0] _e_4637 = 1;
    assign _e_4638 = _e_4635 && _e_4636;
    assign _e_4639 = _e_4638 && _e_4637;
    assign _e_1279 = {\c };
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,23" *)
    \quickscope::impl_31::call[1518]  call_0(.args_i(_e_1279), .output__(_e_1277));
    assign _e_1276 = {1'd1, _e_1277};
    assign _e_1281 = {1'd0, 8'bX};
    assign _e_1275 = {_e_1276, _e_1281};
    always_comb begin
        priority casez ({_e_4572, _e_4584, _e_4596, _e_4604, _e_4617, _e_4630, _e_4639})
            7'b1??????: _e_1284 = _e_1199;
            7'b01?????: _e_1284 = _e_1208;
            7'b001????: _e_1284 = _e_1218;
            7'b0001???: _e_1284 = _e_1233;
            7'b00001??: _e_1284 = _e_1243;
            7'b000001?: _e_1284 = _e_1254;
            7'b0000001: _e_1284 = _e_1275;
            7'b?: _e_1284 = 18'dx;
        endcase
    end
    assign \out  = _e_1284[17:9];
    assign \next_state  = _e_1284[8:0];
    assign _e_1288 = {1'd0, 8'bX};
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_1288;
        end
        else begin
            \state  <= \next_state ;
        end
    end
    assign \self_mut  = _e_1290_mut;
    assign _e_1294 = {\state , \ds_ready };
    assign _e_1300 = _e_1294;
    assign _e_1298 = _e_1294[9:1];
    assign \ds  = _e_1294[0];
    assign _e_4642 = _e_1298[8] == 1'd0;
    localparam[0:0] _e_4643 = 1;
    assign _e_4644 = _e_4642 && _e_4643;
    assign _e_1305 = _e_1294;
    assign _e_1303 = _e_1294[9:1];
    assign __n8 = _e_1303[7:0];
    assign __n9 = _e_1294[0];
    assign _e_4647 = _e_1303[8] == 1'd1;
    localparam[0:0] _e_4648 = 1;
    assign _e_4649 = _e_4647 && _e_4648;
    localparam[0:0] _e_4650 = 1;
    assign _e_4651 = _e_4649 && _e_4650;
    localparam[0:0] _e_1306 = 0;
    always_comb begin
        priority casez ({_e_4644, _e_4651})
            2'b1?: _e_1292 = \ds ;
            2'b01: _e_1292 = _e_1306;
            2'b?: _e_1292 = 1'dx;
        endcase
    end
    assign _e_1290_mut = _e_1292;
    assign _e_1307 = {\out };
    assign {\ds_ready_inv_mut } = _e_1307_mut;
    assign output__ = _e_1307;
    assign _e_1307_mut = input__;
endmodule

module \ready_valid::impl_20::fifo_buffer[1485]  (
        input[32:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        output[34:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_20::fifo_buffer[1485]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_20::fifo_buffer[1485] );
        end
    end
    `endif
    logic[32:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    logic[34:0] _e_1739;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    logic _e_1739_mut;
    (* src = "build/libs/ready_valid/src/main.spade:193,9" *)
    \ready_valid::impl_20::cdc_fifo_buffer[1519]  cdc_fifo_buffer_0(.self_i(\self ), .self_o(\self_mut ), .write_clk_i(\clk ), .write_rst_i(\rst ), .read_clk_i(\clk ), .read_rst_i(\rst ), .output__(_e_1739), .input__(_e_1739_mut));
    assign output__ = _e_1739;
    assign _e_1739_mut = input__;
endmodule

module \ready_valid::impl_19::read_empty[1486]  (
        input[34:0] self_i, output self_o,
        output wire_o,
        output[34:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_19::read_empty[1486]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_19::read_empty[1486] );
        end
    end
    `endif
    logic[34:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \wire_mut ;
    assign wire_o = \wire_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \full ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \empty ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic[32:0] \data ;
    (* src = "build/libs/ready_valid/src/main.spade:156,13" *)
    logic \data_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:158,9" *)
    logic[34:0] _e_1689;
    (* src = "build/libs/ready_valid/src/main.spade:158,9" *)
    logic _e_1689_mut;
    assign \full  = \self [34];
    assign \empty  = \self [33];
    assign \data  = \self [32:0];
    assign \self_mut  = \data_mut ;
    assign \wire_mut  = \empty ;
    assign _e_1689 = {\full , \empty , \data };
    assign {\data_mut } = _e_1689_mut;
    assign output__ = _e_1689;
    assign _e_1689_mut = input__;
endmodule

module \ready_valid::impl_17::map[1487]  (
        input[32:0] self_i, output self_o,
        output[32:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::map[1487]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::map[1487] );
        end
    end
    `endif
    logic[32:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:75,22" *)
    logic[32:0] _e_1540;
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    logic[32:0] _e_1538;
    (* src = "build/libs/ready_valid/src/main.spade:76,20" *)
    logic _e_1544_mut;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic[32:0] _e_1537;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic _e_1537_mut;
    assign _e_1540 = \self [32:0];
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    \std::option::impl_12::map[1520]  map_0(.self_i(_e_1540), .output__(_e_1538));
    assign \self_mut  = _e_1544_mut;
    assign _e_1537 = {_e_1538};
    assign {_e_1544_mut} = _e_1537_mut;
    assign output__ = _e_1537;
    assign _e_1537_mut = input__;
endmodule

module \quickscope::impl_27::into_element_stream[1488]  (
        input[32:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_27::into_element_stream[1488]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_27::into_element_stream[1488] );
        end
    end
    `endif
    logic[32:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "build/libs/quickscope/src/main.spade:6,11" *)
    logic[32:0] \data ;
    (* src = "build/libs/quickscope/src/main.spade:6,11" *)
    logic \ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic _e_4652;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic _e_4653_mut;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic \ds_ready ;
    (* src = "build/libs/quickscope/src/main.spade:7,22" *)
    logic \ds_ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:8,85" *)
    logic[31:0] _e_3112;
    (* src = "build/libs/quickscope/src/main.spade:8,84" *)
    logic[34:0] _e_3111;
    (* src = "build/libs/quickscope/src/main.spade:9,35" *)
    logic _e_3119;
    (* src = "build/libs/quickscope/src/main.spade:9,16" *)
    logic[36:0] _e_3115;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[36:0] _e_3126;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[32:0] _e_3123;
    (* src = "build/libs/quickscope/src/main.spade:10,14" *)
    logic[31:0] data_n1;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic[2:0] _e_3124;
    (* src = "build/libs/quickscope/src/main.spade:10,13" *)
    logic \_ ;
    logic _e_4656;
    logic _e_4658;
    logic _e_4659;
    logic _e_4662;
    logic _e_4663;
    (* src = "build/libs/quickscope/src/main.spade:10,35" *)
    logic[34:0] _e_3127;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[36:0] _e_3133;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[32:0] __n1;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic[2:0] __n2;
    (* src = "build/libs/quickscope/src/main.spade:11,13" *)
    logic _e_3132;
    logic _e_4667;
    logic _e_4668;
    logic _e_4669;
    (* src = "build/libs/quickscope/src/main.spade:11,30" *)
    logic[34:0] _e_3134;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[36:0] _e_3140;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[32:0] _e_3137;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic[2:0] _e_3138;
    (* src = "build/libs/quickscope/src/main.spade:12,13" *)
    logic __n3;
    logic _e_4672;
    logic _e_4673;
    logic _e_4676;
    logic _e_4677;
    (* src = "build/libs/quickscope/src/main.spade:12,29" *)
    logic[34:0] _e_3141;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[36:0] _e_3148;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[32:0] _e_3145;
    (* src = "build/libs/quickscope/src/main.spade:13,14" *)
    logic[31:0] data_n2;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic[2:0] _e_3146;
    (* src = "build/libs/quickscope/src/main.spade:13,13" *)
    logic __n4;
    logic _e_4680;
    logic _e_4682;
    logic _e_4683;
    logic _e_4686;
    logic _e_4687;
    (* src = "build/libs/quickscope/src/main.spade:13,35" *)
    logic[34:0] _e_3149;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[36:0] _e_3155;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[32:0] __n5;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic[2:0] __n6;
    (* src = "build/libs/quickscope/src/main.spade:14,13" *)
    logic __n7;
    logic _e_4692;
    logic _e_4693;
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    logic[23:0] _e_3158;
    (* src = "build/libs/quickscope/src/main.spade:14,47" *)
    logic[7:0] _e_3163;
    (* src = "build/libs/quickscope/src/main.spade:14,46" *)
    logic[7:0] _e_3162;
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    logic[31:0] _e_3157;
    (* src = "build/libs/quickscope/src/main.spade:14,76" *)
    logic[3:0] _e_3165;
    (* src = "build/libs/quickscope/src/main.spade:14,70" *)
    logic[2:0] _e_3164;
    (* src = "build/libs/quickscope/src/main.spade:14,26" *)
    logic[34:0] _e_3156;
    (* src = "build/libs/quickscope/src/main.spade:9,10" *)
    logic[34:0] _e_3114;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    reg[34:0] _e_3108;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    logic[31:0] \array ;
    (* src = "build/libs/quickscope/src/main.spade:8,16" *)
    logic[2:0] \num_left ;
    (* src = "build/libs/quickscope/src/main.spade:17,21" *)
    logic _e_3171;
    (* src = "build/libs/quickscope/src/main.spade:17,38" *)
    logic _e_3175;
    (* src = "build/libs/quickscope/src/main.spade:17,56" *)
    logic _e_3178;
    (* src = "build/libs/quickscope/src/main.spade:17,38" *)
    logic _e_3174;
    (* src = "build/libs/quickscope/src/main.spade:17,20" *)
    logic _e_3169;
    logic _e_4694;
    (* src = "build/libs/quickscope/src/main.spade:21,18" *)
    logic[8:0] _e_3186;
    (* src = "build/libs/quickscope/src/main.spade:22,13" *)
    logic[2:0] __n8;
    (* src = "build/libs/quickscope/src/main.spade:22,23" *)
    logic[7:0] _e_3189;
    (* src = "build/libs/quickscope/src/main.spade:22,18" *)
    logic[8:0] _e_3188;
    (* src = "build/libs/quickscope/src/main.spade:20,11" *)
    logic[8:0] _e_3182;
    (* src = "build/libs/quickscope/src/main.spade:24,10" *)
    logic _e_3192_mut;
    (* src = "build/libs/quickscope/src/main.spade:19,7" *)
    logic[8:0] _e_3181;
    (* src = "build/libs/quickscope/src/main.spade:19,7" *)
    logic _e_3181_mut;
    assign \data  = \self [32:0];
    assign \self_mut  = \ready_mut ;
    
    assign _e_4652 = _e_4653_mut;
    assign \ds_ready  = {_e_4652};
    assign {_e_4653_mut} = \ds_ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:8,85" *)
    \std::undef::undef[1521]  undef_0(.output__(_e_3112));
    localparam[2:0] _e_3113 = 0;
    assign _e_3111 = {_e_3112, _e_3113};
    assign _e_3119 = \ds_ready ;
    assign _e_3115 = {\data , \num_left , _e_3119};
    assign _e_3126 = _e_3115;
    assign _e_3123 = _e_3115[36:4];
    assign data_n1 = _e_3123[31:0];
    assign _e_3124 = _e_3115[3:1];
    assign \_  = _e_3115[0];
    assign _e_4656 = _e_3123[32] == 1'd1;
    localparam[0:0] _e_4657 = 1;
    assign _e_4658 = _e_4656 && _e_4657;
    localparam[2:0] _e_4660 = 0;
    assign _e_4659 = _e_3124 == _e_4660;
    localparam[0:0] _e_4661 = 1;
    assign _e_4662 = _e_4658 && _e_4659;
    assign _e_4663 = _e_4662 && _e_4661;
    localparam[2:0] _e_3129 = 4;
    assign _e_3127 = {data_n1, _e_3129};
    assign _e_3133 = _e_3115;
    assign __n1 = _e_3115[36:4];
    assign __n2 = _e_3115[3:1];
    assign _e_3132 = _e_3115[0];
    localparam[0:0] _e_4665 = 1;
    localparam[0:0] _e_4666 = 1;
    assign _e_4667 = !_e_3132;
    assign _e_4668 = _e_4665 && _e_4666;
    assign _e_4669 = _e_4668 && _e_4667;
    assign _e_3134 = {\array , \num_left };
    assign _e_3140 = _e_3115;
    assign _e_3137 = _e_3115[36:4];
    assign _e_3138 = _e_3115[3:1];
    assign __n3 = _e_3115[0];
    assign _e_4672 = _e_3137[32] == 1'd0;
    localparam[2:0] _e_4674 = 0;
    assign _e_4673 = _e_3138 == _e_4674;
    localparam[0:0] _e_4675 = 1;
    assign _e_4676 = _e_4672 && _e_4673;
    assign _e_4677 = _e_4676 && _e_4675;
    assign _e_3141 = {\array , \num_left };
    assign _e_3148 = _e_3115;
    assign _e_3145 = _e_3115[36:4];
    assign data_n2 = _e_3145[31:0];
    assign _e_3146 = _e_3115[3:1];
    assign __n4 = _e_3115[0];
    assign _e_4680 = _e_3145[32] == 1'd1;
    localparam[0:0] _e_4681 = 1;
    assign _e_4682 = _e_4680 && _e_4681;
    localparam[2:0] _e_4684 = 1;
    assign _e_4683 = _e_3146 == _e_4684;
    localparam[0:0] _e_4685 = 1;
    assign _e_4686 = _e_4682 && _e_4683;
    assign _e_4687 = _e_4686 && _e_4685;
    localparam[2:0] _e_3151 = 4;
    assign _e_3149 = {data_n2, _e_3151};
    assign _e_3155 = _e_3115;
    assign __n5 = _e_3115[36:4];
    assign __n6 = _e_3115[3:1];
    assign __n7 = _e_3115[0];
    localparam[0:0] _e_4689 = 1;
    localparam[0:0] _e_4690 = 1;
    localparam[0:0] _e_4691 = 1;
    assign _e_4692 = _e_4689 && _e_4690;
    assign _e_4693 = _e_4692 && _e_4691;
    assign _e_3158 = \array [31-:24];
    (* src = "build/libs/quickscope/src/main.spade:14,47" *)
    \std::undef::undef[1502]  undef_1(.output__(_e_3163));
    assign _e_3162 = {_e_3163};
    (* src = "build/libs/quickscope/src/main.spade:14,27" *)
    \std::array::impl_0::concat[1522]  concat_0(.self_i(_e_3158), .other_i(_e_3162), .output__(_e_3157));
    localparam[2:0] _e_3167 = 1;
    assign _e_3165 = \num_left  - _e_3167;
    assign _e_3164 = _e_3165[2:0];
    assign _e_3156 = {_e_3157, _e_3164};
    always_comb begin
        priority casez ({_e_4663, _e_4669, _e_4677, _e_4687, _e_4693})
            5'b1????: _e_3114 = _e_3127;
            5'b01???: _e_3114 = _e_3134;
            5'b001??: _e_3114 = _e_3141;
            5'b0001?: _e_3114 = _e_3149;
            5'b00001: _e_3114 = _e_3156;
            5'b?: _e_3114 = 35'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            _e_3108 <= _e_3111;
        end
        else begin
            _e_3108 <= _e_3114;
        end
    end
    assign \array  = _e_3108[34:3];
    assign \num_left  = _e_3108[2:0];
    localparam[2:0] _e_3173 = 0;
    assign _e_3171 = \num_left  == _e_3173;
    localparam[2:0] _e_3177 = 1;
    assign _e_3175 = \num_left  == _e_3177;
    assign _e_3178 = \ds_ready ;
    assign _e_3174 = _e_3175 && _e_3178;
    assign _e_3169 = _e_3171 || _e_3174;
    assign \ready_mut  = _e_3169;
    localparam[2:0] _e_4695 = 0;
    assign _e_4694 = \num_left  == _e_4695;
    assign _e_3186 = {1'd0, 8'bX};
    assign __n8 = \num_left ;
    localparam[0:0] _e_4696 = 1;
    localparam[1:0] _e_3191 = 0;
    assign _e_3189 = \array [_e_3191 * 8+:8];
    assign _e_3188 = {1'd1, _e_3189};
    always_comb begin
        priority casez ({_e_4694, _e_4696})
            2'b1?: _e_3182 = _e_3186;
            2'b01: _e_3182 = _e_3188;
            2'b?: _e_3182 = 9'dx;
        endcase
    end
    assign \ds_ready_mut  = _e_3192_mut;
    assign _e_3181 = {_e_3182};
    assign {_e_3192_mut} = _e_3181_mut;
    assign output__ = _e_3181;
    assign _e_3181_mut = input__;
endmodule

module \ready_valid::impl_17::map[1489]  (
        input[8:0] self_i, output self_o,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::map[1489]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::map[1489] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:75,22" *)
    logic[8:0] _e_1540;
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    logic[9:0] _e_1538;
    (* src = "build/libs/ready_valid/src/main.spade:76,20" *)
    logic _e_1544_mut;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic[9:0] _e_1537;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic _e_1537_mut;
    assign _e_1540 = \self [8:0];
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    \std::option::impl_12::map[1523]  map_0(.self_i(_e_1540), .output__(_e_1538));
    assign \self_mut  = _e_1544_mut;
    assign _e_1537 = {_e_1538};
    assign {_e_1544_mut} = _e_1537_mut;
    assign output__ = _e_1537;
    assign _e_1537_mut = input__;
endmodule

module \ready_valid::escape_byte::impl_14::escape_bytes[1490]  (
        input[9:0] self_i, output self_o,
        input clk_i,
        input rst_i,
        input[15:0] escapees_i,
        input[7:0] escape_prefix_i,
        output[8:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::escape_byte::impl_14::escape_bytes[1490]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::escape_byte::impl_14::escape_bytes[1490] );
        end
    end
    `endif
    logic[9:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[15:0] \escapees ;
    assign \escapees  = escapees_i;
    logic[7:0] \escape_prefix ;
    assign \escape_prefix  = escape_prefix_i;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_4697;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_4698_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_1186;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,40" *)
    logic _e_1186_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,13" *)
    logic \ds_ready ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:29,13" *)
    logic \ds_ready_inv_mut ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,49" *)
    logic[9:0] _e_1190;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,39" *)
    logic[19:0] _e_1188;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[19:0] _e_1198;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[8:0] \_ ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic[9:0] _e_1196;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,13" *)
    logic _e_1197;
    logic _e_4702;
    logic _e_4703;
    logic _e_4704;
    logic _e_4705;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,34" *)
    logic[8:0] _e_1200;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:33,33" *)
    logic[17:0] _e_1199;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[19:0] _e_1207;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[8:0] __n1;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic[9:0] _e_1205;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,17" *)
    logic[8:0] _e_1204;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,22" *)
    logic[7:0] \d ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,13" *)
    logic _e_1206;
    logic _e_4709;
    logic _e_4711;
    logic _e_4713;
    logic _e_4714;
    logic _e_4715;
    logic _e_4716;
    logic _e_4717;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,50" *)
    logic[8:0] _e_1209;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:34,49" *)
    logic[17:0] _e_1208;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[19:0] _e_1217;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[8:0] __n2;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic[9:0] _e_1215;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,17" *)
    logic[8:0] _e_1214;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,22" *)
    logic[7:0] d_n1;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,13" *)
    logic _e_1216;
    logic _e_4721;
    logic _e_4723;
    logic _e_4725;
    logic _e_4726;
    logic _e_4727;
    logic _e_4728;
    logic _e_4729;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,59" *)
    logic _e_1221;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,56" *)
    logic[7:0] _e_1220;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,51" *)
    logic[8:0] _e_1219;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,50" *)
    logic[17:0] _e_1218;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[19:0] _e_1232;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[8:0] _e_1229;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic[9:0] _e_1230;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,13" *)
    logic __n3;
    logic _e_4732;
    logic _e_4734;
    logic _e_4736;
    logic _e_4737;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,43" *)
    logic[8:0] _e_1234;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,49" *)
    logic[8:0] _e_1235;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:36,42" *)
    logic[17:0] _e_1233;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[19:0] _e_1241;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[8:0] _e_1236;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic[9:0] _e_1239;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,29" *)
    logic[8:0] _e_1238;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,34" *)
    logic[7:0] d_n2;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:37,13" *)
    logic __n4;
    logic _e_4740;
    logic _e_4742;
    logic _e_4744;
    logic _e_4746;
    logic _e_4747;
    logic _e_4749;
    logic _e_4750;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,18" *)
    logic[8:0] _e_1244;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,27" *)
    logic[8:0] _e_1246;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:38,17" *)
    logic[17:0] _e_1243;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[19:0] _e_1252;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[8:0] _e_1247;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic[9:0] _e_1250;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,29" *)
    logic[8:0] _e_1249;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,34" *)
    logic[7:0] d_n3;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:40,13" *)
    logic __n5;
    logic _e_4753;
    logic _e_4755;
    logic _e_4757;
    logic _e_4759;
    logic _e_4760;
    logic _e_4762;
    logic _e_4763;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,20" *)
    logic _e_1255;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,22" *)
    logic[8:0] _e_1260;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,43" *)
    logic[8:0] _e_1262;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:42,21" *)
    logic[17:0] _e_1259;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,22" *)
    logic[8:0] _e_1266;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,31" *)
    logic[8:0] _e_1268;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:44,21" *)
    logic[17:0] _e_1265;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,17" *)
    logic[17:0] _e_1254;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[19:0] _e_1273;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[8:0] _e_1270;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,14" *)
    logic[7:0] \c ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic[9:0] __n6;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:47,13" *)
    logic __n7;
    logic _e_4766;
    logic _e_4768;
    logic _e_4771;
    logic _e_4772;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,38" *)
    logic[7:0] _e_1279;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,23" *)
    logic[7:0] _e_1277;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,18" *)
    logic[8:0] _e_1276;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,46" *)
    logic[8:0] _e_1281;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,17" *)
    logic[17:0] _e_1275;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,33" *)
    logic[17:0] _e_1284;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,13" *)
    logic[8:0] \out ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:32,13" *)
    logic[8:0] \next_state ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:52,35" *)
    logic[8:0] _e_1288;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:52,18" *)
    reg[8:0] \state ;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,13" *)
    logic _e_1290_mut;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,33" *)
    logic[9:0] _e_1294;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic[9:0] _e_1300;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic[8:0] _e_1298;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:55,13" *)
    logic \ds ;
    logic _e_4775;
    logic _e_4777;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic[9:0] _e_1305;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic[8:0] _e_1303;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,14" *)
    logic[7:0] __n8;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:56,13" *)
    logic __n9;
    logic _e_4780;
    logic _e_4782;
    logic _e_4784;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:54,27" *)
    logic _e_1292;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:59,9" *)
    logic[8:0] _e_1307;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:59,9" *)
    logic _e_1307_mut;
    
    assign _e_4697 = _e_4698_mut;
    assign _e_1186 = {_e_4697};
    assign {_e_4698_mut} = _e_1186_mut;
    assign \ds_ready  = _e_1186;
    assign _e_1186_mut = \ds_ready_inv_mut ;
    assign _e_1190 = \self [9:0];
    assign _e_1188 = {\state , _e_1190, \ds_ready };
    assign _e_1198 = _e_1188;
    assign \_  = _e_1188[19:11];
    assign _e_1196 = _e_1188[10:1];
    assign _e_1197 = _e_1188[0];
    localparam[0:0] _e_4700 = 1;
    assign _e_4702 = _e_1196[9] == 1'd0;
    assign _e_4703 = !_e_1197;
    assign _e_4704 = _e_4700 && _e_4702;
    assign _e_4705 = _e_4704 && _e_4703;
    assign _e_1200 = {1'd0, 8'bX};
    assign _e_1199 = {_e_1200, \state };
    assign _e_1207 = _e_1188;
    assign __n1 = _e_1188[19:11];
    assign _e_1205 = _e_1188[10:1];
    assign _e_1204 = _e_1205[8:0];
    assign \d  = _e_1204[7:0];
    assign _e_1206 = _e_1188[0];
    localparam[0:0] _e_4707 = 1;
    assign _e_4709 = _e_1205[9] == 1'd1;
    assign _e_4711 = _e_1204[8] == 1'd1;
    localparam[0:0] _e_4712 = 1;
    assign _e_4713 = _e_4711 && _e_4712;
    assign _e_4714 = _e_4709 && _e_4713;
    assign _e_4715 = !_e_1206;
    assign _e_4716 = _e_4707 && _e_4714;
    assign _e_4717 = _e_4716 && _e_4715;
    assign _e_1209 = {1'd1, \d };
    assign _e_1208 = {_e_1209, \state };
    assign _e_1217 = _e_1188;
    assign __n2 = _e_1188[19:11];
    assign _e_1215 = _e_1188[10:1];
    assign _e_1214 = _e_1215[8:0];
    assign d_n1 = _e_1214[7:0];
    assign _e_1216 = _e_1188[0];
    localparam[0:0] _e_4719 = 1;
    assign _e_4721 = _e_1215[9] == 1'd1;
    assign _e_4723 = _e_1214[8] == 1'd0;
    localparam[0:0] _e_4724 = 1;
    assign _e_4725 = _e_4723 && _e_4724;
    assign _e_4726 = _e_4721 && _e_4725;
    assign _e_4727 = !_e_1216;
    assign _e_4728 = _e_4719 && _e_4726;
    assign _e_4729 = _e_4728 && _e_4727;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:35,59" *)
    \nstd::array::impl_35::contains[1474]  contains_0(.self_i(\escapees ), .needle_i(d_n1), .output__(_e_1221));
    assign _e_1220 = _e_1221 ? \escape_prefix  : d_n1;
    assign _e_1219 = {1'd1, _e_1220};
    assign _e_1218 = {_e_1219, \state };
    assign _e_1232 = _e_1188;
    assign _e_1229 = _e_1188[19:11];
    assign _e_1230 = _e_1188[10:1];
    assign __n3 = _e_1188[0];
    assign _e_4732 = _e_1229[8] == 1'd0;
    assign _e_4734 = _e_1230[9] == 1'd0;
    localparam[0:0] _e_4735 = 1;
    assign _e_4736 = _e_4732 && _e_4734;
    assign _e_4737 = _e_4736 && _e_4735;
    assign _e_1234 = {1'd0, 8'bX};
    assign _e_1235 = {1'd0, 8'bX};
    assign _e_1233 = {_e_1234, _e_1235};
    assign _e_1241 = _e_1188;
    assign _e_1236 = _e_1188[19:11];
    assign _e_1239 = _e_1188[10:1];
    assign _e_1238 = _e_1239[8:0];
    assign d_n2 = _e_1238[7:0];
    assign __n4 = _e_1188[0];
    assign _e_4740 = _e_1236[8] == 1'd0;
    assign _e_4742 = _e_1239[9] == 1'd1;
    assign _e_4744 = _e_1238[8] == 1'd1;
    localparam[0:0] _e_4745 = 1;
    assign _e_4746 = _e_4744 && _e_4745;
    assign _e_4747 = _e_4742 && _e_4746;
    localparam[0:0] _e_4748 = 1;
    assign _e_4749 = _e_4740 && _e_4747;
    assign _e_4750 = _e_4749 && _e_4748;
    assign _e_1244 = {1'd1, d_n2};
    assign _e_1246 = {1'd0, 8'bX};
    assign _e_1243 = {_e_1244, _e_1246};
    assign _e_1252 = _e_1188;
    assign _e_1247 = _e_1188[19:11];
    assign _e_1250 = _e_1188[10:1];
    assign _e_1249 = _e_1250[8:0];
    assign d_n3 = _e_1249[7:0];
    assign __n5 = _e_1188[0];
    assign _e_4753 = _e_1247[8] == 1'd0;
    assign _e_4755 = _e_1250[9] == 1'd1;
    assign _e_4757 = _e_1249[8] == 1'd0;
    localparam[0:0] _e_4758 = 1;
    assign _e_4759 = _e_4757 && _e_4758;
    assign _e_4760 = _e_4755 && _e_4759;
    localparam[0:0] _e_4761 = 1;
    assign _e_4762 = _e_4753 && _e_4760;
    assign _e_4763 = _e_4762 && _e_4761;
    (* src = "build/libs/ready_valid/src/escape_byte.spade:41,20" *)
    \nstd::array::impl_35::contains[1474]  contains_1(.self_i(\escapees ), .needle_i(d_n3), .output__(_e_1255));
    assign _e_1260 = {1'd1, \escape_prefix };
    assign _e_1262 = {1'd1, d_n3};
    assign _e_1259 = {_e_1260, _e_1262};
    assign _e_1266 = {1'd1, d_n3};
    assign _e_1268 = {1'd0, 8'bX};
    assign _e_1265 = {_e_1266, _e_1268};
    assign _e_1254 = _e_1255 ? _e_1259 : _e_1265;
    assign _e_1273 = _e_1188;
    assign _e_1270 = _e_1188[19:11];
    assign \c  = _e_1270[7:0];
    assign __n6 = _e_1188[10:1];
    assign __n7 = _e_1188[0];
    assign _e_4766 = _e_1270[8] == 1'd1;
    localparam[0:0] _e_4767 = 1;
    assign _e_4768 = _e_4766 && _e_4767;
    localparam[0:0] _e_4769 = 1;
    localparam[0:0] _e_4770 = 1;
    assign _e_4771 = _e_4768 && _e_4769;
    assign _e_4772 = _e_4771 && _e_4770;
    assign _e_1279 = {\c };
    (* src = "build/libs/ready_valid/src/escape_byte.spade:48,23" *)
    \quickscope::impl_31::call[1524]  call_0(.args_i(_e_1279), .output__(_e_1277));
    assign _e_1276 = {1'd1, _e_1277};
    assign _e_1281 = {1'd0, 8'bX};
    assign _e_1275 = {_e_1276, _e_1281};
    always_comb begin
        priority casez ({_e_4705, _e_4717, _e_4729, _e_4737, _e_4750, _e_4763, _e_4772})
            7'b1??????: _e_1284 = _e_1199;
            7'b01?????: _e_1284 = _e_1208;
            7'b001????: _e_1284 = _e_1218;
            7'b0001???: _e_1284 = _e_1233;
            7'b00001??: _e_1284 = _e_1243;
            7'b000001?: _e_1284 = _e_1254;
            7'b0000001: _e_1284 = _e_1275;
            7'b?: _e_1284 = 18'dx;
        endcase
    end
    assign \out  = _e_1284[17:9];
    assign \next_state  = _e_1284[8:0];
    assign _e_1288 = {1'd0, 8'bX};
    always @(posedge \clk ) begin
        if (\rst ) begin
            \state  <= _e_1288;
        end
        else begin
            \state  <= \next_state ;
        end
    end
    assign \self_mut  = _e_1290_mut;
    assign _e_1294 = {\state , \ds_ready };
    assign _e_1300 = _e_1294;
    assign _e_1298 = _e_1294[9:1];
    assign \ds  = _e_1294[0];
    assign _e_4775 = _e_1298[8] == 1'd0;
    localparam[0:0] _e_4776 = 1;
    assign _e_4777 = _e_4775 && _e_4776;
    assign _e_1305 = _e_1294;
    assign _e_1303 = _e_1294[9:1];
    assign __n8 = _e_1303[7:0];
    assign __n9 = _e_1294[0];
    assign _e_4780 = _e_1303[8] == 1'd1;
    localparam[0:0] _e_4781 = 1;
    assign _e_4782 = _e_4780 && _e_4781;
    localparam[0:0] _e_4783 = 1;
    assign _e_4784 = _e_4782 && _e_4783;
    localparam[0:0] _e_1306 = 0;
    always_comb begin
        priority casez ({_e_4777, _e_4784})
            2'b1?: _e_1292 = \ds ;
            2'b01: _e_1292 = _e_1306;
            2'b?: _e_1292 = 1'dx;
        endcase
    end
    assign _e_1290_mut = _e_1292;
    assign _e_1307 = {\out };
    assign {\ds_ready_inv_mut } = _e_1307_mut;
    assign output__ = _e_1307;
    assign _e_1307_mut = input__;
endmodule

module \std::array::impl_0::map[1491]  (
        input[2:0] self_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::map[1491]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::map[1491] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    logic[2:0] \result ;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    \std::array::std::array::impl_0::map::F[1525]  F_0(.self_i(\self ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \nstd::array::impl_32::fold[1492]  (
        input[2:0] self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::fold[1492]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::fold[1492] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    \nstd::array::nstd::array::impl_32::fold::F[1526]  F_0(.self_i(\self ), .init_i(\init ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::array::impl_0::map[1493]  (
        input[2:0] self_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::map[1493]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::map[1493] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    logic[2:0] \result ;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    \std::array::std::array::impl_0::map::F[1527]  F_0(.self_i(\self ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \nstd::array::impl_32::fold[1494]  (
        input[2:0] self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::fold[1494]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::fold[1494] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    \nstd::array::nstd::array::impl_32::fold::F[1528]  F_0(.self_i(\self ), .init_i(\init ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \nstd::option::impl_40::call[1495]  (
        input[7:0] args_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::option::impl_40::call[1495]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::option::impl_40::call[1495] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \state ;
    (* src = "build/libs/nstd/src/option.spade:22,19" *)
    logic[8:0] _e_3604;
    (* src = "build/libs/nstd/src/option.spade:22,13" *)
    logic[7:0] _e_3603;
    assign \state  = \args [7:0];
    localparam[7:0] _e_3606 = 1;
    assign _e_3604 = \state  + _e_3606;
    assign _e_3603 = _e_3604[7:0];
    assign output__ = _e_3603;
endmodule

module \std::conv::std::conv::flip_array::F[1496]  (
        input[15:0] in_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::std::conv::flip_array::F[1496]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::std::conv::flip_array::F[1496] );
        end
    end
    `endif
    logic[15:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    logic[7:0] _e_441;
    (* src = "<compiler dir>/stdlib/conv.spade:43,47" *)
    logic[7:0] _e_446;
    (* src = "<compiler dir>/stdlib/conv.spade:43,36" *)
    logic[7:0] _e_445;
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    logic[15:0] _e_440;
    assign _e_441 = \in [15-:8];
    assign _e_446 = \in [7-:8];
    (* src = "<compiler dir>/stdlib/conv.spade:43,36" *)
    \std::conv::flip_array[1529]  flip_array_0(.in_i(_e_446), .output__(_e_445));
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    \std::conv::concat_arrays[1530]  concat_arrays_0(.l_i(_e_441), .r_i(_e_445), .output__(_e_440));
    assign output__ = _e_440;
endmodule

module \std::conv::std::conv::flip_array::F[1497]  (
        input[23:0] in_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::std::conv::flip_array::F[1497]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::std::conv::flip_array::F[1497] );
        end
    end
    `endif
    logic[23:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    logic[7:0] _e_441;
    (* src = "<compiler dir>/stdlib/conv.spade:43,47" *)
    logic[15:0] _e_446;
    (* src = "<compiler dir>/stdlib/conv.spade:43,36" *)
    logic[15:0] _e_445;
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    logic[23:0] _e_440;
    assign _e_441 = \in [23-:8];
    assign _e_446 = \in [15-:16];
    (* src = "<compiler dir>/stdlib/conv.spade:43,36" *)
    \std::conv::flip_array[1460]  flip_array_0(.in_i(_e_446), .output__(_e_445));
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    \std::conv::concat_arrays[1531]  concat_arrays_0(.l_i(_e_441), .r_i(_e_445), .output__(_e_440));
    assign output__ = _e_440;
endmodule

module \std::conv::std::conv::flip_array::F[1498]  (
        input[31:0] in_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::std::conv::flip_array::F[1498]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::std::conv::flip_array::F[1498] );
        end
    end
    `endif
    logic[31:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    logic[7:0] _e_441;
    (* src = "<compiler dir>/stdlib/conv.spade:43,47" *)
    logic[23:0] _e_446;
    (* src = "<compiler dir>/stdlib/conv.spade:43,36" *)
    logic[23:0] _e_445;
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    logic[31:0] _e_440;
    assign _e_441 = \in [31-:8];
    assign _e_446 = \in [23-:24];
    (* src = "<compiler dir>/stdlib/conv.spade:43,36" *)
    \std::conv::flip_array[1461]  flip_array_0(.in_i(_e_446), .output__(_e_445));
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    \std::conv::concat_arrays[1532]  concat_arrays_0(.l_i(_e_441), .r_i(_e_445), .output__(_e_440));
    assign output__ = _e_440;
endmodule

module \ready_valid::impl_20::cdc_fifo_buffer[1499]  (
        input[16:0] self_i, output self_o,
        input write_clk_i,
        input write_rst_i,
        input read_clk_i,
        input read_rst_i,
        output[18:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_20::cdc_fifo_buffer[1499]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_20::cdc_fifo_buffer[1499] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic _e_4787;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic _e_4788_mut;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic \write_full ;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic \write_full_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:178,13" *)
    logic _e_1708_mut;
    (* src = "build/libs/ready_valid/src/main.spade:178,29" *)
    logic _e_1712;
    (* src = "build/libs/ready_valid/src/main.spade:178,27" *)
    logic _e_1710;
    (* src = "build/libs/ready_valid/src/main.spade:179,33" *)
    logic[16:0] _e_1716;
    (* src = "build/libs/ready_valid/src/main.spade:181,51" *)
    logic _e_1721_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    logic[16:0] _e_1727;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    logic _e_1727_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,13" *)
    logic[16:0] \data ;
    (* src = "build/libs/ready_valid/src/main.spade:179,13" *)
    logic \ready_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:186,19" *)
    logic _e_1729;
    (* src = "build/libs/ready_valid/src/main.spade:187,21" *)
    logic _e_1731;
    (* src = "build/libs/ready_valid/src/main.spade:188,19" *)
    logic[16:0] _e_1735;
    (* src = "build/libs/ready_valid/src/main.spade:188,19" *)
    logic _e_1735_mut;
    (* src = "build/libs/ready_valid/src/main.spade:185,9" *)
    logic[18:0] _e_1728;
    (* src = "build/libs/ready_valid/src/main.spade:185,9" *)
    logic _e_1728_mut;
    
    assign _e_4787 = _e_4788_mut;
    assign \write_full  = {_e_4787};
    assign {_e_4788_mut} = \write_full_mut ;
    assign \self_mut  = _e_1708_mut;
    assign _e_1712 = \write_full ;
    assign _e_1710 = !_e_1712;
    assign _e_1708_mut = _e_1710;
    assign _e_1716 = \self [16:0];
    assign \write_full_mut  = _e_1721_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    \ready_valid::option_ext::impl_22::into_rv_fifo[1533]  into_rv_fifo_0(.self_i(_e_1716), .write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .write_full_o(_e_1721_mut), .read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .output__(_e_1727), .input__(_e_1727_mut));
    assign \data  = _e_1727[16:0];
    assign _e_1727_mut = \ready_mut ;
    assign _e_1729 = \write_full ;
    (* src = "build/libs/ready_valid/src/main.spade:187,21" *)
    \std::option::impl_12::is_none[1534]  is_none_0(.self_i(\data ), .output__(_e_1731));
    assign _e_1735 = {\data };
    assign {\ready_mut } = _e_1735_mut;
    assign _e_1728 = {_e_1729, _e_1731, _e_1735};
    assign {_e_1735_mut} = _e_1728_mut;
    assign output__ = _e_1728;
    assign _e_1728_mut = input__;
endmodule

module \std::option::impl_12::map[1500]  (
        input[16:0] self_i,
        output[16:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::map[1500]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::map[1500] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:50,13" *)
    logic[15:0] \val ;
    logic _e_4790;
    logic _e_4792;
    (* src = "<compiler dir>/stdlib/option.spade:50,38" *)
    logic[15:0] _e_994;
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    logic[15:0] _e_992;
    (* src = "<compiler dir>/stdlib/option.spade:50,26" *)
    logic[16:0] _e_991;
    logic _e_4794;
    (* src = "<compiler dir>/stdlib/option.spade:51,21" *)
    logic[16:0] _e_997;
    (* src = "<compiler dir>/stdlib/option.spade:49,9" *)
    logic[16:0] _e_987;
    assign \val  = \self [15:0];
    assign _e_4790 = \self [16] == 1'd1;
    localparam[0:0] _e_4791 = 1;
    assign _e_4792 = _e_4790 && _e_4791;
    assign _e_994 = {\val };
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    \quickscope::impl_29::call[1535]  call_0(.args_i(_e_994), .output__(_e_992));
    assign _e_991 = {1'd1, _e_992};
    assign _e_4794 = \self [16] == 1'd0;
    assign _e_997 = {1'd0, 16'bX};
    always_comb begin
        priority casez ({_e_4792, _e_4794})
            2'b1?: _e_987 = _e_991;
            2'b01: _e_987 = _e_997;
            2'b?: _e_987 = 17'dx;
        endcase
    end
    assign output__ = _e_987;
endmodule

module \std::undef::undef[1501]  (
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::undef::undef[1501]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::undef::undef[1501] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/undef.spade:6,27" *)
    logic[16:0] \none ;
    logic[16:0] _e_1136;
    (* src = "<compiler dir>/stdlib/undef.spade:7,9" *)
    logic \_ ;
    (* src = "<compiler dir>/stdlib/undef.spade:7,9" *)
    logic[15:0] \result ;
    assign \none  = {1'd0, 16'bX};
    assign _e_1136 = \none ;
    assign \_  = _e_1136[16];
    assign \result  = _e_1136[15:0];
    assign output__ = \result ;
endmodule

module \std::undef::undef[1502]  (
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::undef::undef[1502]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::undef::undef[1502] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/undef.spade:6,27" *)
    logic[8:0] \none ;
    logic[8:0] _e_1136;
    (* src = "<compiler dir>/stdlib/undef.spade:7,9" *)
    logic \_ ;
    (* src = "<compiler dir>/stdlib/undef.spade:7,9" *)
    logic[7:0] \result ;
    assign \none  = {1'd0, 8'bX};
    assign _e_1136 = \none ;
    assign \_  = _e_1136[8];
    assign \result  = _e_1136[7:0];
    assign output__ = \result ;
endmodule

module \std::array::impl_0::concat[1503]  (
        input[7:0] self_i,
        input[7:0] other_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::concat[1503]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::concat[1503] );
        end
    end
    `endif
    logic[7:0] \self ;
    assign \self  = self_i;
    logic[7:0] \other ;
    assign \other  = other_i;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    logic[15:0] _e_74;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    \std::conv::concat_arrays[1530]  concat_arrays_0(.l_i(\self ), .r_i(\other ), .output__(_e_74));
    assign output__ = _e_74;
endmodule

module \std::option::impl_12::map[1504]  (
        input[8:0] self_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::map[1504]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::map[1504] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:50,13" *)
    logic[7:0] \val ;
    logic _e_4796;
    logic _e_4798;
    (* src = "<compiler dir>/stdlib/option.spade:50,38" *)
    logic[7:0] _e_994;
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    logic[8:0] _e_992;
    (* src = "<compiler dir>/stdlib/option.spade:50,26" *)
    logic[9:0] _e_991;
    logic _e_4800;
    (* src = "<compiler dir>/stdlib/option.spade:51,21" *)
    logic[9:0] _e_997;
    (* src = "<compiler dir>/stdlib/option.spade:49,9" *)
    logic[9:0] _e_987;
    assign \val  = \self [7:0];
    assign _e_4796 = \self [8] == 1'd1;
    localparam[0:0] _e_4797 = 1;
    assign _e_4798 = _e_4796 && _e_4797;
    assign _e_994 = {\val };
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    \quickscope::impl_30::call[1536]  call_0(.args_i(_e_994), .output__(_e_992));
    assign _e_991 = {1'd1, _e_992};
    assign _e_4800 = \self [8] == 1'd0;
    assign _e_997 = {1'd0, 9'bX};
    always_comb begin
        priority casez ({_e_4798, _e_4800})
            2'b1?: _e_987 = _e_991;
            2'b01: _e_987 = _e_997;
            2'b?: _e_987 = 10'dx;
        endcase
    end
    assign output__ = _e_987;
endmodule

module \quickscope::emit_once[1505]  (
        input clk_i,
        input rst_i,
        input[16:0] value_i,
        output[16:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::emit_once[1505]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::emit_once[1505] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[16:0] \value ;
    assign \value  = value_i;
    (* src = "build/libs/quickscope/src/main.spade:30,19" *)
    logic _e_4801;
    (* src = "build/libs/quickscope/src/main.spade:30,19" *)
    logic _e_4802_mut;
    (* src = "build/libs/quickscope/src/main.spade:30,19" *)
    logic \ds_ready ;
    (* src = "build/libs/quickscope/src/main.spade:30,19" *)
    logic \ds_ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:31,32" *)
    logic[16:0] _e_3200;
    (* src = "build/libs/quickscope/src/main.spade:31,57" *)
    logic _e_3204;
    (* src = "build/libs/quickscope/src/main.spade:31,46" *)
    logic[34:0] _e_3202;
    (* src = "build/libs/quickscope/src/main.spade:32,7" *)
    logic[34:0] _e_3212;
    (* src = "build/libs/quickscope/src/main.spade:32,7" *)
    logic[16:0] _e_3208;
    (* src = "build/libs/quickscope/src/main.spade:32,7" *)
    logic \_ ;
    (* src = "build/libs/quickscope/src/main.spade:32,7" *)
    logic[16:0] _e_3211;
    (* src = "build/libs/quickscope/src/main.spade:32,17" *)
    logic[15:0] \new_n0 ;
    logic _e_4805;
    logic _e_4808;
    logic _e_4810;
    logic _e_4811;
    logic _e_4812;
    (* src = "build/libs/quickscope/src/main.spade:32,31" *)
    logic[16:0] _e_3213;
    (* src = "build/libs/quickscope/src/main.spade:33,7" *)
    logic[34:0] _e_3218;
    (* src = "build/libs/quickscope/src/main.spade:33,7" *)
    logic[16:0] _e_3215;
    (* src = "build/libs/quickscope/src/main.spade:33,7" *)
    logic __n1;
    (* src = "build/libs/quickscope/src/main.spade:33,7" *)
    logic[16:0] _e_3217;
    logic _e_4815;
    logic _e_4818;
    logic _e_4819;
    logic _e_4820;
    (* src = "build/libs/quickscope/src/main.spade:33,26" *)
    logic[16:0] _e_3219;
    (* src = "build/libs/quickscope/src/main.spade:34,7" *)
    logic[34:0] _e_3224;
    (* src = "build/libs/quickscope/src/main.spade:34,7" *)
    logic[16:0] _e_3221;
    (* src = "build/libs/quickscope/src/main.spade:34,8" *)
    logic[15:0] value_n1;
    (* src = "build/libs/quickscope/src/main.spade:34,7" *)
    logic _e_3222;
    (* src = "build/libs/quickscope/src/main.spade:34,7" *)
    logic[16:0] _e_3223;
    logic _e_4823;
    logic _e_4825;
    logic _e_4828;
    logic _e_4829;
    logic _e_4830;
    (* src = "build/libs/quickscope/src/main.spade:34,36" *)
    logic[16:0] _e_3225;
    (* src = "build/libs/quickscope/src/main.spade:35,7" *)
    logic[34:0] _e_3231;
    (* src = "build/libs/quickscope/src/main.spade:35,7" *)
    logic[16:0] _e_3227;
    (* src = "build/libs/quickscope/src/main.spade:35,8" *)
    logic[15:0] value_n2;
    (* src = "build/libs/quickscope/src/main.spade:35,7" *)
    logic _e_3228;
    (* src = "build/libs/quickscope/src/main.spade:35,7" *)
    logic[16:0] _e_3230;
    (* src = "build/libs/quickscope/src/main.spade:35,27" *)
    logic[15:0] new_n1;
    logic _e_4833;
    logic _e_4835;
    logic _e_4838;
    logic _e_4840;
    logic _e_4841;
    logic _e_4842;
    (* src = "build/libs/quickscope/src/main.spade:35,41" *)
    logic[16:0] _e_3232;
    (* src = "build/libs/quickscope/src/main.spade:36,7" *)
    logic[34:0] _e_3238;
    (* src = "build/libs/quickscope/src/main.spade:36,7" *)
    logic[16:0] _e_3235;
    (* src = "build/libs/quickscope/src/main.spade:36,8" *)
    logic[15:0] value_n3;
    (* src = "build/libs/quickscope/src/main.spade:36,7" *)
    logic _e_3236;
    (* src = "build/libs/quickscope/src/main.spade:36,7" *)
    logic[16:0] __n2;
    logic _e_4845;
    logic _e_4847;
    logic _e_4848;
    logic _e_4850;
    logic _e_4851;
    (* src = "build/libs/quickscope/src/main.spade:36,34" *)
    logic[16:0] _e_3239;
    (* src = "build/libs/quickscope/src/main.spade:31,40" *)
    logic[16:0] _e_3201;
    (* src = "build/libs/quickscope/src/main.spade:31,13" *)
    reg[16:0] \to_emit ;
    (* src = "build/libs/quickscope/src/main.spade:39,17" *)
    logic _e_3243_mut;
    (* src = "build/libs/quickscope/src/main.spade:39,4" *)
    logic[16:0] _e_3240;
    (* src = "build/libs/quickscope/src/main.spade:39,4" *)
    logic _e_3240_mut;
    
    assign _e_4801 = _e_4802_mut;
    assign \ds_ready  = {_e_4801};
    assign {_e_4802_mut} = \ds_ready_mut ;
    assign _e_3200 = {1'd0, 16'bX};
    assign _e_3204 = \ds_ready ;
    assign _e_3202 = {\to_emit , _e_3204, \value };
    assign _e_3212 = _e_3202;
    assign _e_3208 = _e_3202[34:18];
    assign \_  = _e_3202[17];
    assign _e_3211 = _e_3202[16:0];
    assign \new_n0  = _e_3211[15:0];
    assign _e_4805 = _e_3208[16] == 1'd0;
    localparam[0:0] _e_4806 = 1;
    assign _e_4808 = _e_3211[16] == 1'd1;
    localparam[0:0] _e_4809 = 1;
    assign _e_4810 = _e_4808 && _e_4809;
    assign _e_4811 = _e_4805 && _e_4806;
    assign _e_4812 = _e_4811 && _e_4810;
    assign _e_3213 = {1'd1, \new_n0 };
    assign _e_3218 = _e_3202;
    assign _e_3215 = _e_3202[34:18];
    assign __n1 = _e_3202[17];
    assign _e_3217 = _e_3202[16:0];
    assign _e_4815 = _e_3215[16] == 1'd0;
    localparam[0:0] _e_4816 = 1;
    assign _e_4818 = _e_3217[16] == 1'd0;
    assign _e_4819 = _e_4815 && _e_4816;
    assign _e_4820 = _e_4819 && _e_4818;
    assign _e_3219 = {1'd0, 16'bX};
    assign _e_3224 = _e_3202;
    assign _e_3221 = _e_3202[34:18];
    assign value_n1 = _e_3221[15:0];
    assign _e_3222 = _e_3202[17];
    assign _e_3223 = _e_3202[16:0];
    assign _e_4823 = _e_3221[16] == 1'd1;
    localparam[0:0] _e_4824 = 1;
    assign _e_4825 = _e_4823 && _e_4824;
    assign _e_4828 = _e_3223[16] == 1'd0;
    assign _e_4829 = _e_4825 && _e_3222;
    assign _e_4830 = _e_4829 && _e_4828;
    assign _e_3225 = {1'd0, 16'bX};
    assign _e_3231 = _e_3202;
    assign _e_3227 = _e_3202[34:18];
    assign value_n2 = _e_3227[15:0];
    assign _e_3228 = _e_3202[17];
    assign _e_3230 = _e_3202[16:0];
    assign new_n1 = _e_3230[15:0];
    assign _e_4833 = _e_3227[16] == 1'd1;
    localparam[0:0] _e_4834 = 1;
    assign _e_4835 = _e_4833 && _e_4834;
    assign _e_4838 = _e_3230[16] == 1'd1;
    localparam[0:0] _e_4839 = 1;
    assign _e_4840 = _e_4838 && _e_4839;
    assign _e_4841 = _e_4835 && _e_3228;
    assign _e_4842 = _e_4841 && _e_4840;
    assign _e_3232 = {1'd1, new_n1};
    assign _e_3238 = _e_3202;
    assign _e_3235 = _e_3202[34:18];
    assign value_n3 = _e_3235[15:0];
    assign _e_3236 = _e_3202[17];
    assign __n2 = _e_3202[16:0];
    assign _e_4845 = _e_3235[16] == 1'd1;
    localparam[0:0] _e_4846 = 1;
    assign _e_4847 = _e_4845 && _e_4846;
    assign _e_4848 = !_e_3236;
    localparam[0:0] _e_4849 = 1;
    assign _e_4850 = _e_4847 && _e_4848;
    assign _e_4851 = _e_4850 && _e_4849;
    assign _e_3239 = {1'd0, 16'bX};
    always_comb begin
        priority casez ({_e_4812, _e_4820, _e_4830, _e_4842, _e_4851})
            5'b1????: _e_3201 = _e_3213;
            5'b01???: _e_3201 = _e_3219;
            5'b001??: _e_3201 = _e_3225;
            5'b0001?: _e_3201 = _e_3232;
            5'b00001: _e_3201 = _e_3239;
            5'b?: _e_3201 = 17'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \to_emit  <= _e_3200;
        end
        else begin
            \to_emit  <= _e_3201;
        end
    end
    assign \ds_ready_mut  = _e_3243_mut;
    assign _e_3240 = {\to_emit };
    assign {_e_3243_mut} = _e_3240_mut;
    assign output__ = _e_3240;
    assign _e_3240_mut = input__;
endmodule

module \ready_valid::impl_17::map[1506]  (
        input[8:0] self_i, output self_o,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::map[1506]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::map[1506] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:75,22" *)
    logic[8:0] _e_1540;
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    logic[9:0] _e_1538;
    (* src = "build/libs/ready_valid/src/main.spade:76,20" *)
    logic _e_1544_mut;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic[9:0] _e_1537;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic _e_1537_mut;
    assign _e_1540 = \self [8:0];
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    \std::option::impl_12::map[1537]  map_0(.self_i(_e_1540), .output__(_e_1538));
    assign \self_mut  = _e_1544_mut;
    assign _e_1537 = {_e_1538};
    assign {_e_1544_mut} = _e_1537_mut;
    assign output__ = _e_1537;
    assign _e_1537_mut = input__;
endmodule

module \std::option::impl_12::is_some[1507]  (
        input[9:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_some[1507]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_some[1507] );
        end
    end
    `endif
    logic[9:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:9,13" *)
    logic[8:0] \_ ;
    logic _e_4853;
    logic _e_4855;
    logic _e_4857;
    (* src = "<compiler dir>/stdlib/option.spade:8,9" *)
    logic _e_959;
    assign \_  = \self [8:0];
    assign _e_4853 = \self [9] == 1'd1;
    localparam[0:0] _e_4854 = 1;
    assign _e_4855 = _e_4853 && _e_4854;
    localparam[0:0] _e_963 = 1;
    assign _e_4857 = \self [9] == 1'd0;
    localparam[0:0] _e_965 = 0;
    always_comb begin
        priority casez ({_e_4855, _e_4857})
            2'b1?: _e_959 = _e_963;
            2'b01: _e_959 = _e_965;
            2'b?: _e_959 = 1'dx;
        endcase
    end
    assign output__ = _e_959;
endmodule

module \quickscope::emit_once[1508]  (
        input clk_i,
        input rst_i,
        input[24:0] value_i,
        output[24:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::emit_once[1508]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::emit_once[1508] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[24:0] \value ;
    assign \value  = value_i;
    (* src = "build/libs/quickscope/src/main.spade:30,19" *)
    logic _e_4858;
    (* src = "build/libs/quickscope/src/main.spade:30,19" *)
    logic _e_4859_mut;
    (* src = "build/libs/quickscope/src/main.spade:30,19" *)
    logic \ds_ready ;
    (* src = "build/libs/quickscope/src/main.spade:30,19" *)
    logic \ds_ready_mut ;
    (* src = "build/libs/quickscope/src/main.spade:31,32" *)
    logic[24:0] _e_3200;
    (* src = "build/libs/quickscope/src/main.spade:31,57" *)
    logic _e_3204;
    (* src = "build/libs/quickscope/src/main.spade:31,46" *)
    logic[50:0] _e_3202;
    (* src = "build/libs/quickscope/src/main.spade:32,7" *)
    logic[50:0] _e_3212;
    (* src = "build/libs/quickscope/src/main.spade:32,7" *)
    logic[24:0] _e_3208;
    (* src = "build/libs/quickscope/src/main.spade:32,7" *)
    logic \_ ;
    (* src = "build/libs/quickscope/src/main.spade:32,7" *)
    logic[24:0] _e_3211;
    (* src = "build/libs/quickscope/src/main.spade:32,17" *)
    logic[23:0] \new_n0 ;
    logic _e_4862;
    logic _e_4865;
    logic _e_4867;
    logic _e_4868;
    logic _e_4869;
    (* src = "build/libs/quickscope/src/main.spade:32,31" *)
    logic[24:0] _e_3213;
    (* src = "build/libs/quickscope/src/main.spade:33,7" *)
    logic[50:0] _e_3218;
    (* src = "build/libs/quickscope/src/main.spade:33,7" *)
    logic[24:0] _e_3215;
    (* src = "build/libs/quickscope/src/main.spade:33,7" *)
    logic __n1;
    (* src = "build/libs/quickscope/src/main.spade:33,7" *)
    logic[24:0] _e_3217;
    logic _e_4872;
    logic _e_4875;
    logic _e_4876;
    logic _e_4877;
    (* src = "build/libs/quickscope/src/main.spade:33,26" *)
    logic[24:0] _e_3219;
    (* src = "build/libs/quickscope/src/main.spade:34,7" *)
    logic[50:0] _e_3224;
    (* src = "build/libs/quickscope/src/main.spade:34,7" *)
    logic[24:0] _e_3221;
    (* src = "build/libs/quickscope/src/main.spade:34,8" *)
    logic[23:0] value_n1;
    (* src = "build/libs/quickscope/src/main.spade:34,7" *)
    logic _e_3222;
    (* src = "build/libs/quickscope/src/main.spade:34,7" *)
    logic[24:0] _e_3223;
    logic _e_4880;
    logic _e_4882;
    logic _e_4885;
    logic _e_4886;
    logic _e_4887;
    (* src = "build/libs/quickscope/src/main.spade:34,36" *)
    logic[24:0] _e_3225;
    (* src = "build/libs/quickscope/src/main.spade:35,7" *)
    logic[50:0] _e_3231;
    (* src = "build/libs/quickscope/src/main.spade:35,7" *)
    logic[24:0] _e_3227;
    (* src = "build/libs/quickscope/src/main.spade:35,8" *)
    logic[23:0] value_n2;
    (* src = "build/libs/quickscope/src/main.spade:35,7" *)
    logic _e_3228;
    (* src = "build/libs/quickscope/src/main.spade:35,7" *)
    logic[24:0] _e_3230;
    (* src = "build/libs/quickscope/src/main.spade:35,27" *)
    logic[23:0] new_n1;
    logic _e_4890;
    logic _e_4892;
    logic _e_4895;
    logic _e_4897;
    logic _e_4898;
    logic _e_4899;
    (* src = "build/libs/quickscope/src/main.spade:35,41" *)
    logic[24:0] _e_3232;
    (* src = "build/libs/quickscope/src/main.spade:36,7" *)
    logic[50:0] _e_3238;
    (* src = "build/libs/quickscope/src/main.spade:36,7" *)
    logic[24:0] _e_3235;
    (* src = "build/libs/quickscope/src/main.spade:36,8" *)
    logic[23:0] value_n3;
    (* src = "build/libs/quickscope/src/main.spade:36,7" *)
    logic _e_3236;
    (* src = "build/libs/quickscope/src/main.spade:36,7" *)
    logic[24:0] __n2;
    logic _e_4902;
    logic _e_4904;
    logic _e_4905;
    logic _e_4907;
    logic _e_4908;
    (* src = "build/libs/quickscope/src/main.spade:36,34" *)
    logic[24:0] _e_3239;
    (* src = "build/libs/quickscope/src/main.spade:31,40" *)
    logic[24:0] _e_3201;
    (* src = "build/libs/quickscope/src/main.spade:31,13" *)
    reg[24:0] \to_emit ;
    (* src = "build/libs/quickscope/src/main.spade:39,17" *)
    logic _e_3243_mut;
    (* src = "build/libs/quickscope/src/main.spade:39,4" *)
    logic[24:0] _e_3240;
    (* src = "build/libs/quickscope/src/main.spade:39,4" *)
    logic _e_3240_mut;
    
    assign _e_4858 = _e_4859_mut;
    assign \ds_ready  = {_e_4858};
    assign {_e_4859_mut} = \ds_ready_mut ;
    assign _e_3200 = {1'd0, 24'bX};
    assign _e_3204 = \ds_ready ;
    assign _e_3202 = {\to_emit , _e_3204, \value };
    assign _e_3212 = _e_3202;
    assign _e_3208 = _e_3202[50:26];
    assign \_  = _e_3202[25];
    assign _e_3211 = _e_3202[24:0];
    assign \new_n0  = _e_3211[23:0];
    assign _e_4862 = _e_3208[24] == 1'd0;
    localparam[0:0] _e_4863 = 1;
    assign _e_4865 = _e_3211[24] == 1'd1;
    localparam[0:0] _e_4866 = 1;
    assign _e_4867 = _e_4865 && _e_4866;
    assign _e_4868 = _e_4862 && _e_4863;
    assign _e_4869 = _e_4868 && _e_4867;
    assign _e_3213 = {1'd1, \new_n0 };
    assign _e_3218 = _e_3202;
    assign _e_3215 = _e_3202[50:26];
    assign __n1 = _e_3202[25];
    assign _e_3217 = _e_3202[24:0];
    assign _e_4872 = _e_3215[24] == 1'd0;
    localparam[0:0] _e_4873 = 1;
    assign _e_4875 = _e_3217[24] == 1'd0;
    assign _e_4876 = _e_4872 && _e_4873;
    assign _e_4877 = _e_4876 && _e_4875;
    assign _e_3219 = {1'd0, 24'bX};
    assign _e_3224 = _e_3202;
    assign _e_3221 = _e_3202[50:26];
    assign value_n1 = _e_3221[23:0];
    assign _e_3222 = _e_3202[25];
    assign _e_3223 = _e_3202[24:0];
    assign _e_4880 = _e_3221[24] == 1'd1;
    localparam[0:0] _e_4881 = 1;
    assign _e_4882 = _e_4880 && _e_4881;
    assign _e_4885 = _e_3223[24] == 1'd0;
    assign _e_4886 = _e_4882 && _e_3222;
    assign _e_4887 = _e_4886 && _e_4885;
    assign _e_3225 = {1'd0, 24'bX};
    assign _e_3231 = _e_3202;
    assign _e_3227 = _e_3202[50:26];
    assign value_n2 = _e_3227[23:0];
    assign _e_3228 = _e_3202[25];
    assign _e_3230 = _e_3202[24:0];
    assign new_n1 = _e_3230[23:0];
    assign _e_4890 = _e_3227[24] == 1'd1;
    localparam[0:0] _e_4891 = 1;
    assign _e_4892 = _e_4890 && _e_4891;
    assign _e_4895 = _e_3230[24] == 1'd1;
    localparam[0:0] _e_4896 = 1;
    assign _e_4897 = _e_4895 && _e_4896;
    assign _e_4898 = _e_4892 && _e_3228;
    assign _e_4899 = _e_4898 && _e_4897;
    assign _e_3232 = {1'd1, new_n1};
    assign _e_3238 = _e_3202;
    assign _e_3235 = _e_3202[50:26];
    assign value_n3 = _e_3235[23:0];
    assign _e_3236 = _e_3202[25];
    assign __n2 = _e_3202[24:0];
    assign _e_4902 = _e_3235[24] == 1'd1;
    localparam[0:0] _e_4903 = 1;
    assign _e_4904 = _e_4902 && _e_4903;
    assign _e_4905 = !_e_3236;
    localparam[0:0] _e_4906 = 1;
    assign _e_4907 = _e_4904 && _e_4905;
    assign _e_4908 = _e_4907 && _e_4906;
    assign _e_3239 = {1'd0, 24'bX};
    always_comb begin
        priority casez ({_e_4869, _e_4877, _e_4887, _e_4899, _e_4908})
            5'b1????: _e_3201 = _e_3213;
            5'b01???: _e_3201 = _e_3219;
            5'b001??: _e_3201 = _e_3225;
            5'b0001?: _e_3201 = _e_3232;
            5'b00001: _e_3201 = _e_3239;
            5'b?: _e_3201 = 25'dx;
        endcase
    end
    always @(posedge \clk ) begin
        if (\rst ) begin
            \to_emit  <= _e_3200;
        end
        else begin
            \to_emit  <= _e_3201;
        end
    end
    assign \ds_ready_mut  = _e_3243_mut;
    assign _e_3240 = {\to_emit };
    assign {_e_3243_mut} = _e_3240_mut;
    assign output__ = _e_3240;
    assign _e_3240_mut = input__;
endmodule

module \ready_valid::impl_17::map[1509]  (
        input[8:0] self_i, output self_o,
        output[9:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_17::map[1509]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_17::map[1509] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:75,22" *)
    logic[8:0] _e_1540;
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    logic[9:0] _e_1538;
    (* src = "build/libs/ready_valid/src/main.spade:76,20" *)
    logic _e_1544_mut;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic[9:0] _e_1537;
    (* src = "build/libs/ready_valid/src/main.spade:74,9" *)
    logic _e_1537_mut;
    assign _e_1540 = \self [8:0];
    (* src = "build/libs/ready_valid/src/main.spade:75,20" *)
    \std::option::impl_12::map[1538]  map_0(.self_i(_e_1540), .output__(_e_1538));
    assign \self_mut  = _e_1544_mut;
    assign _e_1537 = {_e_1538};
    assign {_e_1544_mut} = _e_1537_mut;
    assign output__ = _e_1537;
    assign _e_1537_mut = input__;
endmodule

module \quickscope::impl_31::call[1510]  (
        input[7:0] args_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_31::call[1510]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_31::call[1510] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/quickscope/src/main.spade:91,32" *)
    logic[7:0] _e_3378;
    assign \byte  = \args [7:0];
    localparam[7:0] _e_3380 = 128;
    assign _e_3378 = \byte  ^ _e_3380;
    assign output__ = _e_3378;
endmodule

module \nstd::array::nstd::array::impl_35::contains::F[1511]  (
        input[15:0] self_i,
        input[7:0] needle_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_35::contains::F[1511]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_35::contains::F[1511] );
        end
    end
    `endif
    logic[15:0] \self ;
    assign \self  = self_i;
    logic[7:0] \needle ;
    assign \needle  = needle_i;
    (* src = "build/libs/nstd/src/array.spade:52,13" *)
    logic[7:0] _e_3500;
    (* src = "build/libs/nstd/src/array.spade:52,13" *)
    logic _e_3499;
    (* src = "build/libs/nstd/src/array.spade:52,34" *)
    logic[7:0] _e_3505;
    (* src = "build/libs/nstd/src/array.spade:52,34" *)
    logic _e_3504;
    (* src = "build/libs/nstd/src/array.spade:52,13" *)
    logic _e_3498;
    localparam[0:0] _e_3502 = 0;
    assign _e_3500 = \self [_e_3502 * 8+:8];
    assign _e_3499 = _e_3500 == \needle ;
    assign _e_3505 = \self [15-:8];
    (* src = "build/libs/nstd/src/array.spade:52,34" *)
    \nstd::array::impl_35::contains[1539]  contains_0(.self_i(_e_3505), .needle_i(\needle ), .output__(_e_3504));
    assign _e_3498 = _e_3499 || _e_3504;
    assign output__ = _e_3498;
endmodule

module \std::option::impl_12::is_some[1512]  (
        input[16:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_some[1512]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_some[1512] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:9,13" *)
    logic[15:0] \_ ;
    logic _e_4912;
    logic _e_4914;
    logic _e_4916;
    (* src = "<compiler dir>/stdlib/option.spade:8,9" *)
    logic _e_959;
    assign \_  = \self [15:0];
    assign _e_4912 = \self [16] == 1'd1;
    localparam[0:0] _e_4913 = 1;
    assign _e_4914 = _e_4912 && _e_4913;
    localparam[0:0] _e_963 = 1;
    assign _e_4916 = \self [16] == 1'd0;
    localparam[0:0] _e_965 = 0;
    always_comb begin
        priority casez ({_e_4914, _e_4916})
            2'b1?: _e_959 = _e_963;
            2'b01: _e_959 = _e_965;
            2'b?: _e_959 = 1'dx;
        endcase
    end
    assign output__ = _e_959;
endmodule

module \ready_valid::impl_20::cdc_fifo_buffer[1513]  (
        input[24:0] self_i, output self_o,
        input write_clk_i,
        input write_rst_i,
        input read_clk_i,
        input read_rst_i,
        output[26:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_20::cdc_fifo_buffer[1513]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_20::cdc_fifo_buffer[1513] );
        end
    end
    `endif
    logic[24:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic _e_4917;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic _e_4918_mut;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic \write_full ;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic \write_full_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:178,13" *)
    logic _e_1708_mut;
    (* src = "build/libs/ready_valid/src/main.spade:178,29" *)
    logic _e_1712;
    (* src = "build/libs/ready_valid/src/main.spade:178,27" *)
    logic _e_1710;
    (* src = "build/libs/ready_valid/src/main.spade:179,33" *)
    logic[24:0] _e_1716;
    (* src = "build/libs/ready_valid/src/main.spade:181,51" *)
    logic _e_1721_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    logic[24:0] _e_1727;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    logic _e_1727_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,13" *)
    logic[24:0] \data ;
    (* src = "build/libs/ready_valid/src/main.spade:179,13" *)
    logic \ready_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:186,19" *)
    logic _e_1729;
    (* src = "build/libs/ready_valid/src/main.spade:187,21" *)
    logic _e_1731;
    (* src = "build/libs/ready_valid/src/main.spade:188,19" *)
    logic[24:0] _e_1735;
    (* src = "build/libs/ready_valid/src/main.spade:188,19" *)
    logic _e_1735_mut;
    (* src = "build/libs/ready_valid/src/main.spade:185,9" *)
    logic[26:0] _e_1728;
    (* src = "build/libs/ready_valid/src/main.spade:185,9" *)
    logic _e_1728_mut;
    
    assign _e_4917 = _e_4918_mut;
    assign \write_full  = {_e_4917};
    assign {_e_4918_mut} = \write_full_mut ;
    assign \self_mut  = _e_1708_mut;
    assign _e_1712 = \write_full ;
    assign _e_1710 = !_e_1712;
    assign _e_1708_mut = _e_1710;
    assign _e_1716 = \self [24:0];
    assign \write_full_mut  = _e_1721_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    \ready_valid::option_ext::impl_22::into_rv_fifo[1540]  into_rv_fifo_0(.self_i(_e_1716), .write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .write_full_o(_e_1721_mut), .read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .output__(_e_1727), .input__(_e_1727_mut));
    assign \data  = _e_1727[24:0];
    assign _e_1727_mut = \ready_mut ;
    assign _e_1729 = \write_full ;
    (* src = "build/libs/ready_valid/src/main.spade:187,21" *)
    \std::option::impl_12::is_none[1541]  is_none_0(.self_i(\data ), .output__(_e_1731));
    assign _e_1735 = {\data };
    assign {\ready_mut } = _e_1735_mut;
    assign _e_1728 = {_e_1729, _e_1731, _e_1735};
    assign {_e_1735_mut} = _e_1728_mut;
    assign output__ = _e_1728;
    assign _e_1728_mut = input__;
endmodule

module \std::option::impl_12::map[1514]  (
        input[24:0] self_i,
        output[24:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::map[1514]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::map[1514] );
        end
    end
    `endif
    logic[24:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:50,13" *)
    logic[23:0] \val ;
    logic _e_4920;
    logic _e_4922;
    (* src = "<compiler dir>/stdlib/option.spade:50,38" *)
    logic[23:0] _e_994;
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    logic[23:0] _e_992;
    (* src = "<compiler dir>/stdlib/option.spade:50,26" *)
    logic[24:0] _e_991;
    logic _e_4924;
    (* src = "<compiler dir>/stdlib/option.spade:51,21" *)
    logic[24:0] _e_997;
    (* src = "<compiler dir>/stdlib/option.spade:49,9" *)
    logic[24:0] _e_987;
    assign \val  = \self [23:0];
    assign _e_4920 = \self [24] == 1'd1;
    localparam[0:0] _e_4921 = 1;
    assign _e_4922 = _e_4920 && _e_4921;
    assign _e_994 = {\val };
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    \quickscope::impl_29::call[1542]  call_0(.args_i(_e_994), .output__(_e_992));
    assign _e_991 = {1'd1, _e_992};
    assign _e_4924 = \self [24] == 1'd0;
    assign _e_997 = {1'd0, 24'bX};
    always_comb begin
        priority casez ({_e_4922, _e_4924})
            2'b1?: _e_987 = _e_991;
            2'b01: _e_987 = _e_997;
            2'b?: _e_987 = 25'dx;
        endcase
    end
    assign output__ = _e_987;
endmodule

module \std::undef::undef[1515]  (
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::undef::undef[1515]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::undef::undef[1515] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/undef.spade:6,27" *)
    logic[24:0] \none ;
    logic[24:0] _e_1136;
    (* src = "<compiler dir>/stdlib/undef.spade:7,9" *)
    logic \_ ;
    (* src = "<compiler dir>/stdlib/undef.spade:7,9" *)
    logic[23:0] \result ;
    assign \none  = {1'd0, 24'bX};
    assign _e_1136 = \none ;
    assign \_  = _e_1136[24];
    assign \result  = _e_1136[23:0];
    assign output__ = \result ;
endmodule

module \std::array::impl_0::concat[1516]  (
        input[15:0] self_i,
        input[7:0] other_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::concat[1516]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::concat[1516] );
        end
    end
    `endif
    logic[15:0] \self ;
    assign \self  = self_i;
    logic[7:0] \other ;
    assign \other  = other_i;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    logic[23:0] _e_74;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    \std::conv::concat_arrays[1543]  concat_arrays_0(.l_i(\self ), .r_i(\other ), .output__(_e_74));
    assign output__ = _e_74;
endmodule

module \std::option::impl_12::map[1517]  (
        input[8:0] self_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::map[1517]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::map[1517] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:50,13" *)
    logic[7:0] \val ;
    logic _e_4926;
    logic _e_4928;
    (* src = "<compiler dir>/stdlib/option.spade:50,38" *)
    logic[7:0] _e_994;
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    logic[8:0] _e_992;
    (* src = "<compiler dir>/stdlib/option.spade:50,26" *)
    logic[9:0] _e_991;
    logic _e_4930;
    (* src = "<compiler dir>/stdlib/option.spade:51,21" *)
    logic[9:0] _e_997;
    (* src = "<compiler dir>/stdlib/option.spade:49,9" *)
    logic[9:0] _e_987;
    assign \val  = \self [7:0];
    assign _e_4926 = \self [8] == 1'd1;
    localparam[0:0] _e_4927 = 1;
    assign _e_4928 = _e_4926 && _e_4927;
    assign _e_994 = {\val };
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    \quickscope::impl_30::call[1544]  call_0(.args_i(_e_994), .output__(_e_992));
    assign _e_991 = {1'd1, _e_992};
    assign _e_4930 = \self [8] == 1'd0;
    assign _e_997 = {1'd0, 9'bX};
    always_comb begin
        priority casez ({_e_4928, _e_4930})
            2'b1?: _e_987 = _e_991;
            2'b01: _e_987 = _e_997;
            2'b?: _e_987 = 10'dx;
        endcase
    end
    assign output__ = _e_987;
endmodule

module \quickscope::impl_31::call[1518]  (
        input[7:0] args_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_31::call[1518]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_31::call[1518] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/quickscope/src/main.spade:91,32" *)
    logic[7:0] _e_3378;
    assign \byte  = \args [7:0];
    localparam[7:0] _e_3380 = 128;
    assign _e_3378 = \byte  ^ _e_3380;
    assign output__ = _e_3378;
endmodule

module \ready_valid::impl_20::cdc_fifo_buffer[1519]  (
        input[32:0] self_i, output self_o,
        input write_clk_i,
        input write_rst_i,
        input read_clk_i,
        input read_rst_i,
        output[34:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::impl_20::cdc_fifo_buffer[1519]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::impl_20::cdc_fifo_buffer[1519] );
        end
    end
    `endif
    logic[32:0] \self ;
    assign \self  = self_i;
    logic \self_mut ;
    assign self_o = \self_mut ;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic _e_4933;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic _e_4934_mut;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic \write_full ;
    (* src = "build/libs/ready_valid/src/main.spade:177,26" *)
    logic \write_full_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:178,13" *)
    logic _e_1708_mut;
    (* src = "build/libs/ready_valid/src/main.spade:178,29" *)
    logic _e_1712;
    (* src = "build/libs/ready_valid/src/main.spade:178,27" *)
    logic _e_1710;
    (* src = "build/libs/ready_valid/src/main.spade:179,33" *)
    logic[32:0] _e_1716;
    (* src = "build/libs/ready_valid/src/main.spade:181,51" *)
    logic _e_1721_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    logic[32:0] _e_1727;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    logic _e_1727_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,13" *)
    logic[32:0] \data ;
    (* src = "build/libs/ready_valid/src/main.spade:179,13" *)
    logic \ready_mut ;
    (* src = "build/libs/ready_valid/src/main.spade:186,19" *)
    logic _e_1729;
    (* src = "build/libs/ready_valid/src/main.spade:187,21" *)
    logic _e_1731;
    (* src = "build/libs/ready_valid/src/main.spade:188,19" *)
    logic[32:0] _e_1735;
    (* src = "build/libs/ready_valid/src/main.spade:188,19" *)
    logic _e_1735_mut;
    (* src = "build/libs/ready_valid/src/main.spade:185,9" *)
    logic[34:0] _e_1728;
    (* src = "build/libs/ready_valid/src/main.spade:185,9" *)
    logic _e_1728_mut;
    
    assign _e_4933 = _e_4934_mut;
    assign \write_full  = {_e_4933};
    assign {_e_4934_mut} = \write_full_mut ;
    assign \self_mut  = _e_1708_mut;
    assign _e_1712 = \write_full ;
    assign _e_1710 = !_e_1712;
    assign _e_1708_mut = _e_1710;
    assign _e_1716 = \self [32:0];
    assign \write_full_mut  = _e_1721_mut;
    (* src = "build/libs/ready_valid/src/main.spade:179,31" *)
    \ready_valid::option_ext::impl_22::into_rv_fifo[1545]  into_rv_fifo_0(.self_i(_e_1716), .write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .write_full_o(_e_1721_mut), .read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .output__(_e_1727), .input__(_e_1727_mut));
    assign \data  = _e_1727[32:0];
    assign _e_1727_mut = \ready_mut ;
    assign _e_1729 = \write_full ;
    (* src = "build/libs/ready_valid/src/main.spade:187,21" *)
    \std::option::impl_12::is_none[1546]  is_none_0(.self_i(\data ), .output__(_e_1731));
    assign _e_1735 = {\data };
    assign {\ready_mut } = _e_1735_mut;
    assign _e_1728 = {_e_1729, _e_1731, _e_1735};
    assign {_e_1735_mut} = _e_1728_mut;
    assign output__ = _e_1728;
    assign _e_1728_mut = input__;
endmodule

module \std::option::impl_12::map[1520]  (
        input[32:0] self_i,
        output[32:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::map[1520]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::map[1520] );
        end
    end
    `endif
    logic[32:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:50,13" *)
    logic[31:0] \val ;
    logic _e_4936;
    logic _e_4938;
    (* src = "<compiler dir>/stdlib/option.spade:50,38" *)
    logic[31:0] _e_994;
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    logic[31:0] _e_992;
    (* src = "<compiler dir>/stdlib/option.spade:50,26" *)
    logic[32:0] _e_991;
    logic _e_4940;
    (* src = "<compiler dir>/stdlib/option.spade:51,21" *)
    logic[32:0] _e_997;
    (* src = "<compiler dir>/stdlib/option.spade:49,9" *)
    logic[32:0] _e_987;
    assign \val  = \self [31:0];
    assign _e_4936 = \self [32] == 1'd1;
    localparam[0:0] _e_4937 = 1;
    assign _e_4938 = _e_4936 && _e_4937;
    assign _e_994 = {\val };
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    \quickscope::impl_29::call[1547]  call_0(.args_i(_e_994), .output__(_e_992));
    assign _e_991 = {1'd1, _e_992};
    assign _e_4940 = \self [32] == 1'd0;
    assign _e_997 = {1'd0, 32'bX};
    always_comb begin
        priority casez ({_e_4938, _e_4940})
            2'b1?: _e_987 = _e_991;
            2'b01: _e_987 = _e_997;
            2'b?: _e_987 = 33'dx;
        endcase
    end
    assign output__ = _e_987;
endmodule

module \std::undef::undef[1521]  (
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::undef::undef[1521]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::undef::undef[1521] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/undef.spade:6,27" *)
    logic[32:0] \none ;
    logic[32:0] _e_1136;
    (* src = "<compiler dir>/stdlib/undef.spade:7,9" *)
    logic \_ ;
    (* src = "<compiler dir>/stdlib/undef.spade:7,9" *)
    logic[31:0] \result ;
    assign \none  = {1'd0, 32'bX};
    assign _e_1136 = \none ;
    assign \_  = _e_1136[32];
    assign \result  = _e_1136[31:0];
    assign output__ = \result ;
endmodule

module \std::array::impl_0::concat[1522]  (
        input[23:0] self_i,
        input[7:0] other_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::concat[1522]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::concat[1522] );
        end
    end
    `endif
    logic[23:0] \self ;
    assign \self  = self_i;
    logic[7:0] \other ;
    assign \other  = other_i;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    logic[31:0] _e_74;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    \std::conv::concat_arrays[1548]  concat_arrays_0(.l_i(\self ), .r_i(\other ), .output__(_e_74));
    assign output__ = _e_74;
endmodule

module \std::option::impl_12::map[1523]  (
        input[8:0] self_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::map[1523]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::map[1523] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:50,13" *)
    logic[7:0] \val ;
    logic _e_4942;
    logic _e_4944;
    (* src = "<compiler dir>/stdlib/option.spade:50,38" *)
    logic[7:0] _e_994;
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    logic[8:0] _e_992;
    (* src = "<compiler dir>/stdlib/option.spade:50,26" *)
    logic[9:0] _e_991;
    logic _e_4946;
    (* src = "<compiler dir>/stdlib/option.spade:51,21" *)
    logic[9:0] _e_997;
    (* src = "<compiler dir>/stdlib/option.spade:49,9" *)
    logic[9:0] _e_987;
    assign \val  = \self [7:0];
    assign _e_4942 = \self [8] == 1'd1;
    localparam[0:0] _e_4943 = 1;
    assign _e_4944 = _e_4942 && _e_4943;
    assign _e_994 = {\val };
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    \quickscope::impl_30::call[1549]  call_0(.args_i(_e_994), .output__(_e_992));
    assign _e_991 = {1'd1, _e_992};
    assign _e_4946 = \self [8] == 1'd0;
    assign _e_997 = {1'd0, 9'bX};
    always_comb begin
        priority casez ({_e_4944, _e_4946})
            2'b1?: _e_987 = _e_991;
            2'b01: _e_987 = _e_997;
            2'b?: _e_987 = 10'dx;
        endcase
    end
    assign output__ = _e_987;
endmodule

module \quickscope::impl_31::call[1524]  (
        input[7:0] args_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_31::call[1524]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_31::call[1524] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/quickscope/src/main.spade:91,32" *)
    logic[7:0] _e_3378;
    assign \byte  = \args [7:0];
    localparam[7:0] _e_3380 = 128;
    assign _e_3378 = \byte  ^ _e_3380;
    assign output__ = _e_3378;
endmodule

module \std::array::std::array::impl_0::map::F[1525]  (
        input[2:0] self_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::std::array::impl_0::map::F[1525]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::std::array::impl_0::map::F[1525] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:36,22" *)
    logic _e_87;
    (* src = "<compiler dir>/stdlib/array.spade:36,21" *)
    logic _e_86;
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    logic _e_84;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic _e_83;
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    logic[1:0] _e_91;
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    logic[1:0] _e_90;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic[2:0] _e_82;
    localparam[1:0] _e_89 = 0;
    assign _e_87 = \self [_e_89];
    assign _e_86 = {_e_87};
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    \nstd::array::impl_37::call[1550]  call_0(.args_i(_e_86), .output__(_e_84));
    assign _e_83 = {_e_84};
    assign _e_91 = \self [2-:2];
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    \std::array::impl_0::map[1551]  map_0(.self_i(_e_91), .output__(_e_90));
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    \std::array::impl_0::concat[1552]  concat_0(.self_i(_e_83), .other_i(_e_90), .output__(_e_82));
    assign output__ = _e_82;
endmodule

module \nstd::array::nstd::array::impl_32::fold::F[1526]  (
        input[2:0] self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_32::fold::F[1526]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_32::fold::F[1526] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic[1:0] _e_3403;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic \rest ;
    (* src = "build/libs/nstd/src/array.spade:10,27" *)
    logic _e_3414;
    (* src = "build/libs/nstd/src/array.spade:10,20" *)
    logic[1:0] _e_3412;
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    logic _e_3410;
    assign _e_3403 = \self [2-:2];
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    \nstd::array::impl_32::fold[1553]  fold_0(.self_i(_e_3403), .init_i(\init ), .output__(\rest ));
    localparam[1:0] _e_3416 = 0;
    assign _e_3414 = \self [_e_3416];
    assign _e_3412 = {\rest , _e_3414};
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    \nstd::array::impl_34::call[1554]  call_0(.args_i(_e_3412), .output__(_e_3410));
    assign output__ = _e_3410;
endmodule

module \std::array::std::array::impl_0::map::F[1527]  (
        input[2:0] self_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::std::array::impl_0::map::F[1527]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::std::array::impl_0::map::F[1527] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:36,22" *)
    logic _e_87;
    (* src = "<compiler dir>/stdlib/array.spade:36,21" *)
    logic _e_86;
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    logic _e_84;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic _e_83;
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    logic[1:0] _e_91;
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    logic[1:0] _e_90;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic[2:0] _e_82;
    localparam[1:0] _e_89 = 0;
    assign _e_87 = \self [_e_89];
    assign _e_86 = {_e_87};
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    \nstd::array::impl_38::call[1555]  call_0(.args_i(_e_86), .output__(_e_84));
    assign _e_83 = {_e_84};
    assign _e_91 = \self [2-:2];
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    \std::array::impl_0::map[1556]  map_0(.self_i(_e_91), .output__(_e_90));
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    \std::array::impl_0::concat[1552]  concat_0(.self_i(_e_83), .other_i(_e_90), .output__(_e_82));
    assign output__ = _e_82;
endmodule

module \nstd::array::nstd::array::impl_32::fold::F[1528]  (
        input[2:0] self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_32::fold::F[1528]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_32::fold::F[1528] );
        end
    end
    `endif
    logic[2:0] \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic[1:0] _e_3403;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic \rest ;
    (* src = "build/libs/nstd/src/array.spade:10,27" *)
    logic _e_3414;
    (* src = "build/libs/nstd/src/array.spade:10,20" *)
    logic[1:0] _e_3412;
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    logic _e_3410;
    assign _e_3403 = \self [2-:2];
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    \nstd::array::impl_32::fold[1557]  fold_0(.self_i(_e_3403), .init_i(\init ), .output__(\rest ));
    localparam[1:0] _e_3416 = 0;
    assign _e_3414 = \self [_e_3416];
    assign _e_3412 = {\rest , _e_3414};
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    \nstd::array::impl_33::call[1558]  call_0(.args_i(_e_3412), .output__(_e_3410));
    assign output__ = _e_3410;
endmodule

module \std::conv::flip_array[1529]  (
        input[7:0] in_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::flip_array[1529]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::flip_array[1529] );
        end
    end
    `endif
    logic[7:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    logic[7:0] \result ;
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    \std::conv::std::conv::flip_array::F[1559]  F_0(.in_i(\in ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::conv::concat_arrays[1530]  (
        input[7:0] l_i,
        input[7:0] r_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1530]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1530] );
        end
    end
    `endif
    logic[7:0] \l ;
    assign \l  = l_i;
    logic[7:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[15:0] _e_428;
    logic[15:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \std::conv::concat_arrays[1531]  (
        input[7:0] l_i,
        input[15:0] r_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1531]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1531] );
        end
    end
    `endif
    logic[7:0] \l ;
    assign \l  = l_i;
    logic[15:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[23:0] _e_428;
    logic[23:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \std::conv::concat_arrays[1532]  (
        input[7:0] l_i,
        input[23:0] r_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1532]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1532] );
        end
    end
    `endif
    logic[7:0] \l ;
    assign \l  = l_i;
    logic[23:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[31:0] _e_428;
    logic[31:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \ready_valid::option_ext::impl_22::into_rv_fifo[1533]  (
        input[16:0] self_i,
        input write_clk_i,
        input write_rst_i,
        output write_full_o,
        input read_clk_i,
        input read_rst_i,
        output[16:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::option_ext::impl_22::into_rv_fifo[1533]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::option_ext::impl_22::into_rv_fifo[1533] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \write_full_mut ;
    assign write_full_o = \write_full_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    logic[29:0] _e_1901;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    logic[17:0] _e_1901_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic \write ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic[16:0] \write_mut ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic[28:0] \read ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic \read_mut ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:32,13" *)
    logic[16:0] _e_1902_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:33,26" *)
    logic _e_1907;
    (* src = "build/libs/ready_valid/src/option_ext.spade:37,13" *)
    logic[16:0] _e_1910;
    (* src = "build/libs/ready_valid/src/option_ext.spade:38,13" *)
    logic _e_1912_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:36,9" *)
    logic[16:0] _e_1909;
    (* src = "build/libs/ready_valid/src/option_ext.spade:36,9" *)
    logic _e_1909_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:23,9" *)
    \ready_valid::option_ext::enforce_pow2[1560]  enforce_pow2_0();
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    \std::mem::fifo[1561]  fifo_0(.write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .output__(_e_1901), .input__(_e_1901_mut));
    assign \write  = _e_1901[29];
    assign _e_1901_mut[17:1] = \write_mut ;
    assign \read  = _e_1901[28:0];
    assign _e_1901_mut[0] = \read_mut ;
    assign \write_mut [16:0] = _e_1902_mut;
    assign _e_1902_mut = \self ;
    assign _e_1907 = \write ;
    assign \write_full_mut  = _e_1907;
    assign _e_1910 = \read [28:12];
    assign \read_mut  = _e_1912_mut;
    assign _e_1909 = {_e_1910};
    assign {_e_1912_mut} = _e_1909_mut;
    assign output__ = _e_1909;
    assign _e_1909_mut = input__;
endmodule

module \std::option::impl_12::is_none[1534]  (
        input[16:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_none[1534]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_none[1534] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:15,10" *)
    logic _e_968;
    (* src = "<compiler dir>/stdlib/option.spade:15,9" *)
    logic _e_967;
    (* src = "<compiler dir>/stdlib/option.spade:15,10" *)
    \std::option::impl_12::is_some[1562]  is_some_0(.self_i(\self ), .output__(_e_968));
    assign _e_967 = !_e_968;
    assign output__ = _e_967;
endmodule

module \quickscope::impl_29::call[1535]  (
        input[15:0] args_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_29::call[1535]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_29::call[1535] );
        end
    end
    `endif
    logic[15:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[15:0] \sample ;
    logic[15:0] _e_3349;
    assign \sample  = \args [15:0];
    assign _e_3349 = \sample ;
    assign output__ = _e_3349;
endmodule

module \quickscope::impl_30::call[1536]  (
        input[7:0] args_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_30::call[1536]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_30::call[1536] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/quickscope/src/main.spade:82,29" *)
    logic[8:0] _e_3358;
    assign \byte  = \args [7:0];
    assign _e_3358 = {1'd0, \byte };
    assign output__ = _e_3358;
endmodule

module \std::option::impl_12::map[1537]  (
        input[8:0] self_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::map[1537]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::map[1537] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:50,13" *)
    logic[7:0] \val ;
    logic _e_4954;
    logic _e_4956;
    (* src = "<compiler dir>/stdlib/option.spade:50,38" *)
    logic[7:0] _e_994;
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    logic[8:0] _e_992;
    (* src = "<compiler dir>/stdlib/option.spade:50,26" *)
    logic[9:0] _e_991;
    logic _e_4958;
    (* src = "<compiler dir>/stdlib/option.spade:51,21" *)
    logic[9:0] _e_997;
    (* src = "<compiler dir>/stdlib/option.spade:49,9" *)
    logic[9:0] _e_987;
    assign \val  = \self [7:0];
    assign _e_4954 = \self [8] == 1'd1;
    localparam[0:0] _e_4955 = 1;
    assign _e_4956 = _e_4954 && _e_4955;
    assign _e_994 = {\val };
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    \quickscope::impl_28::call[1563]  call_0(.args_i(_e_994), .output__(_e_992));
    assign _e_991 = {1'd1, _e_992};
    assign _e_4958 = \self [8] == 1'd0;
    assign _e_997 = {1'd0, 9'bX};
    always_comb begin
        priority casez ({_e_4956, _e_4958})
            2'b1?: _e_987 = _e_991;
            2'b01: _e_987 = _e_997;
            2'b?: _e_987 = 10'dx;
        endcase
    end
    assign output__ = _e_987;
endmodule

module \std::option::impl_12::map[1538]  (
        input[8:0] self_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::map[1538]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::map[1538] );
        end
    end
    `endif
    logic[8:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:50,13" *)
    logic[7:0] \val ;
    logic _e_4960;
    logic _e_4962;
    (* src = "<compiler dir>/stdlib/option.spade:50,38" *)
    logic[7:0] _e_994;
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    logic[8:0] _e_992;
    (* src = "<compiler dir>/stdlib/option.spade:50,26" *)
    logic[9:0] _e_991;
    logic _e_4964;
    (* src = "<compiler dir>/stdlib/option.spade:51,21" *)
    logic[9:0] _e_997;
    (* src = "<compiler dir>/stdlib/option.spade:49,9" *)
    logic[9:0] _e_987;
    assign \val  = \self [7:0];
    assign _e_4960 = \self [8] == 1'd1;
    localparam[0:0] _e_4961 = 1;
    assign _e_4962 = _e_4960 && _e_4961;
    assign _e_994 = {\val };
    (* src = "<compiler dir>/stdlib/option.spade:50,31" *)
    \quickscope::impl_28::call[1564]  call_0(.args_i(_e_994), .output__(_e_992));
    assign _e_991 = {1'd1, _e_992};
    assign _e_4964 = \self [8] == 1'd0;
    assign _e_997 = {1'd0, 9'bX};
    always_comb begin
        priority casez ({_e_4962, _e_4964})
            2'b1?: _e_987 = _e_991;
            2'b01: _e_987 = _e_997;
            2'b?: _e_987 = 10'dx;
        endcase
    end
    assign output__ = _e_987;
endmodule

module \nstd::array::impl_35::contains[1539]  (
        input[7:0] self_i,
        input[7:0] needle_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_35::contains[1539]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_35::contains[1539] );
        end
    end
    `endif
    logic[7:0] \self ;
    assign \self  = self_i;
    logic[7:0] \needle ;
    assign \needle  = needle_i;
    (* src = "build/libs/nstd/src/array.spade:48,42" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:48,42" *)
    \nstd::array::nstd::array::impl_35::contains::F[1565]  F_0(.self_i(\self ), .needle_i(\needle ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \ready_valid::option_ext::impl_22::into_rv_fifo[1540]  (
        input[24:0] self_i,
        input write_clk_i,
        input write_rst_i,
        output write_full_o,
        input read_clk_i,
        input read_rst_i,
        output[24:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::option_ext::impl_22::into_rv_fifo[1540]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::option_ext::impl_22::into_rv_fifo[1540] );
        end
    end
    `endif
    logic[24:0] \self ;
    assign \self  = self_i;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \write_full_mut ;
    assign write_full_o = \write_full_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    logic[28:0] _e_1901;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    logic[25:0] _e_1901_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic \write ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic[24:0] \write_mut ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic[27:0] \read ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic \read_mut ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:32,13" *)
    logic[24:0] _e_1902_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:33,26" *)
    logic _e_1907;
    (* src = "build/libs/ready_valid/src/option_ext.spade:37,13" *)
    logic[24:0] _e_1910;
    (* src = "build/libs/ready_valid/src/option_ext.spade:38,13" *)
    logic _e_1912_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:36,9" *)
    logic[24:0] _e_1909;
    (* src = "build/libs/ready_valid/src/option_ext.spade:36,9" *)
    logic _e_1909_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:23,9" *)
    \ready_valid::option_ext::enforce_pow2[1566]  enforce_pow2_0();
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    \std::mem::fifo[1567]  fifo_0(.write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .output__(_e_1901), .input__(_e_1901_mut));
    assign \write  = _e_1901[28];
    assign _e_1901_mut[25:1] = \write_mut ;
    assign \read  = _e_1901[27:0];
    assign _e_1901_mut[0] = \read_mut ;
    assign \write_mut [24:0] = _e_1902_mut;
    assign _e_1902_mut = \self ;
    assign _e_1907 = \write ;
    assign \write_full_mut  = _e_1907;
    assign _e_1910 = \read [27:3];
    assign \read_mut  = _e_1912_mut;
    assign _e_1909 = {_e_1910};
    assign {_e_1912_mut} = _e_1909_mut;
    assign output__ = _e_1909;
    assign _e_1909_mut = input__;
endmodule

module \std::option::impl_12::is_none[1541]  (
        input[24:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_none[1541]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_none[1541] );
        end
    end
    `endif
    logic[24:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:15,10" *)
    logic _e_968;
    (* src = "<compiler dir>/stdlib/option.spade:15,9" *)
    logic _e_967;
    (* src = "<compiler dir>/stdlib/option.spade:15,10" *)
    \std::option::impl_12::is_some[1568]  is_some_0(.self_i(\self ), .output__(_e_968));
    assign _e_967 = !_e_968;
    assign output__ = _e_967;
endmodule

module \quickscope::impl_29::call[1542]  (
        input[23:0] args_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_29::call[1542]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_29::call[1542] );
        end
    end
    `endif
    logic[23:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[23:0] \sample ;
    logic[23:0] _e_3349;
    assign \sample  = \args [23:0];
    assign _e_3349 = \sample ;
    assign output__ = _e_3349;
endmodule

module \std::conv::concat_arrays[1543]  (
        input[15:0] l_i,
        input[7:0] r_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1543]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1543] );
        end
    end
    `endif
    logic[15:0] \l ;
    assign \l  = l_i;
    logic[7:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[23:0] _e_428;
    logic[23:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \quickscope::impl_30::call[1544]  (
        input[7:0] args_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_30::call[1544]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_30::call[1544] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/quickscope/src/main.spade:82,29" *)
    logic[8:0] _e_3358;
    assign \byte  = \args [7:0];
    assign _e_3358 = {1'd0, \byte };
    assign output__ = _e_3358;
endmodule

module \ready_valid::option_ext::impl_22::into_rv_fifo[1545]  (
        input[32:0] self_i,
        input write_clk_i,
        input write_rst_i,
        output write_full_o,
        input read_clk_i,
        input read_rst_i,
        output[32:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::option_ext::impl_22::into_rv_fifo[1545]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::option_ext::impl_22::into_rv_fifo[1545] );
        end
    end
    `endif
    logic[32:0] \self ;
    assign \self  = self_i;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \write_full_mut ;
    assign write_full_o = \write_full_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    logic[36:0] _e_1901;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    logic[33:0] _e_1901_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic \write ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic[32:0] \write_mut ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic[35:0] \read ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,13" *)
    logic \read_mut ;
    (* src = "build/libs/ready_valid/src/option_ext.spade:32,13" *)
    logic[32:0] _e_1902_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:33,26" *)
    logic _e_1907;
    (* src = "build/libs/ready_valid/src/option_ext.spade:37,13" *)
    logic[32:0] _e_1910;
    (* src = "build/libs/ready_valid/src/option_ext.spade:38,13" *)
    logic _e_1912_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:36,9" *)
    logic[32:0] _e_1909;
    (* src = "build/libs/ready_valid/src/option_ext.spade:36,9" *)
    logic _e_1909_mut;
    (* src = "build/libs/ready_valid/src/option_ext.spade:23,9" *)
    \ready_valid::option_ext::enforce_pow2[1566]  enforce_pow2_0();
    (* src = "build/libs/ready_valid/src/option_ext.spade:25,29" *)
    \std::mem::fifo[1569]  fifo_0(.write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .output__(_e_1901), .input__(_e_1901_mut));
    assign \write  = _e_1901[36];
    assign _e_1901_mut[33:1] = \write_mut ;
    assign \read  = _e_1901[35:0];
    assign _e_1901_mut[0] = \read_mut ;
    assign \write_mut [32:0] = _e_1902_mut;
    assign _e_1902_mut = \self ;
    assign _e_1907 = \write ;
    assign \write_full_mut  = _e_1907;
    assign _e_1910 = \read [35:3];
    assign \read_mut  = _e_1912_mut;
    assign _e_1909 = {_e_1910};
    assign {_e_1912_mut} = _e_1909_mut;
    assign output__ = _e_1909;
    assign _e_1909_mut = input__;
endmodule

module \std::option::impl_12::is_none[1546]  (
        input[32:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_none[1546]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_none[1546] );
        end
    end
    `endif
    logic[32:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:15,10" *)
    logic _e_968;
    (* src = "<compiler dir>/stdlib/option.spade:15,9" *)
    logic _e_967;
    (* src = "<compiler dir>/stdlib/option.spade:15,10" *)
    \std::option::impl_12::is_some[1570]  is_some_0(.self_i(\self ), .output__(_e_968));
    assign _e_967 = !_e_968;
    assign output__ = _e_967;
endmodule

module \quickscope::impl_29::call[1547]  (
        input[31:0] args_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_29::call[1547]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_29::call[1547] );
        end
    end
    `endif
    logic[31:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[31:0] \sample ;
    logic[31:0] _e_3349;
    assign \sample  = \args [31:0];
    assign _e_3349 = \sample ;
    assign output__ = _e_3349;
endmodule

module \std::conv::concat_arrays[1548]  (
        input[23:0] l_i,
        input[7:0] r_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1548]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1548] );
        end
    end
    `endif
    logic[23:0] \l ;
    assign \l  = l_i;
    logic[7:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[31:0] _e_428;
    logic[31:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \quickscope::impl_30::call[1549]  (
        input[7:0] args_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_30::call[1549]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_30::call[1549] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/quickscope/src/main.spade:82,29" *)
    logic[8:0] _e_3358;
    assign \byte  = \args [7:0];
    assign _e_3358 = {1'd0, \byte };
    assign output__ = _e_3358;
endmodule

module \nstd::array::impl_37::call[1550]  (
        input args_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_37::call[1550]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_37::call[1550] );
        end
    end
    `endif
    logic \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic \val ;
    assign \val  = \args ;
    assign output__ = \val ;
endmodule

module \std::array::impl_0::map[1551]  (
        input[1:0] self_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::map[1551]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::map[1551] );
        end
    end
    `endif
    logic[1:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    logic[1:0] \result ;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    \std::array::std::array::impl_0::map::F[1571]  F_0(.self_i(\self ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::array::impl_0::concat[1552]  (
        input self_i,
        input[1:0] other_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::concat[1552]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::concat[1552] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic[1:0] \other ;
    assign \other  = other_i;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    logic[2:0] _e_74;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    \std::conv::concat_arrays[1572]  concat_arrays_0(.l_i(\self ), .r_i(\other ), .output__(_e_74));
    assign output__ = _e_74;
endmodule

module \nstd::array::impl_32::fold[1553]  (
        input[1:0] self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::fold[1553]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::fold[1553] );
        end
    end
    `endif
    logic[1:0] \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    \nstd::array::nstd::array::impl_32::fold::F[1573]  F_0(.self_i(\self ), .init_i(\init ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \nstd::array::impl_34::call[1554]  (
        input[1:0] args_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_34::call[1554]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_34::call[1554] );
        end
    end
    `endif
    logic[1:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic \acc ;
    (* src = "<str>:1,1" *)
    logic \next ;
    (* src = "build/libs/nstd/src/array.spade:27,42" *)
    logic _e_3456;
    assign \acc  = \args [1];
    assign \next  = \args [0];
    assign _e_3456 = \acc  || \next ;
    assign output__ = _e_3456;
endmodule

module \nstd::array::impl_38::call[1555]  (
        input args_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_38::call[1555]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_38::call[1555] );
        end
    end
    `endif
    logic \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic \val ;
    assign \val  = \args ;
    assign output__ = \val ;
endmodule

module \std::array::impl_0::map[1556]  (
        input[1:0] self_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::map[1556]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::map[1556] );
        end
    end
    `endif
    logic[1:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    logic[1:0] \result ;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    \std::array::std::array::impl_0::map::F[1574]  F_0(.self_i(\self ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \nstd::array::impl_32::fold[1557]  (
        input[1:0] self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::fold[1557]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::fold[1557] );
        end
    end
    `endif
    logic[1:0] \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    \nstd::array::nstd::array::impl_32::fold::F[1575]  F_0(.self_i(\self ), .init_i(\init ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \nstd::array::impl_33::call[1558]  (
        input[1:0] args_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_33::call[1558]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_33::call[1558] );
        end
    end
    `endif
    logic[1:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic \acc ;
    (* src = "<str>:1,1" *)
    logic \next ;
    (* src = "build/libs/nstd/src/array.spade:19,41" *)
    logic _e_3441;
    assign \acc  = \args [1];
    assign \next  = \args [0];
    assign _e_3441 = \acc  && \next ;
    assign output__ = _e_3441;
endmodule

module \std::conv::std::conv::flip_array::F[1559]  (
        input[7:0] in_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::std::conv::flip_array::F[1559]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::std::conv::flip_array::F[1559] );
        end
    end
    `endif
    logic[7:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    logic[7:0] _e_441;
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    logic[7:0] _e_440;
    assign _e_441 = \in ;
    
    (* src = "<compiler dir>/stdlib/conv.spade:43,36" *)
    \std::conv::flip_array[1576]  flip_array_0();
    (* src = "<compiler dir>/stdlib/conv.spade:43,9" *)
    \std::conv::concat_arrays[1577]  concat_arrays_0(.l_i(_e_441), .output__(_e_440));
    assign output__ = _e_440;
endmodule

module \ready_valid::option_ext::enforce_pow2[1560]  (
        
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::option_ext::enforce_pow2[1560]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::option_ext::enforce_pow2[1560] );
        end
    end
    `endif
endmodule

module \std::mem::fifo[1561]  (
        input write_clk_i,
        input write_rst_i,
        input read_clk_i,
        input read_rst_i,
        output[29:0] output__,
        input[17:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo[1561]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo[1561] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    logic[15:0] _e_830;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    logic[40:0] _e_830_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[28:0] \mem_write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[15:0] \mem_read ;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[11:0] \mem_read_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[11:0] _e_4985;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[11:0] _e_4985_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[11:0] _e_4986;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[11:0] _e_4986_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[23:0] _e_834;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[23:0] _e_834_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[11:0] \from_w ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[11:0] \from_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[11:0] \to_w ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[11:0] \to_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    logic \write ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    logic[16:0] \write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    logic[28:0] \read ;
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    logic \read_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:238,5" *)
    logic[29:0] _e_849;
    (* src = "<compiler dir>/stdlib/mem.spade:238,5" *)
    logic[17:0] _e_849_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    \std::mem::dp_bram[1578]  dp_bram_0(.write_clk_i(\write_clk ), .read_clk_i(\read_clk ), .output__(_e_830), .input__(_e_830_mut));
    assign _e_830_mut[40:12] = \mem_write_mut ;
    assign \mem_read  = _e_830[15:0];
    assign _e_830_mut[11:0] = \mem_read_mut ;
    
    assign _e_4986 = _e_4985_mut;
    assign _e_4985 = _e_4986_mut;
    assign _e_834 = {_e_4985, _e_4986};
    assign {_e_4985_mut, _e_4986_mut} = _e_834_mut;
    assign \from_w  = _e_834[23:12];
    assign _e_834_mut[23:12] = \from_w_mut ;
    assign \to_w  = _e_834[11:0];
    assign _e_834_mut[11:0] = \to_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    \std::mem::fifo_impl::fifo_write[1579]  fifo_write_0(.write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .mem_o(\mem_write_mut ), .from_w_i(\from_w ), .from_w_o(\from_w_mut ), .read_clk_i(\read_clk ), .output__(\write ), .input__(\write_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    \std::mem::fifo_impl::fifo_read[1580]  fifo_read_0(.read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .mem_i(\mem_read ), .mem_o(\mem_read_mut ), .to_w_i(\to_w ), .to_w_o(\to_w_mut ), .write_clk_i(\write_clk ), .output__(\read ), .input__(\read_mut ));
    assign _e_849 = {\write , \read };
    assign {\write_mut , \read_mut } = _e_849_mut;
    assign output__ = _e_849;
    assign _e_849_mut = input__;
endmodule

module \std::option::impl_12::is_some[1562]  (
        input[16:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_some[1562]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_some[1562] );
        end
    end
    `endif
    logic[16:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:9,13" *)
    logic[15:0] \_ ;
    logic _e_4988;
    logic _e_4990;
    logic _e_4992;
    (* src = "<compiler dir>/stdlib/option.spade:8,9" *)
    logic _e_959;
    assign \_  = \self [15:0];
    assign _e_4988 = \self [16] == 1'd1;
    localparam[0:0] _e_4989 = 1;
    assign _e_4990 = _e_4988 && _e_4989;
    localparam[0:0] _e_963 = 1;
    assign _e_4992 = \self [16] == 1'd0;
    localparam[0:0] _e_965 = 0;
    always_comb begin
        priority casez ({_e_4990, _e_4992})
            2'b1?: _e_959 = _e_963;
            2'b01: _e_959 = _e_965;
            2'b?: _e_959 = 1'dx;
        endcase
    end
    assign output__ = _e_959;
endmodule

module \quickscope::impl_28::call[1563]  (
        input[7:0] args_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_28::call[1563]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_28::call[1563] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/quickscope/src/main.spade:45,28" *)
    logic[8:0] _e_3256;
    assign \byte  = \args [7:0];
    assign _e_3256 = {1'd1, \byte };
    assign output__ = _e_3256;
endmodule

module \quickscope::impl_28::call[1564]  (
        input[7:0] args_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "quickscope::impl_28::call[1564]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \quickscope::impl_28::call[1564] );
        end
    end
    `endif
    logic[7:0] \args ;
    assign \args  = args_i;
    (* src = "<str>:1,1" *)
    logic[7:0] \byte ;
    (* src = "build/libs/quickscope/src/main.spade:45,28" *)
    logic[8:0] _e_3256;
    assign \byte  = \args [7:0];
    assign _e_3256 = {1'd1, \byte };
    assign output__ = _e_3256;
endmodule

module \nstd::array::nstd::array::impl_35::contains::F[1565]  (
        input[7:0] self_i,
        input[7:0] needle_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_35::contains::F[1565]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_35::contains::F[1565] );
        end
    end
    `endif
    logic[7:0] \self ;
    assign \self  = self_i;
    logic[7:0] \needle ;
    assign \needle  = needle_i;
    (* src = "build/libs/nstd/src/array.spade:52,13" *)
    logic[7:0] _e_3500;
    (* src = "build/libs/nstd/src/array.spade:52,13" *)
    logic _e_3499;
    (* src = "build/libs/nstd/src/array.spade:52,34" *)
    logic _e_3504;
    (* src = "build/libs/nstd/src/array.spade:52,13" *)
    logic _e_3498;
    assign _e_3500 = \self ;
    assign _e_3499 = _e_3500 == \needle ;
    
    (* src = "build/libs/nstd/src/array.spade:52,34" *)
    \nstd::array::impl_35::contains[1581]  contains_0(.needle_i(\needle ), .output__(_e_3504));
    assign _e_3498 = _e_3499 || _e_3504;
    assign output__ = _e_3498;
endmodule

module \ready_valid::option_ext::enforce_pow2[1566]  (
        
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "ready_valid::option_ext::enforce_pow2[1566]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \ready_valid::option_ext::enforce_pow2[1566] );
        end
    end
    `endif
endmodule

module \std::mem::fifo[1567]  (
        input write_clk_i,
        input write_rst_i,
        input read_clk_i,
        input read_rst_i,
        output[28:0] output__,
        input[25:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo[1567]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo[1567] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    logic[23:0] _e_830;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    logic[30:0] _e_830_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[27:0] \mem_write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[23:0] \mem_read ;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[2:0] \mem_read_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[2:0] _e_4997;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[2:0] _e_4997_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[2:0] _e_4998;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[2:0] _e_4998_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[5:0] _e_834;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[5:0] _e_834_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[2:0] \from_w ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[2:0] \from_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[2:0] \to_w ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[2:0] \to_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    logic \write ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    logic[24:0] \write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    logic[27:0] \read ;
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    logic \read_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:238,5" *)
    logic[28:0] _e_849;
    (* src = "<compiler dir>/stdlib/mem.spade:238,5" *)
    logic[25:0] _e_849_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    \std::mem::dp_bram[1582]  dp_bram_0(.write_clk_i(\write_clk ), .read_clk_i(\read_clk ), .output__(_e_830), .input__(_e_830_mut));
    assign _e_830_mut[30:3] = \mem_write_mut ;
    assign \mem_read  = _e_830[23:0];
    assign _e_830_mut[2:0] = \mem_read_mut ;
    
    assign _e_4998 = _e_4997_mut;
    assign _e_4997 = _e_4998_mut;
    assign _e_834 = {_e_4997, _e_4998};
    assign {_e_4997_mut, _e_4998_mut} = _e_834_mut;
    assign \from_w  = _e_834[5:3];
    assign _e_834_mut[5:3] = \from_w_mut ;
    assign \to_w  = _e_834[2:0];
    assign _e_834_mut[2:0] = \to_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    \std::mem::fifo_impl::fifo_write[1583]  fifo_write_0(.write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .mem_o(\mem_write_mut ), .from_w_i(\from_w ), .from_w_o(\from_w_mut ), .read_clk_i(\read_clk ), .output__(\write ), .input__(\write_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    \std::mem::fifo_impl::fifo_read[1584]  fifo_read_0(.read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .mem_i(\mem_read ), .mem_o(\mem_read_mut ), .to_w_i(\to_w ), .to_w_o(\to_w_mut ), .write_clk_i(\write_clk ), .output__(\read ), .input__(\read_mut ));
    assign _e_849 = {\write , \read };
    assign {\write_mut , \read_mut } = _e_849_mut;
    assign output__ = _e_849;
    assign _e_849_mut = input__;
endmodule

module \std::option::impl_12::is_some[1568]  (
        input[24:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_some[1568]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_some[1568] );
        end
    end
    `endif
    logic[24:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:9,13" *)
    logic[23:0] \_ ;
    logic _e_5000;
    logic _e_5002;
    logic _e_5004;
    (* src = "<compiler dir>/stdlib/option.spade:8,9" *)
    logic _e_959;
    assign \_  = \self [23:0];
    assign _e_5000 = \self [24] == 1'd1;
    localparam[0:0] _e_5001 = 1;
    assign _e_5002 = _e_5000 && _e_5001;
    localparam[0:0] _e_963 = 1;
    assign _e_5004 = \self [24] == 1'd0;
    localparam[0:0] _e_965 = 0;
    always_comb begin
        priority casez ({_e_5002, _e_5004})
            2'b1?: _e_959 = _e_963;
            2'b01: _e_959 = _e_965;
            2'b?: _e_959 = 1'dx;
        endcase
    end
    assign output__ = _e_959;
endmodule

module \std::mem::fifo[1569]  (
        input write_clk_i,
        input write_rst_i,
        input read_clk_i,
        input read_rst_i,
        output[36:0] output__,
        input[33:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo[1569]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo[1569] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    logic[31:0] _e_830;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    logic[38:0] _e_830_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[35:0] \mem_write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[31:0] \mem_read ;
    (* src = "<compiler dir>/stdlib/mem.spade:231,9" *)
    logic[2:0] \mem_read_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[2:0] _e_5005;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[2:0] _e_5005_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[2:0] _e_5006;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[2:0] _e_5006_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[5:0] _e_834;
    (* src = "<compiler dir>/stdlib/mem.spade:233,26" *)
    logic[5:0] _e_834_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[2:0] \from_w ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[2:0] \from_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[2:0] \to_w ;
    (* src = "<compiler dir>/stdlib/mem.spade:233,9" *)
    logic[2:0] \to_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    logic \write ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    logic[32:0] \write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    logic[35:0] \read ;
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    logic \read_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:238,5" *)
    logic[36:0] _e_849;
    (* src = "<compiler dir>/stdlib/mem.spade:238,5" *)
    logic[33:0] _e_849_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:231,33" *)
    \std::mem::dp_bram[1585]  dp_bram_0(.write_clk_i(\write_clk ), .read_clk_i(\read_clk ), .output__(_e_830), .input__(_e_830_mut));
    assign _e_830_mut[38:3] = \mem_write_mut ;
    assign \mem_read  = _e_830[31:0];
    assign _e_830_mut[2:0] = \mem_read_mut ;
    
    assign _e_5006 = _e_5005_mut;
    assign _e_5005 = _e_5006_mut;
    assign _e_834 = {_e_5005, _e_5006};
    assign {_e_5005_mut, _e_5006_mut} = _e_834_mut;
    assign \from_w  = _e_834[5:3];
    assign _e_834_mut[5:3] = \from_w_mut ;
    assign \to_w  = _e_834[2:0];
    assign _e_834_mut[2:0] = \to_w_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:235,17" *)
    \std::mem::fifo_impl::fifo_write[1586]  fifo_write_0(.write_clk_i(\write_clk ), .write_rst_i(\write_rst ), .mem_o(\mem_write_mut ), .from_w_i(\from_w ), .from_w_o(\from_w_mut ), .read_clk_i(\read_clk ), .output__(\write ), .input__(\write_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:236,16" *)
    \std::mem::fifo_impl::fifo_read[1587]  fifo_read_0(.read_clk_i(\read_clk ), .read_rst_i(\read_rst ), .mem_i(\mem_read ), .mem_o(\mem_read_mut ), .to_w_i(\to_w ), .to_w_o(\to_w_mut ), .write_clk_i(\write_clk ), .output__(\read ), .input__(\read_mut ));
    assign _e_849 = {\write , \read };
    assign {\write_mut , \read_mut } = _e_849_mut;
    assign output__ = _e_849;
    assign _e_849_mut = input__;
endmodule

module \std::option::impl_12::is_some[1570]  (
        input[32:0] self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::option::impl_12::is_some[1570]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::option::impl_12::is_some[1570] );
        end
    end
    `endif
    logic[32:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/option.spade:9,13" *)
    logic[31:0] \_ ;
    logic _e_5008;
    logic _e_5010;
    logic _e_5012;
    (* src = "<compiler dir>/stdlib/option.spade:8,9" *)
    logic _e_959;
    assign \_  = \self [31:0];
    assign _e_5008 = \self [32] == 1'd1;
    localparam[0:0] _e_5009 = 1;
    assign _e_5010 = _e_5008 && _e_5009;
    localparam[0:0] _e_963 = 1;
    assign _e_5012 = \self [32] == 1'd0;
    localparam[0:0] _e_965 = 0;
    always_comb begin
        priority casez ({_e_5010, _e_5012})
            2'b1?: _e_959 = _e_963;
            2'b01: _e_959 = _e_965;
            2'b?: _e_959 = 1'dx;
        endcase
    end
    assign output__ = _e_959;
endmodule

module \std::array::std::array::impl_0::map::F[1571]  (
        input[1:0] self_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::std::array::impl_0::map::F[1571]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::std::array::impl_0::map::F[1571] );
        end
    end
    `endif
    logic[1:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:36,22" *)
    logic _e_87;
    (* src = "<compiler dir>/stdlib/array.spade:36,21" *)
    logic _e_86;
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    logic _e_84;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic _e_83;
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    logic _e_91;
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    logic _e_90;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic[1:0] _e_82;
    localparam[0:0] _e_89 = 0;
    assign _e_87 = \self [_e_89];
    assign _e_86 = {_e_87};
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    \nstd::array::impl_37::call[1550]  call_0(.args_i(_e_86), .output__(_e_84));
    assign _e_83 = {_e_84};
    assign _e_91 = \self [1];
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    \std::array::impl_0::map[1588]  map_0(.self_i(_e_91), .output__(_e_90));
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    \std::array::impl_0::concat[1589]  concat_0(.self_i(_e_83), .other_i(_e_90), .output__(_e_82));
    assign output__ = _e_82;
endmodule

module \std::conv::concat_arrays[1572]  (
        input l_i,
        input[1:0] r_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1572]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1572] );
        end
    end
    `endif
    logic \l ;
    assign \l  = l_i;
    logic[1:0] \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[2:0] _e_428;
    logic[2:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \nstd::array::nstd::array::impl_32::fold::F[1573]  (
        input[1:0] self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_32::fold::F[1573]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_32::fold::F[1573] );
        end
    end
    `endif
    logic[1:0] \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic _e_3403;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic \rest ;
    (* src = "build/libs/nstd/src/array.spade:10,27" *)
    logic _e_3414;
    (* src = "build/libs/nstd/src/array.spade:10,20" *)
    logic[1:0] _e_3412;
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    logic _e_3410;
    assign _e_3403 = \self [1];
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    \nstd::array::impl_32::fold[1590]  fold_0(.self_i(_e_3403), .init_i(\init ), .output__(\rest ));
    localparam[0:0] _e_3416 = 0;
    assign _e_3414 = \self [_e_3416];
    assign _e_3412 = {\rest , _e_3414};
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    \nstd::array::impl_34::call[1554]  call_0(.args_i(_e_3412), .output__(_e_3410));
    assign output__ = _e_3410;
endmodule

module \std::array::std::array::impl_0::map::F[1574]  (
        input[1:0] self_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::std::array::impl_0::map::F[1574]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::std::array::impl_0::map::F[1574] );
        end
    end
    `endif
    logic[1:0] \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:36,22" *)
    logic _e_87;
    (* src = "<compiler dir>/stdlib/array.spade:36,21" *)
    logic _e_86;
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    logic _e_84;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic _e_83;
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    logic _e_91;
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    logic _e_90;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic[1:0] _e_82;
    localparam[0:0] _e_89 = 0;
    assign _e_87 = \self [_e_89];
    assign _e_86 = {_e_87};
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    \nstd::array::impl_38::call[1555]  call_0(.args_i(_e_86), .output__(_e_84));
    assign _e_83 = {_e_84};
    assign _e_91 = \self [1];
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    \std::array::impl_0::map[1591]  map_0(.self_i(_e_91), .output__(_e_90));
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    \std::array::impl_0::concat[1589]  concat_0(.self_i(_e_83), .other_i(_e_90), .output__(_e_82));
    assign output__ = _e_82;
endmodule

module \nstd::array::nstd::array::impl_32::fold::F[1575]  (
        input[1:0] self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_32::fold::F[1575]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_32::fold::F[1575] );
        end
    end
    `endif
    logic[1:0] \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic _e_3403;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic \rest ;
    (* src = "build/libs/nstd/src/array.spade:10,27" *)
    logic _e_3414;
    (* src = "build/libs/nstd/src/array.spade:10,20" *)
    logic[1:0] _e_3412;
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    logic _e_3410;
    assign _e_3403 = \self [1];
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    \nstd::array::impl_32::fold[1592]  fold_0(.self_i(_e_3403), .init_i(\init ), .output__(\rest ));
    localparam[0:0] _e_3416 = 0;
    assign _e_3414 = \self [_e_3416];
    assign _e_3412 = {\rest , _e_3414};
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    \nstd::array::impl_33::call[1558]  call_0(.args_i(_e_3412), .output__(_e_3410));
    assign output__ = _e_3410;
endmodule

module \std::conv::flip_array[1576]  (
        
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::flip_array[1576]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::flip_array[1576] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/conv.spade:39,49" *)
    \std::conv::std::conv::flip_array::T[1593]  T_0();
endmodule

module \std::conv::concat_arrays[1577]  (
        input[7:0] l_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1577]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1577] );
        end
    end
    `endif
    logic[7:0] \l ;
    assign \l  = l_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[7:0] _e_428;
    logic[7:0] _e_427;
    assign _e_428 = {\l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \std::mem::dp_bram[1578]  (
        input write_clk_i,
        input read_clk_i,
        output[15:0] output__,
        input[40:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::dp_bram[1578]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::dp_bram[1578] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:76,18" *)
    logic[11:0] \w_addr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:77,19" *)
    logic[16:0] \w_write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:78,18" *)
    logic[11:0] \r_addr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:80,20" *)
    reg[15:0] \undef ;
    (* src = "<compiler dir>/stdlib/mem.spade:81,24" *)
    logic[16:0] _e_635;
    (* src = "<compiler dir>/stdlib/mem.spade:82,9" *)
    logic[16:0] _e_638;
    (* src = "<compiler dir>/stdlib/mem.spade:82,9" *)
    logic[15:0] \w ;
    logic _e_5014;
    logic _e_5016;
    (* src = "<compiler dir>/stdlib/mem.spade:82,32" *)
    logic[11:0] _e_641;
    (* src = "<compiler dir>/stdlib/mem.spade:82,20" *)
    logic[28:0] _e_639;
    (* src = "<compiler dir>/stdlib/mem.spade:83,9" *)
    logic[16:0] _e_644;
    logic _e_5018;
    (* src = "<compiler dir>/stdlib/mem.spade:83,30" *)
    logic[11:0] _e_647;
    (* src = "<compiler dir>/stdlib/mem.spade:83,17" *)
    logic[28:0] _e_645;
    (* src = "<compiler dir>/stdlib/mem.spade:81,13" *)
    logic[28:0] w_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:86,60" *)
    logic[28:0] _e_653;
    (* src = "<compiler dir>/stdlib/mem.spade:86,29" *)
    logic[16-1:0] \mem [4096-1:0];
    (* src = "<compiler dir>/stdlib/mem.spade:88,60" *)
    logic[11:0] _e_660;
    (* src = "<compiler dir>/stdlib/mem.spade:88,33" *)
    logic[15:0] _e_658;
    (* src = "<compiler dir>/stdlib/mem.spade:88,19" *)
    reg[15:0] \read_result ;
    (* src = "<compiler dir>/stdlib/mem.spade:90,6" *)
    logic[28:0] _e_663_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:90,48" *)
    logic[15:0] _e_666;
    (* src = "<compiler dir>/stdlib/mem.spade:90,48" *)
    logic[11:0] _e_666_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:90,5" *)
    logic[15:0] _e_662;
    (* src = "<compiler dir>/stdlib/mem.spade:90,5" *)
    logic[40:0] _e_662_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:76,18" *)
    \std::ports::new_mut_wire[1594]  new_mut_wire_0(.input__(\w_addr_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:77,19" *)
    \std::ports::new_mut_wire[1595]  new_mut_wire_1(.input__(\w_write_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:78,18" *)
    \std::ports::new_mut_wire[1594]  new_mut_wire_2(.input__(\r_addr_mut ));
    always @(posedge \write_clk ) begin
        \undef  <= \undef ;
    end
    assign _e_635 = \w_write_mut ;
    assign _e_638 = _e_635;
    assign \w  = _e_635[15:0];
    assign _e_5014 = _e_635[16] == 1'd1;
    localparam[0:0] _e_5015 = 1;
    assign _e_5016 = _e_5014 && _e_5015;
    localparam[0:0] _e_640 = 1;
    assign _e_641 = \w_addr_mut ;
    assign _e_639 = {_e_640, _e_641, \w };
    assign _e_644 = _e_635;
    assign _e_5018 = _e_635[16] == 1'd0;
    localparam[0:0] _e_646 = 0;
    assign _e_647 = \w_addr_mut ;
    assign _e_645 = {_e_646, _e_647, \undef };
    always_comb begin
        priority casez ({_e_5016, _e_5018})
            2'b1?: w_n1 = _e_639;
            2'b01: w_n1 = _e_645;
            2'b?: w_n1 = 29'dx;
        endcase
    end
    assign _e_653 = {w_n1};
    always @(posedge \write_clk ) begin
        if (_e_653[28]) begin
            \mem [_e_653[27:16]] <= _e_653[15:0];
        end
    end
    assign _e_660 = \r_addr_mut ;
    assign _e_658 = \mem [_e_660];
    always @(posedge \read_clk ) begin
        \read_result  <= _e_658;
    end
    assign {\w_addr_mut , \w_write_mut } = _e_663_mut;
    assign _e_666 = {\read_result };
    assign {\r_addr_mut } = _e_666_mut;
    assign _e_662 = {_e_666};
    assign {_e_663_mut, _e_666_mut} = _e_662_mut;
    assign output__ = _e_662;
    assign _e_662_mut = input__;
endmodule

module \std::mem::fifo_impl::fifo_write[1579]  (
        input write_clk_i,
        input write_rst_i,
        output[28:0] mem_o,
        input[11:0] from_w_i, output[11:0] from_w_o,
        input read_clk_i,
        output output__,
        input[16:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo_impl::fifo_write[1579]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo_impl::fifo_write[1579] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic[28:0] \mem_mut ;
    assign mem_o = \mem_mut ;
    logic[11:0] \from_w ;
    assign \from_w  = from_w_i;
    logic[11:0] \from_w_mut ;
    assign from_w_o = \from_w_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:194,22" *)
    logic[11:0] _e_762;
    (* src = "<compiler dir>/stdlib/mem.spade:191,13" *)
    logic[11:0] \read_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:197,13" *)
    logic read_clk_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:199,27" *)
    logic[16:0] \write_value_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:202,26" *)
    logic[12:0] _e_772;
    (* src = "<compiler dir>/stdlib/mem.spade:202,20" *)
    logic[11:0] _e_771;
    (* src = "<compiler dir>/stdlib/mem.spade:202,20" *)
    logic \full ;
    (* src = "<compiler dir>/stdlib/mem.spade:204,68" *)
    logic[16:0] _e_783;
    (* src = "<compiler dir>/stdlib/mem.spade:204,62" *)
    logic[17:0] _e_782;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic[17:0] _e_789;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic[16:0] _e_787;
    (* src = "<compiler dir>/stdlib/mem.spade:205,14" *)
    logic[15:0] \v ;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic _e_788;
    logic _e_5021;
    logic _e_5023;
    logic _e_5024;
    logic _e_5025;
    (* src = "<compiler dir>/stdlib/mem.spade:205,39" *)
    logic[12:0] _e_791;
    (* src = "<compiler dir>/stdlib/mem.spade:205,33" *)
    logic[11:0] _e_790;
    (* src = "<compiler dir>/stdlib/mem.spade:206,13" *)
    logic[17:0] \_ ;
    (* src = "<compiler dir>/stdlib/mem.spade:204,56" *)
    logic[11:0] _e_781;
    (* src = "<compiler dir>/stdlib/mem.spade:204,24" *)
    reg[11:0] \write_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:209,13" *)
    logic[11:0] _e_796_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:210,13" *)
    logic[16:0] _e_800_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:210,39" *)
    logic[16:0] _e_805;
    (* src = "<compiler dir>/stdlib/mem.spade:210,33" *)
    logic[17:0] _e_804;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic[17:0] _e_811;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic[16:0] _e_809;
    (* src = "<compiler dir>/stdlib/mem.spade:211,14" *)
    logic[15:0] v_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic _e_810;
    logic _e_5029;
    logic _e_5031;
    logic _e_5032;
    logic _e_5033;
    (* src = "<compiler dir>/stdlib/mem.spade:211,33" *)
    logic[16:0] _e_812;
    (* src = "<compiler dir>/stdlib/mem.spade:212,13" *)
    logic[17:0] __n1;
    (* src = "<compiler dir>/stdlib/mem.spade:212,18" *)
    logic[16:0] _e_815;
    (* src = "<compiler dir>/stdlib/mem.spade:210,27" *)
    logic[16:0] _e_802;
    (* src = "<compiler dir>/stdlib/mem.spade:215,13" *)
    logic[11:0] _e_816_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:216,9" *)
    logic _e_820;
    (* src = "<compiler dir>/stdlib/mem.spade:216,9" *)
    logic[16:0] _e_820_mut;
    assign _e_762 = \from_w [11:0];
    (* src = "<compiler dir>/stdlib/mem.spade:191,13" *)
    \std::cdc::sync_uint_counter[1596]  sync_uint_counter_0(.source_clk_i(\read_clk ), .dest_clk_i(\write_clk ), .in_i(_e_762), .output__(\read_ptr ));
    localparam[0:0] _e_766 = 0;
    assign read_clk_n1 = _e_766;
    (* src = "<compiler dir>/stdlib/mem.spade:199,27" *)
    \std::ports::new_mut_wire[1595]  new_mut_wire_0(.input__(\write_value_mut ));
    localparam[11:0] _e_774 = 1;
    assign _e_772 = \write_ptr  + _e_774;
    assign _e_771 = _e_772[11:0];
    assign \full  = _e_771 == \read_ptr ;
    localparam[11:0] _e_780 = 0;
    assign _e_783 = \write_value_mut ;
    assign _e_782 = {_e_783, \full };
    assign _e_789 = _e_782;
    assign _e_787 = _e_782[17:1];
    assign \v  = _e_787[15:0];
    assign _e_788 = _e_782[0];
    assign _e_5021 = _e_787[16] == 1'd1;
    localparam[0:0] _e_5022 = 1;
    assign _e_5023 = _e_5021 && _e_5022;
    assign _e_5024 = !_e_788;
    assign _e_5025 = _e_5023 && _e_5024;
    localparam[11:0] _e_793 = 1;
    assign _e_791 = \write_ptr  + _e_793;
    assign _e_790 = _e_791[11:0];
    assign \_  = _e_782;
    localparam[0:0] _e_5026 = 1;
    always_comb begin
        priority casez ({_e_5025, _e_5026})
            2'b1?: _e_781 = _e_790;
            2'b01: _e_781 = \write_ptr ;
            2'b?: _e_781 = 12'dx;
        endcase
    end
    always @(posedge \write_clk ) begin
        if (\write_rst ) begin
            \write_ptr  <= _e_780;
        end
        else begin
            \write_ptr  <= _e_781;
        end
    end
    assign \mem_mut [28:17] = _e_796_mut;
    assign _e_796_mut = \write_ptr ;
    assign \mem_mut [16:0] = _e_800_mut;
    assign _e_805 = \write_value_mut ;
    assign _e_804 = {_e_805, \full };
    assign _e_811 = _e_804;
    assign _e_809 = _e_804[17:1];
    assign v_n1 = _e_809[15:0];
    assign _e_810 = _e_804[0];
    assign _e_5029 = _e_809[16] == 1'd1;
    localparam[0:0] _e_5030 = 1;
    assign _e_5031 = _e_5029 && _e_5030;
    assign _e_5032 = !_e_810;
    assign _e_5033 = _e_5031 && _e_5032;
    assign _e_812 = {1'd1, v_n1};
    assign __n1 = _e_804;
    localparam[0:0] _e_5034 = 1;
    assign _e_815 = {1'd0, 16'bX};
    always_comb begin
        priority casez ({_e_5033, _e_5034})
            2'b1?: _e_802 = _e_812;
            2'b01: _e_802 = _e_815;
            2'b?: _e_802 = 17'dx;
        endcase
    end
    assign _e_800_mut = _e_802;
    assign \from_w_mut [11:0] = _e_816_mut;
    assign _e_816_mut = \write_ptr ;
    assign _e_820 = {\full };
    assign {\write_value_mut } = _e_820_mut;
    assign output__ = _e_820;
    assign _e_820_mut = input__;
endmodule

module \std::mem::fifo_impl::fifo_read[1580]  (
        input read_clk_i,
        input read_rst_i,
        input[15:0] mem_i, output[11:0] mem_o,
        input[11:0] to_w_i, output[11:0] to_w_o,
        input write_clk_i,
        output[28:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo_impl::fifo_read[1580]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo_impl::fifo_read[1580] );
        end
    end
    `endif
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    logic[15:0] \mem ;
    assign \mem  = mem_i;
    logic[11:0] \mem_mut ;
    assign mem_o = \mem_mut ;
    logic[11:0] \to_w ;
    assign \to_w  = to_w_i;
    logic[11:0] \to_w_mut ;
    assign to_w_o = \to_w_mut ;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:143,22" *)
    logic[11:0] _e_675;
    (* src = "<compiler dir>/stdlib/mem.spade:140,13" *)
    logic[11:0] \write_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:146,13" *)
    logic write_clk_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:148,19" *)
    logic \ack_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:151,21" *)
    logic \empty ;
    (* src = "<compiler dir>/stdlib/mem.spade:152,41" *)
    logic _e_689;
    (* src = "<compiler dir>/stdlib/mem.spade:152,35" *)
    logic[1:0] _e_688;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic[1:0] _e_694;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic _e_692;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic _e_693;
    logic _e_5038;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic[1:0] _e_698;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic _e_696;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic _e_697;
    logic _e_5041;
    logic _e_5042;
    (* src = "<compiler dir>/stdlib/mem.spade:154,36" *)
    logic[12:0] _e_700;
    (* src = "<compiler dir>/stdlib/mem.spade:154,30" *)
    logic[11:0] _e_699;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic[1:0] _e_705;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic _e_703;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic \_ ;
    logic _e_5044;
    logic _e_5046;
    (* src = "<compiler dir>/stdlib/mem.spade:152,29" *)
    logic[11:0] \read_ptr_next ;
    (* src = "<compiler dir>/stdlib/mem.spade:157,23" *)
    reg[11:0] \read_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:159,19" *)
    logic[15:0] \out ;
    (* src = "<compiler dir>/stdlib/mem.spade:169,36" *)
    logic _e_721;
    (* src = "<compiler dir>/stdlib/mem.spade:169,58" *)
    logic[12:0] _e_726;
    (* src = "<compiler dir>/stdlib/mem.spade:169,58" *)
    logic[13:0] _e_725;
    logic[13:0] _e_731;
    (* src = "<compiler dir>/stdlib/mem.spade:169,33" *)
    logic[13:0] \write_ptr_abs ;
    logic[13:0] _e_737;
    (* src = "<compiler dir>/stdlib/mem.spade:171,19" *)
    logic[14:0] _e_735;
    (* src = "<compiler dir>/stdlib/mem.spade:171,13" *)
    logic[11:0] \num_elements ;
    (* src = "<compiler dir>/stdlib/mem.spade:174,13" *)
    logic[11:0] _e_740_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:177,23" *)
    logic _e_747;
    (* src = "<compiler dir>/stdlib/mem.spade:177,32" *)
    logic[16:0] _e_750;
    (* src = "<compiler dir>/stdlib/mem.spade:177,51" *)
    logic[16:0] _e_753;
    (* src = "<compiler dir>/stdlib/mem.spade:177,20" *)
    logic[16:0] _e_745;
    (* src = "<compiler dir>/stdlib/mem.spade:176,9" *)
    logic[28:0] _e_744;
    (* src = "<compiler dir>/stdlib/mem.spade:176,9" *)
    logic _e_744_mut;
    assign _e_675 = \to_w [11:0];
    (* src = "<compiler dir>/stdlib/mem.spade:140,13" *)
    \std::cdc::sync_uint_counter[1596]  sync_uint_counter_0(.source_clk_i(\write_clk ), .dest_clk_i(\read_clk ), .in_i(_e_675), .output__(\write_ptr ));
    localparam[0:0] _e_679 = 0;
    assign write_clk_n1 = _e_679;
    (* src = "<compiler dir>/stdlib/mem.spade:148,19" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_0(.input__(\ack_mut ));
    assign \empty  = \write_ptr  == \read_ptr ;
    assign _e_689 = \ack_mut ;
    assign _e_688 = {_e_689, \empty };
    assign _e_694 = _e_688;
    assign _e_692 = _e_688[1];
    assign _e_693 = _e_688[0];
    assign _e_5038 = _e_692 && _e_693;
    assign _e_698 = _e_688;
    assign _e_696 = _e_688[1];
    assign _e_697 = _e_688[0];
    assign _e_5041 = !_e_697;
    assign _e_5042 = _e_696 && _e_5041;
    localparam[11:0] _e_702 = 1;
    assign _e_700 = \read_ptr  + _e_702;
    assign _e_699 = _e_700[11:0];
    assign _e_705 = _e_688;
    assign _e_703 = _e_688[1];
    assign \_  = _e_688[0];
    assign _e_5044 = !_e_703;
    localparam[0:0] _e_5045 = 1;
    assign _e_5046 = _e_5044 && _e_5045;
    always_comb begin
        priority casez ({_e_5038, _e_5042, _e_5046})
            3'b1??: \read_ptr_next  = \read_ptr ;
            3'b01?: \read_ptr_next  = _e_699;
            3'b001: \read_ptr_next  = \read_ptr ;
            3'b?: \read_ptr_next  = 12'dx;
        endcase
    end
    localparam[11:0] _e_711 = 0;
    always @(posedge \read_clk ) begin
        if (\read_rst ) begin
            \read_ptr  <= _e_711;
        end
        else begin
            \read_ptr  <= \read_ptr_next ;
        end
    end
    (* src = "<compiler dir>/stdlib/mem.spade:159,19" *)
    \std::mem::read_read_port[1597]  read_read_port_0(.read_clk_i(\read_clk ), .addr_i(\read_ptr_next ), .p_i(\mem ), .p_o(\mem_mut ), .output__(\out ));
    assign _e_721 = \write_ptr  < \read_ptr ;
    localparam[11:0] _e_728 = 0;
    assign _e_726 = \write_ptr  + _e_728;
    localparam[12:0] _e_729 = 4096;
    assign _e_725 = _e_726 + _e_729;
    assign _e_731 = {2'b0, \write_ptr };
    assign \write_ptr_abs  = _e_721 ? _e_725 : _e_731;
    assign _e_737 = {2'b0, \read_ptr };
    assign _e_735 = \write_ptr_abs  - _e_737;
    assign \num_elements  = _e_735[11:0];
    assign \to_w_mut [11:0] = _e_740_mut;
    assign _e_740_mut = \read_ptr ;
    assign _e_747 = !\empty ;
    assign _e_750 = {1'd1, \out };
    assign _e_753 = {1'd0, 16'bX};
    assign _e_745 = _e_747 ? _e_750 : _e_753;
    assign _e_744 = {_e_745, \num_elements };
    assign {\ack_mut } = _e_744_mut;
    assign output__ = _e_744;
    assign _e_744_mut = input__;
endmodule

module \nstd::array::impl_35::contains[1581]  (
        input[7:0] needle_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_35::contains[1581]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_35::contains[1581] );
        end
    end
    `endif
    logic[7:0] \needle ;
    assign \needle  = needle_i;
    (* src = "build/libs/nstd/src/array.spade:48,42" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:48,42" *)
    \nstd::array::nstd::array::impl_35::contains::T[1598]  T_0(.needle_i(\needle ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::mem::dp_bram[1582]  (
        input write_clk_i,
        input read_clk_i,
        output[23:0] output__,
        input[30:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::dp_bram[1582]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::dp_bram[1582] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:76,18" *)
    logic[2:0] \w_addr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:77,19" *)
    logic[24:0] \w_write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:78,18" *)
    logic[2:0] \r_addr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:80,20" *)
    reg[23:0] \undef ;
    (* src = "<compiler dir>/stdlib/mem.spade:81,24" *)
    logic[24:0] _e_635;
    (* src = "<compiler dir>/stdlib/mem.spade:82,9" *)
    logic[24:0] _e_638;
    (* src = "<compiler dir>/stdlib/mem.spade:82,9" *)
    logic[23:0] \w ;
    logic _e_5048;
    logic _e_5050;
    (* src = "<compiler dir>/stdlib/mem.spade:82,32" *)
    logic[2:0] _e_641;
    (* src = "<compiler dir>/stdlib/mem.spade:82,20" *)
    logic[27:0] _e_639;
    (* src = "<compiler dir>/stdlib/mem.spade:83,9" *)
    logic[24:0] _e_644;
    logic _e_5052;
    (* src = "<compiler dir>/stdlib/mem.spade:83,30" *)
    logic[2:0] _e_647;
    (* src = "<compiler dir>/stdlib/mem.spade:83,17" *)
    logic[27:0] _e_645;
    (* src = "<compiler dir>/stdlib/mem.spade:81,13" *)
    logic[27:0] w_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:86,60" *)
    logic[27:0] _e_653;
    (* src = "<compiler dir>/stdlib/mem.spade:86,29" *)
    logic[24-1:0] \mem [8-1:0];
    (* src = "<compiler dir>/stdlib/mem.spade:88,60" *)
    logic[2:0] _e_660;
    (* src = "<compiler dir>/stdlib/mem.spade:88,33" *)
    logic[23:0] _e_658;
    (* src = "<compiler dir>/stdlib/mem.spade:88,19" *)
    reg[23:0] \read_result ;
    (* src = "<compiler dir>/stdlib/mem.spade:90,6" *)
    logic[27:0] _e_663_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:90,48" *)
    logic[23:0] _e_666;
    (* src = "<compiler dir>/stdlib/mem.spade:90,48" *)
    logic[2:0] _e_666_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:90,5" *)
    logic[23:0] _e_662;
    (* src = "<compiler dir>/stdlib/mem.spade:90,5" *)
    logic[30:0] _e_662_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:76,18" *)
    \std::ports::new_mut_wire[1599]  new_mut_wire_0(.input__(\w_addr_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:77,19" *)
    \std::ports::new_mut_wire[1600]  new_mut_wire_1(.input__(\w_write_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:78,18" *)
    \std::ports::new_mut_wire[1599]  new_mut_wire_2(.input__(\r_addr_mut ));
    always @(posedge \write_clk ) begin
        \undef  <= \undef ;
    end
    assign _e_635 = \w_write_mut ;
    assign _e_638 = _e_635;
    assign \w  = _e_635[23:0];
    assign _e_5048 = _e_635[24] == 1'd1;
    localparam[0:0] _e_5049 = 1;
    assign _e_5050 = _e_5048 && _e_5049;
    localparam[0:0] _e_640 = 1;
    assign _e_641 = \w_addr_mut ;
    assign _e_639 = {_e_640, _e_641, \w };
    assign _e_644 = _e_635;
    assign _e_5052 = _e_635[24] == 1'd0;
    localparam[0:0] _e_646 = 0;
    assign _e_647 = \w_addr_mut ;
    assign _e_645 = {_e_646, _e_647, \undef };
    always_comb begin
        priority casez ({_e_5050, _e_5052})
            2'b1?: w_n1 = _e_639;
            2'b01: w_n1 = _e_645;
            2'b?: w_n1 = 28'dx;
        endcase
    end
    assign _e_653 = {w_n1};
    always @(posedge \write_clk ) begin
        if (_e_653[27]) begin
            \mem [_e_653[26:24]] <= _e_653[23:0];
        end
    end
    assign _e_660 = \r_addr_mut ;
    assign _e_658 = \mem [_e_660];
    always @(posedge \read_clk ) begin
        \read_result  <= _e_658;
    end
    assign {\w_addr_mut , \w_write_mut } = _e_663_mut;
    assign _e_666 = {\read_result };
    assign {\r_addr_mut } = _e_666_mut;
    assign _e_662 = {_e_666};
    assign {_e_663_mut, _e_666_mut} = _e_662_mut;
    assign output__ = _e_662;
    assign _e_662_mut = input__;
endmodule

module \std::mem::fifo_impl::fifo_write[1583]  (
        input write_clk_i,
        input write_rst_i,
        output[27:0] mem_o,
        input[2:0] from_w_i, output[2:0] from_w_o,
        input read_clk_i,
        output output__,
        input[24:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo_impl::fifo_write[1583]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo_impl::fifo_write[1583] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic[27:0] \mem_mut ;
    assign mem_o = \mem_mut ;
    logic[2:0] \from_w ;
    assign \from_w  = from_w_i;
    logic[2:0] \from_w_mut ;
    assign from_w_o = \from_w_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:194,22" *)
    logic[2:0] _e_762;
    (* src = "<compiler dir>/stdlib/mem.spade:191,13" *)
    logic[2:0] \read_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:197,13" *)
    logic read_clk_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:199,27" *)
    logic[24:0] \write_value_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:202,26" *)
    logic[3:0] _e_772;
    (* src = "<compiler dir>/stdlib/mem.spade:202,20" *)
    logic[2:0] _e_771;
    (* src = "<compiler dir>/stdlib/mem.spade:202,20" *)
    logic \full ;
    (* src = "<compiler dir>/stdlib/mem.spade:204,68" *)
    logic[24:0] _e_783;
    (* src = "<compiler dir>/stdlib/mem.spade:204,62" *)
    logic[25:0] _e_782;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic[25:0] _e_789;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic[24:0] _e_787;
    (* src = "<compiler dir>/stdlib/mem.spade:205,14" *)
    logic[23:0] \v ;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic _e_788;
    logic _e_5055;
    logic _e_5057;
    logic _e_5058;
    logic _e_5059;
    (* src = "<compiler dir>/stdlib/mem.spade:205,39" *)
    logic[3:0] _e_791;
    (* src = "<compiler dir>/stdlib/mem.spade:205,33" *)
    logic[2:0] _e_790;
    (* src = "<compiler dir>/stdlib/mem.spade:206,13" *)
    logic[25:0] \_ ;
    (* src = "<compiler dir>/stdlib/mem.spade:204,56" *)
    logic[2:0] _e_781;
    (* src = "<compiler dir>/stdlib/mem.spade:204,24" *)
    reg[2:0] \write_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:209,13" *)
    logic[2:0] _e_796_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:210,13" *)
    logic[24:0] _e_800_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:210,39" *)
    logic[24:0] _e_805;
    (* src = "<compiler dir>/stdlib/mem.spade:210,33" *)
    logic[25:0] _e_804;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic[25:0] _e_811;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic[24:0] _e_809;
    (* src = "<compiler dir>/stdlib/mem.spade:211,14" *)
    logic[23:0] v_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic _e_810;
    logic _e_5063;
    logic _e_5065;
    logic _e_5066;
    logic _e_5067;
    (* src = "<compiler dir>/stdlib/mem.spade:211,33" *)
    logic[24:0] _e_812;
    (* src = "<compiler dir>/stdlib/mem.spade:212,13" *)
    logic[25:0] __n1;
    (* src = "<compiler dir>/stdlib/mem.spade:212,18" *)
    logic[24:0] _e_815;
    (* src = "<compiler dir>/stdlib/mem.spade:210,27" *)
    logic[24:0] _e_802;
    (* src = "<compiler dir>/stdlib/mem.spade:215,13" *)
    logic[2:0] _e_816_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:216,9" *)
    logic _e_820;
    (* src = "<compiler dir>/stdlib/mem.spade:216,9" *)
    logic[24:0] _e_820_mut;
    assign _e_762 = \from_w [2:0];
    (* src = "<compiler dir>/stdlib/mem.spade:191,13" *)
    \std::cdc::sync_uint_counter[1601]  sync_uint_counter_0(.source_clk_i(\read_clk ), .dest_clk_i(\write_clk ), .in_i(_e_762), .output__(\read_ptr ));
    localparam[0:0] _e_766 = 0;
    assign read_clk_n1 = _e_766;
    (* src = "<compiler dir>/stdlib/mem.spade:199,27" *)
    \std::ports::new_mut_wire[1600]  new_mut_wire_0(.input__(\write_value_mut ));
    localparam[2:0] _e_774 = 1;
    assign _e_772 = \write_ptr  + _e_774;
    assign _e_771 = _e_772[2:0];
    assign \full  = _e_771 == \read_ptr ;
    localparam[2:0] _e_780 = 0;
    assign _e_783 = \write_value_mut ;
    assign _e_782 = {_e_783, \full };
    assign _e_789 = _e_782;
    assign _e_787 = _e_782[25:1];
    assign \v  = _e_787[23:0];
    assign _e_788 = _e_782[0];
    assign _e_5055 = _e_787[24] == 1'd1;
    localparam[0:0] _e_5056 = 1;
    assign _e_5057 = _e_5055 && _e_5056;
    assign _e_5058 = !_e_788;
    assign _e_5059 = _e_5057 && _e_5058;
    localparam[2:0] _e_793 = 1;
    assign _e_791 = \write_ptr  + _e_793;
    assign _e_790 = _e_791[2:0];
    assign \_  = _e_782;
    localparam[0:0] _e_5060 = 1;
    always_comb begin
        priority casez ({_e_5059, _e_5060})
            2'b1?: _e_781 = _e_790;
            2'b01: _e_781 = \write_ptr ;
            2'b?: _e_781 = 3'dx;
        endcase
    end
    always @(posedge \write_clk ) begin
        if (\write_rst ) begin
            \write_ptr  <= _e_780;
        end
        else begin
            \write_ptr  <= _e_781;
        end
    end
    assign \mem_mut [27:25] = _e_796_mut;
    assign _e_796_mut = \write_ptr ;
    assign \mem_mut [24:0] = _e_800_mut;
    assign _e_805 = \write_value_mut ;
    assign _e_804 = {_e_805, \full };
    assign _e_811 = _e_804;
    assign _e_809 = _e_804[25:1];
    assign v_n1 = _e_809[23:0];
    assign _e_810 = _e_804[0];
    assign _e_5063 = _e_809[24] == 1'd1;
    localparam[0:0] _e_5064 = 1;
    assign _e_5065 = _e_5063 && _e_5064;
    assign _e_5066 = !_e_810;
    assign _e_5067 = _e_5065 && _e_5066;
    assign _e_812 = {1'd1, v_n1};
    assign __n1 = _e_804;
    localparam[0:0] _e_5068 = 1;
    assign _e_815 = {1'd0, 24'bX};
    always_comb begin
        priority casez ({_e_5067, _e_5068})
            2'b1?: _e_802 = _e_812;
            2'b01: _e_802 = _e_815;
            2'b?: _e_802 = 25'dx;
        endcase
    end
    assign _e_800_mut = _e_802;
    assign \from_w_mut [2:0] = _e_816_mut;
    assign _e_816_mut = \write_ptr ;
    assign _e_820 = {\full };
    assign {\write_value_mut } = _e_820_mut;
    assign output__ = _e_820;
    assign _e_820_mut = input__;
endmodule

module \std::mem::fifo_impl::fifo_read[1584]  (
        input read_clk_i,
        input read_rst_i,
        input[23:0] mem_i, output[2:0] mem_o,
        input[2:0] to_w_i, output[2:0] to_w_o,
        input write_clk_i,
        output[27:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo_impl::fifo_read[1584]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo_impl::fifo_read[1584] );
        end
    end
    `endif
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    logic[23:0] \mem ;
    assign \mem  = mem_i;
    logic[2:0] \mem_mut ;
    assign mem_o = \mem_mut ;
    logic[2:0] \to_w ;
    assign \to_w  = to_w_i;
    logic[2:0] \to_w_mut ;
    assign to_w_o = \to_w_mut ;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:143,22" *)
    logic[2:0] _e_675;
    (* src = "<compiler dir>/stdlib/mem.spade:140,13" *)
    logic[2:0] \write_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:146,13" *)
    logic write_clk_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:148,19" *)
    logic \ack_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:151,21" *)
    logic \empty ;
    (* src = "<compiler dir>/stdlib/mem.spade:152,41" *)
    logic _e_689;
    (* src = "<compiler dir>/stdlib/mem.spade:152,35" *)
    logic[1:0] _e_688;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic[1:0] _e_694;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic _e_692;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic _e_693;
    logic _e_5072;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic[1:0] _e_698;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic _e_696;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic _e_697;
    logic _e_5075;
    logic _e_5076;
    (* src = "<compiler dir>/stdlib/mem.spade:154,36" *)
    logic[3:0] _e_700;
    (* src = "<compiler dir>/stdlib/mem.spade:154,30" *)
    logic[2:0] _e_699;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic[1:0] _e_705;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic _e_703;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic \_ ;
    logic _e_5078;
    logic _e_5080;
    (* src = "<compiler dir>/stdlib/mem.spade:152,29" *)
    logic[2:0] \read_ptr_next ;
    (* src = "<compiler dir>/stdlib/mem.spade:157,23" *)
    reg[2:0] \read_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:159,19" *)
    logic[23:0] \out ;
    (* src = "<compiler dir>/stdlib/mem.spade:169,36" *)
    logic _e_721;
    (* src = "<compiler dir>/stdlib/mem.spade:169,58" *)
    logic[3:0] _e_726;
    (* src = "<compiler dir>/stdlib/mem.spade:169,58" *)
    logic[4:0] _e_725;
    logic[4:0] _e_731;
    (* src = "<compiler dir>/stdlib/mem.spade:169,33" *)
    logic[4:0] \write_ptr_abs ;
    logic[4:0] _e_737;
    (* src = "<compiler dir>/stdlib/mem.spade:171,19" *)
    logic[5:0] _e_735;
    (* src = "<compiler dir>/stdlib/mem.spade:171,13" *)
    logic[2:0] \num_elements ;
    (* src = "<compiler dir>/stdlib/mem.spade:174,13" *)
    logic[2:0] _e_740_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:177,23" *)
    logic _e_747;
    (* src = "<compiler dir>/stdlib/mem.spade:177,32" *)
    logic[24:0] _e_750;
    (* src = "<compiler dir>/stdlib/mem.spade:177,51" *)
    logic[24:0] _e_753;
    (* src = "<compiler dir>/stdlib/mem.spade:177,20" *)
    logic[24:0] _e_745;
    (* src = "<compiler dir>/stdlib/mem.spade:176,9" *)
    logic[27:0] _e_744;
    (* src = "<compiler dir>/stdlib/mem.spade:176,9" *)
    logic _e_744_mut;
    assign _e_675 = \to_w [2:0];
    (* src = "<compiler dir>/stdlib/mem.spade:140,13" *)
    \std::cdc::sync_uint_counter[1601]  sync_uint_counter_0(.source_clk_i(\write_clk ), .dest_clk_i(\read_clk ), .in_i(_e_675), .output__(\write_ptr ));
    localparam[0:0] _e_679 = 0;
    assign write_clk_n1 = _e_679;
    (* src = "<compiler dir>/stdlib/mem.spade:148,19" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_0(.input__(\ack_mut ));
    assign \empty  = \write_ptr  == \read_ptr ;
    assign _e_689 = \ack_mut ;
    assign _e_688 = {_e_689, \empty };
    assign _e_694 = _e_688;
    assign _e_692 = _e_688[1];
    assign _e_693 = _e_688[0];
    assign _e_5072 = _e_692 && _e_693;
    assign _e_698 = _e_688;
    assign _e_696 = _e_688[1];
    assign _e_697 = _e_688[0];
    assign _e_5075 = !_e_697;
    assign _e_5076 = _e_696 && _e_5075;
    localparam[2:0] _e_702 = 1;
    assign _e_700 = \read_ptr  + _e_702;
    assign _e_699 = _e_700[2:0];
    assign _e_705 = _e_688;
    assign _e_703 = _e_688[1];
    assign \_  = _e_688[0];
    assign _e_5078 = !_e_703;
    localparam[0:0] _e_5079 = 1;
    assign _e_5080 = _e_5078 && _e_5079;
    always_comb begin
        priority casez ({_e_5072, _e_5076, _e_5080})
            3'b1??: \read_ptr_next  = \read_ptr ;
            3'b01?: \read_ptr_next  = _e_699;
            3'b001: \read_ptr_next  = \read_ptr ;
            3'b?: \read_ptr_next  = 3'dx;
        endcase
    end
    localparam[2:0] _e_711 = 0;
    always @(posedge \read_clk ) begin
        if (\read_rst ) begin
            \read_ptr  <= _e_711;
        end
        else begin
            \read_ptr  <= \read_ptr_next ;
        end
    end
    (* src = "<compiler dir>/stdlib/mem.spade:159,19" *)
    \std::mem::read_read_port[1602]  read_read_port_0(.read_clk_i(\read_clk ), .addr_i(\read_ptr_next ), .p_i(\mem ), .p_o(\mem_mut ), .output__(\out ));
    assign _e_721 = \write_ptr  < \read_ptr ;
    localparam[2:0] _e_728 = 0;
    assign _e_726 = \write_ptr  + _e_728;
    localparam[3:0] _e_729 = 8;
    assign _e_725 = _e_726 + _e_729;
    assign _e_731 = {2'b0, \write_ptr };
    assign \write_ptr_abs  = _e_721 ? _e_725 : _e_731;
    assign _e_737 = {2'b0, \read_ptr };
    assign _e_735 = \write_ptr_abs  - _e_737;
    assign \num_elements  = _e_735[2:0];
    assign \to_w_mut [2:0] = _e_740_mut;
    assign _e_740_mut = \read_ptr ;
    assign _e_747 = !\empty ;
    assign _e_750 = {1'd1, \out };
    assign _e_753 = {1'd0, 24'bX};
    assign _e_745 = _e_747 ? _e_750 : _e_753;
    assign _e_744 = {_e_745, \num_elements };
    assign {\ack_mut } = _e_744_mut;
    assign output__ = _e_744;
    assign _e_744_mut = input__;
endmodule

module \std::mem::dp_bram[1585]  (
        input write_clk_i,
        input read_clk_i,
        output[31:0] output__,
        input[38:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::dp_bram[1585]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::dp_bram[1585] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:76,18" *)
    logic[2:0] \w_addr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:77,19" *)
    logic[32:0] \w_write_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:78,18" *)
    logic[2:0] \r_addr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:80,20" *)
    reg[31:0] \undef ;
    (* src = "<compiler dir>/stdlib/mem.spade:81,24" *)
    logic[32:0] _e_635;
    (* src = "<compiler dir>/stdlib/mem.spade:82,9" *)
    logic[32:0] _e_638;
    (* src = "<compiler dir>/stdlib/mem.spade:82,9" *)
    logic[31:0] \w ;
    logic _e_5082;
    logic _e_5084;
    (* src = "<compiler dir>/stdlib/mem.spade:82,32" *)
    logic[2:0] _e_641;
    (* src = "<compiler dir>/stdlib/mem.spade:82,20" *)
    logic[35:0] _e_639;
    (* src = "<compiler dir>/stdlib/mem.spade:83,9" *)
    logic[32:0] _e_644;
    logic _e_5086;
    (* src = "<compiler dir>/stdlib/mem.spade:83,30" *)
    logic[2:0] _e_647;
    (* src = "<compiler dir>/stdlib/mem.spade:83,17" *)
    logic[35:0] _e_645;
    (* src = "<compiler dir>/stdlib/mem.spade:81,13" *)
    logic[35:0] w_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:86,60" *)
    logic[35:0] _e_653;
    (* src = "<compiler dir>/stdlib/mem.spade:86,29" *)
    logic[32-1:0] \mem [8-1:0];
    (* src = "<compiler dir>/stdlib/mem.spade:88,60" *)
    logic[2:0] _e_660;
    (* src = "<compiler dir>/stdlib/mem.spade:88,33" *)
    logic[31:0] _e_658;
    (* src = "<compiler dir>/stdlib/mem.spade:88,19" *)
    reg[31:0] \read_result ;
    (* src = "<compiler dir>/stdlib/mem.spade:90,6" *)
    logic[35:0] _e_663_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:90,48" *)
    logic[31:0] _e_666;
    (* src = "<compiler dir>/stdlib/mem.spade:90,48" *)
    logic[2:0] _e_666_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:90,5" *)
    logic[31:0] _e_662;
    (* src = "<compiler dir>/stdlib/mem.spade:90,5" *)
    logic[38:0] _e_662_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:76,18" *)
    \std::ports::new_mut_wire[1599]  new_mut_wire_0(.input__(\w_addr_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:77,19" *)
    \std::ports::new_mut_wire[1603]  new_mut_wire_1(.input__(\w_write_mut ));
    (* src = "<compiler dir>/stdlib/mem.spade:78,18" *)
    \std::ports::new_mut_wire[1599]  new_mut_wire_2(.input__(\r_addr_mut ));
    always @(posedge \write_clk ) begin
        \undef  <= \undef ;
    end
    assign _e_635 = \w_write_mut ;
    assign _e_638 = _e_635;
    assign \w  = _e_635[31:0];
    assign _e_5082 = _e_635[32] == 1'd1;
    localparam[0:0] _e_5083 = 1;
    assign _e_5084 = _e_5082 && _e_5083;
    localparam[0:0] _e_640 = 1;
    assign _e_641 = \w_addr_mut ;
    assign _e_639 = {_e_640, _e_641, \w };
    assign _e_644 = _e_635;
    assign _e_5086 = _e_635[32] == 1'd0;
    localparam[0:0] _e_646 = 0;
    assign _e_647 = \w_addr_mut ;
    assign _e_645 = {_e_646, _e_647, \undef };
    always_comb begin
        priority casez ({_e_5084, _e_5086})
            2'b1?: w_n1 = _e_639;
            2'b01: w_n1 = _e_645;
            2'b?: w_n1 = 36'dx;
        endcase
    end
    assign _e_653 = {w_n1};
    always @(posedge \write_clk ) begin
        if (_e_653[35]) begin
            \mem [_e_653[34:32]] <= _e_653[31:0];
        end
    end
    assign _e_660 = \r_addr_mut ;
    assign _e_658 = \mem [_e_660];
    always @(posedge \read_clk ) begin
        \read_result  <= _e_658;
    end
    assign {\w_addr_mut , \w_write_mut } = _e_663_mut;
    assign _e_666 = {\read_result };
    assign {\r_addr_mut } = _e_666_mut;
    assign _e_662 = {_e_666};
    assign {_e_663_mut, _e_666_mut} = _e_662_mut;
    assign output__ = _e_662;
    assign _e_662_mut = input__;
endmodule

module \std::mem::fifo_impl::fifo_write[1586]  (
        input write_clk_i,
        input write_rst_i,
        output[35:0] mem_o,
        input[2:0] from_w_i, output[2:0] from_w_o,
        input read_clk_i,
        output output__,
        input[32:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo_impl::fifo_write[1586]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo_impl::fifo_write[1586] );
        end
    end
    `endif
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    logic \write_rst ;
    assign \write_rst  = write_rst_i;
    logic[35:0] \mem_mut ;
    assign mem_o = \mem_mut ;
    logic[2:0] \from_w ;
    assign \from_w  = from_w_i;
    logic[2:0] \from_w_mut ;
    assign from_w_o = \from_w_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:194,22" *)
    logic[2:0] _e_762;
    (* src = "<compiler dir>/stdlib/mem.spade:191,13" *)
    logic[2:0] \read_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:197,13" *)
    logic read_clk_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:199,27" *)
    logic[32:0] \write_value_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:202,26" *)
    logic[3:0] _e_772;
    (* src = "<compiler dir>/stdlib/mem.spade:202,20" *)
    logic[2:0] _e_771;
    (* src = "<compiler dir>/stdlib/mem.spade:202,20" *)
    logic \full ;
    (* src = "<compiler dir>/stdlib/mem.spade:204,68" *)
    logic[32:0] _e_783;
    (* src = "<compiler dir>/stdlib/mem.spade:204,62" *)
    logic[33:0] _e_782;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic[33:0] _e_789;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic[32:0] _e_787;
    (* src = "<compiler dir>/stdlib/mem.spade:205,14" *)
    logic[31:0] \v ;
    (* src = "<compiler dir>/stdlib/mem.spade:205,13" *)
    logic _e_788;
    logic _e_5089;
    logic _e_5091;
    logic _e_5092;
    logic _e_5093;
    (* src = "<compiler dir>/stdlib/mem.spade:205,39" *)
    logic[3:0] _e_791;
    (* src = "<compiler dir>/stdlib/mem.spade:205,33" *)
    logic[2:0] _e_790;
    (* src = "<compiler dir>/stdlib/mem.spade:206,13" *)
    logic[33:0] \_ ;
    (* src = "<compiler dir>/stdlib/mem.spade:204,56" *)
    logic[2:0] _e_781;
    (* src = "<compiler dir>/stdlib/mem.spade:204,24" *)
    reg[2:0] \write_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:209,13" *)
    logic[2:0] _e_796_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:210,13" *)
    logic[32:0] _e_800_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:210,39" *)
    logic[32:0] _e_805;
    (* src = "<compiler dir>/stdlib/mem.spade:210,33" *)
    logic[33:0] _e_804;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic[33:0] _e_811;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic[32:0] _e_809;
    (* src = "<compiler dir>/stdlib/mem.spade:211,14" *)
    logic[31:0] v_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:211,13" *)
    logic _e_810;
    logic _e_5097;
    logic _e_5099;
    logic _e_5100;
    logic _e_5101;
    (* src = "<compiler dir>/stdlib/mem.spade:211,33" *)
    logic[32:0] _e_812;
    (* src = "<compiler dir>/stdlib/mem.spade:212,13" *)
    logic[33:0] __n1;
    (* src = "<compiler dir>/stdlib/mem.spade:212,18" *)
    logic[32:0] _e_815;
    (* src = "<compiler dir>/stdlib/mem.spade:210,27" *)
    logic[32:0] _e_802;
    (* src = "<compiler dir>/stdlib/mem.spade:215,13" *)
    logic[2:0] _e_816_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:216,9" *)
    logic _e_820;
    (* src = "<compiler dir>/stdlib/mem.spade:216,9" *)
    logic[32:0] _e_820_mut;
    assign _e_762 = \from_w [2:0];
    (* src = "<compiler dir>/stdlib/mem.spade:191,13" *)
    \std::cdc::sync_uint_counter[1601]  sync_uint_counter_0(.source_clk_i(\read_clk ), .dest_clk_i(\write_clk ), .in_i(_e_762), .output__(\read_ptr ));
    localparam[0:0] _e_766 = 0;
    assign read_clk_n1 = _e_766;
    (* src = "<compiler dir>/stdlib/mem.spade:199,27" *)
    \std::ports::new_mut_wire[1603]  new_mut_wire_0(.input__(\write_value_mut ));
    localparam[2:0] _e_774 = 1;
    assign _e_772 = \write_ptr  + _e_774;
    assign _e_771 = _e_772[2:0];
    assign \full  = _e_771 == \read_ptr ;
    localparam[2:0] _e_780 = 0;
    assign _e_783 = \write_value_mut ;
    assign _e_782 = {_e_783, \full };
    assign _e_789 = _e_782;
    assign _e_787 = _e_782[33:1];
    assign \v  = _e_787[31:0];
    assign _e_788 = _e_782[0];
    assign _e_5089 = _e_787[32] == 1'd1;
    localparam[0:0] _e_5090 = 1;
    assign _e_5091 = _e_5089 && _e_5090;
    assign _e_5092 = !_e_788;
    assign _e_5093 = _e_5091 && _e_5092;
    localparam[2:0] _e_793 = 1;
    assign _e_791 = \write_ptr  + _e_793;
    assign _e_790 = _e_791[2:0];
    assign \_  = _e_782;
    localparam[0:0] _e_5094 = 1;
    always_comb begin
        priority casez ({_e_5093, _e_5094})
            2'b1?: _e_781 = _e_790;
            2'b01: _e_781 = \write_ptr ;
            2'b?: _e_781 = 3'dx;
        endcase
    end
    always @(posedge \write_clk ) begin
        if (\write_rst ) begin
            \write_ptr  <= _e_780;
        end
        else begin
            \write_ptr  <= _e_781;
        end
    end
    assign \mem_mut [35:33] = _e_796_mut;
    assign _e_796_mut = \write_ptr ;
    assign \mem_mut [32:0] = _e_800_mut;
    assign _e_805 = \write_value_mut ;
    assign _e_804 = {_e_805, \full };
    assign _e_811 = _e_804;
    assign _e_809 = _e_804[33:1];
    assign v_n1 = _e_809[31:0];
    assign _e_810 = _e_804[0];
    assign _e_5097 = _e_809[32] == 1'd1;
    localparam[0:0] _e_5098 = 1;
    assign _e_5099 = _e_5097 && _e_5098;
    assign _e_5100 = !_e_810;
    assign _e_5101 = _e_5099 && _e_5100;
    assign _e_812 = {1'd1, v_n1};
    assign __n1 = _e_804;
    localparam[0:0] _e_5102 = 1;
    assign _e_815 = {1'd0, 32'bX};
    always_comb begin
        priority casez ({_e_5101, _e_5102})
            2'b1?: _e_802 = _e_812;
            2'b01: _e_802 = _e_815;
            2'b?: _e_802 = 33'dx;
        endcase
    end
    assign _e_800_mut = _e_802;
    assign \from_w_mut [2:0] = _e_816_mut;
    assign _e_816_mut = \write_ptr ;
    assign _e_820 = {\full };
    assign {\write_value_mut } = _e_820_mut;
    assign output__ = _e_820;
    assign _e_820_mut = input__;
endmodule

module \std::mem::fifo_impl::fifo_read[1587]  (
        input read_clk_i,
        input read_rst_i,
        input[31:0] mem_i, output[2:0] mem_o,
        input[2:0] to_w_i, output[2:0] to_w_o,
        input write_clk_i,
        output[35:0] output__,
        input input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::fifo_impl::fifo_read[1587]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::fifo_impl::fifo_read[1587] );
        end
    end
    `endif
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic \read_rst ;
    assign \read_rst  = read_rst_i;
    logic[31:0] \mem ;
    assign \mem  = mem_i;
    logic[2:0] \mem_mut ;
    assign mem_o = \mem_mut ;
    logic[2:0] \to_w ;
    assign \to_w  = to_w_i;
    logic[2:0] \to_w_mut ;
    assign to_w_o = \to_w_mut ;
    logic \write_clk ;
    assign \write_clk  = write_clk_i;
    (* src = "<compiler dir>/stdlib/mem.spade:143,22" *)
    logic[2:0] _e_675;
    (* src = "<compiler dir>/stdlib/mem.spade:140,13" *)
    logic[2:0] \write_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:146,13" *)
    logic write_clk_n1;
    (* src = "<compiler dir>/stdlib/mem.spade:148,19" *)
    logic \ack_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:151,21" *)
    logic \empty ;
    (* src = "<compiler dir>/stdlib/mem.spade:152,41" *)
    logic _e_689;
    (* src = "<compiler dir>/stdlib/mem.spade:152,35" *)
    logic[1:0] _e_688;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic[1:0] _e_694;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic _e_692;
    (* src = "<compiler dir>/stdlib/mem.spade:153,13" *)
    logic _e_693;
    logic _e_5106;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic[1:0] _e_698;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic _e_696;
    (* src = "<compiler dir>/stdlib/mem.spade:154,13" *)
    logic _e_697;
    logic _e_5109;
    logic _e_5110;
    (* src = "<compiler dir>/stdlib/mem.spade:154,36" *)
    logic[3:0] _e_700;
    (* src = "<compiler dir>/stdlib/mem.spade:154,30" *)
    logic[2:0] _e_699;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic[1:0] _e_705;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic _e_703;
    (* src = "<compiler dir>/stdlib/mem.spade:155,13" *)
    logic \_ ;
    logic _e_5112;
    logic _e_5114;
    (* src = "<compiler dir>/stdlib/mem.spade:152,29" *)
    logic[2:0] \read_ptr_next ;
    (* src = "<compiler dir>/stdlib/mem.spade:157,23" *)
    reg[2:0] \read_ptr ;
    (* src = "<compiler dir>/stdlib/mem.spade:159,19" *)
    logic[31:0] \out ;
    (* src = "<compiler dir>/stdlib/mem.spade:169,36" *)
    logic _e_721;
    (* src = "<compiler dir>/stdlib/mem.spade:169,58" *)
    logic[3:0] _e_726;
    (* src = "<compiler dir>/stdlib/mem.spade:169,58" *)
    logic[4:0] _e_725;
    logic[4:0] _e_731;
    (* src = "<compiler dir>/stdlib/mem.spade:169,33" *)
    logic[4:0] \write_ptr_abs ;
    logic[4:0] _e_737;
    (* src = "<compiler dir>/stdlib/mem.spade:171,19" *)
    logic[5:0] _e_735;
    (* src = "<compiler dir>/stdlib/mem.spade:171,13" *)
    logic[2:0] \num_elements ;
    (* src = "<compiler dir>/stdlib/mem.spade:174,13" *)
    logic[2:0] _e_740_mut;
    (* src = "<compiler dir>/stdlib/mem.spade:177,23" *)
    logic _e_747;
    (* src = "<compiler dir>/stdlib/mem.spade:177,32" *)
    logic[32:0] _e_750;
    (* src = "<compiler dir>/stdlib/mem.spade:177,51" *)
    logic[32:0] _e_753;
    (* src = "<compiler dir>/stdlib/mem.spade:177,20" *)
    logic[32:0] _e_745;
    (* src = "<compiler dir>/stdlib/mem.spade:176,9" *)
    logic[35:0] _e_744;
    (* src = "<compiler dir>/stdlib/mem.spade:176,9" *)
    logic _e_744_mut;
    assign _e_675 = \to_w [2:0];
    (* src = "<compiler dir>/stdlib/mem.spade:140,13" *)
    \std::cdc::sync_uint_counter[1601]  sync_uint_counter_0(.source_clk_i(\write_clk ), .dest_clk_i(\read_clk ), .in_i(_e_675), .output__(\write_ptr ));
    localparam[0:0] _e_679 = 0;
    assign write_clk_n1 = _e_679;
    (* src = "<compiler dir>/stdlib/mem.spade:148,19" *)
    \std::ports::new_mut_wire[1451]  new_mut_wire_0(.input__(\ack_mut ));
    assign \empty  = \write_ptr  == \read_ptr ;
    assign _e_689 = \ack_mut ;
    assign _e_688 = {_e_689, \empty };
    assign _e_694 = _e_688;
    assign _e_692 = _e_688[1];
    assign _e_693 = _e_688[0];
    assign _e_5106 = _e_692 && _e_693;
    assign _e_698 = _e_688;
    assign _e_696 = _e_688[1];
    assign _e_697 = _e_688[0];
    assign _e_5109 = !_e_697;
    assign _e_5110 = _e_696 && _e_5109;
    localparam[2:0] _e_702 = 1;
    assign _e_700 = \read_ptr  + _e_702;
    assign _e_699 = _e_700[2:0];
    assign _e_705 = _e_688;
    assign _e_703 = _e_688[1];
    assign \_  = _e_688[0];
    assign _e_5112 = !_e_703;
    localparam[0:0] _e_5113 = 1;
    assign _e_5114 = _e_5112 && _e_5113;
    always_comb begin
        priority casez ({_e_5106, _e_5110, _e_5114})
            3'b1??: \read_ptr_next  = \read_ptr ;
            3'b01?: \read_ptr_next  = _e_699;
            3'b001: \read_ptr_next  = \read_ptr ;
            3'b?: \read_ptr_next  = 3'dx;
        endcase
    end
    localparam[2:0] _e_711 = 0;
    always @(posedge \read_clk ) begin
        if (\read_rst ) begin
            \read_ptr  <= _e_711;
        end
        else begin
            \read_ptr  <= \read_ptr_next ;
        end
    end
    (* src = "<compiler dir>/stdlib/mem.spade:159,19" *)
    \std::mem::read_read_port[1604]  read_read_port_0(.read_clk_i(\read_clk ), .addr_i(\read_ptr_next ), .p_i(\mem ), .p_o(\mem_mut ), .output__(\out ));
    assign _e_721 = \write_ptr  < \read_ptr ;
    localparam[2:0] _e_728 = 0;
    assign _e_726 = \write_ptr  + _e_728;
    localparam[3:0] _e_729 = 8;
    assign _e_725 = _e_726 + _e_729;
    assign _e_731 = {2'b0, \write_ptr };
    assign \write_ptr_abs  = _e_721 ? _e_725 : _e_731;
    assign _e_737 = {2'b0, \read_ptr };
    assign _e_735 = \write_ptr_abs  - _e_737;
    assign \num_elements  = _e_735[2:0];
    assign \to_w_mut [2:0] = _e_740_mut;
    assign _e_740_mut = \read_ptr ;
    assign _e_747 = !\empty ;
    assign _e_750 = {1'd1, \out };
    assign _e_753 = {1'd0, 32'bX};
    assign _e_745 = _e_747 ? _e_750 : _e_753;
    assign _e_744 = {_e_745, \num_elements };
    assign {\ack_mut } = _e_744_mut;
    assign output__ = _e_744;
    assign _e_744_mut = input__;
endmodule

module \std::array::impl_0::map[1588]  (
        input self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::map[1588]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::map[1588] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    logic \result ;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    \std::array::std::array::impl_0::map::F[1605]  F_0(.self_i(\self ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::array::impl_0::concat[1589]  (
        input self_i,
        input other_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::concat[1589]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::concat[1589] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic \other ;
    assign \other  = other_i;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    logic[1:0] _e_74;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    \std::conv::concat_arrays[1606]  concat_arrays_0(.l_i(\self ), .r_i(\other ), .output__(_e_74));
    assign output__ = _e_74;
endmodule

module \nstd::array::impl_32::fold[1590]  (
        input self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::fold[1590]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::fold[1590] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    \nstd::array::nstd::array::impl_32::fold::F[1607]  F_0(.self_i(\self ), .init_i(\init ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::array::impl_0::map[1591]  (
        input self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::map[1591]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::map[1591] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    logic \result ;
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    \std::array::std::array::impl_0::map::F[1608]  F_0(.self_i(\self ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \nstd::array::impl_32::fold[1592]  (
        input self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::fold[1592]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::fold[1592] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    \nstd::array::nstd::array::impl_32::fold::F[1609]  F_0(.self_i(\self ), .init_i(\init ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::conv::std::conv::flip_array::T[1593]  (
        
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::std::conv::flip_array::T[1593]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::std::conv::flip_array::T[1593] );
        end
    end
    `endif
    
endmodule

module \std::ports::new_mut_wire[1594]  (
        input[11:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ports::new_mut_wire[1594]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ports::new_mut_wire[1594] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[11:0] _e_5115;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[11:0] _e_5116_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[11:0] _e_1124;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[11:0] _e_1124_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[11:0] _e_1123_mut;
    
    assign _e_5115 = _e_5116_mut;
    assign _e_1124 = {_e_5115};
    assign {_e_5116_mut} = _e_1124_mut;
    assign _e_1124_mut[11:0] = _e_1123_mut;
    assign _e_1123_mut = input__;
endmodule

module \std::ports::new_mut_wire[1595]  (
        input[16:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ports::new_mut_wire[1595]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ports::new_mut_wire[1595] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[16:0] _e_5117;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[16:0] _e_5118_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[16:0] _e_1124;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[16:0] _e_1124_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[16:0] _e_1123_mut;
    
    assign _e_5117 = _e_5118_mut;
    assign _e_1124 = {_e_5117};
    assign {_e_5118_mut} = _e_1124_mut;
    assign _e_1124_mut[16:0] = _e_1123_mut;
    assign _e_1123_mut = input__;
endmodule

module \std::cdc::sync_uint_counter[1596]  (
        input source_clk_i,
        input dest_clk_i,
        input[11:0] in_i,
        output[11:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::sync_uint_counter[1596]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::sync_uint_counter[1596] );
        end
    end
    `endif
    logic \source_clk ;
    assign \source_clk  = source_clk_i;
    logic \dest_clk ;
    assign \dest_clk  = dest_clk_i;
    logic[11:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:25,28" *)
    logic[11:0] _e_128;
    (* src = "<compiler dir>/stdlib/cdc.spade:25,21" *)
    reg[11:0] \gray ;
    (* src = "<compiler dir>/stdlib/cdc.spade:26,26" *)
    logic[11:0] _e_132;
    (* src = "<compiler dir>/stdlib/cdc.spade:26,5" *)
    logic[11:0] _e_130;
    (* src = "<compiler dir>/stdlib/cdc.spade:25,28" *)
    \std::ops::bin_to_gray[1610]  bin_to_gray_0(.x_i(\in ), .output__(_e_128));
    always @(posedge \source_clk ) begin
        \gray  <= _e_128;
    end
    (* src = "<compiler dir>/stdlib/cdc.spade:26,26" *)
    \std::cdc::sync2[1611]  sync2_0(.clk_i(\dest_clk ), .in_i(\gray ), .output__(_e_132));
    (* src = "<compiler dir>/stdlib/cdc.spade:26,5" *)
    \std::ops::gray_to_bin[1612]  gray_to_bin_0(.gray_i(_e_132), .output__(_e_130));
    assign output__ = _e_130;
endmodule

module \std::mem::read_read_port[1597]  (
        input read_clk_i,
        input[11:0] addr_i,
        input[15:0] p_i, output[11:0] p_o,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::read_read_port[1597]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::read_read_port[1597] );
        end
    end
    `endif
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic[11:0] \addr ;
    assign \addr  = addr_i;
    logic[15:0] \p ;
    assign \p  = p_i;
    logic[11:0] \p_mut ;
    assign p_o = \p_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:69,1" *)
    reg[11:0] \s1_addr ;
    (* src = "<compiler dir>/stdlib/mem.spade:68,18" *)
    logic[15:0] \result ;
    always @(posedge \read_clk ) begin
        \s1_addr  <= \addr ;
    end
    (* src = "<compiler dir>/stdlib/mem.spade:68,18" *)
    \std::mem::impl_11::read[1615]  read_0(.self_i(\p ), .self_o(\p_mut ), .read_clk_i(\read_clk ), .addr_i(\addr ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \nstd::array::nstd::array::impl_35::contains::T[1598]  (
        input[7:0] needle_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_35::contains::T[1598]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_35::contains::T[1598] );
        end
    end
    `endif
    logic[7:0] \needle ;
    assign \needle  = needle_i;
    localparam[0:0] _e_3496 = 0;
    assign output__ = _e_3496;
endmodule

module \std::ports::new_mut_wire[1599]  (
        input[2:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ports::new_mut_wire[1599]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ports::new_mut_wire[1599] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[2:0] _e_5119;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[2:0] _e_5120_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[2:0] _e_1124;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[2:0] _e_1124_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[2:0] _e_1123_mut;
    
    assign _e_5119 = _e_5120_mut;
    assign _e_1124 = {_e_5119};
    assign {_e_5120_mut} = _e_1124_mut;
    assign _e_1124_mut[2:0] = _e_1123_mut;
    assign _e_1123_mut = input__;
endmodule

module \std::ports::new_mut_wire[1600]  (
        input[24:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ports::new_mut_wire[1600]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ports::new_mut_wire[1600] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[24:0] _e_5121;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[24:0] _e_5122_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[24:0] _e_1124;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[24:0] _e_1124_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[24:0] _e_1123_mut;
    
    assign _e_5121 = _e_5122_mut;
    assign _e_1124 = {_e_5121};
    assign {_e_5122_mut} = _e_1124_mut;
    assign _e_1124_mut[24:0] = _e_1123_mut;
    assign _e_1123_mut = input__;
endmodule

module \std::cdc::sync_uint_counter[1601]  (
        input source_clk_i,
        input dest_clk_i,
        input[2:0] in_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::sync_uint_counter[1601]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::sync_uint_counter[1601] );
        end
    end
    `endif
    logic \source_clk ;
    assign \source_clk  = source_clk_i;
    logic \dest_clk ;
    assign \dest_clk  = dest_clk_i;
    logic[2:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:25,28" *)
    logic[2:0] _e_128;
    (* src = "<compiler dir>/stdlib/cdc.spade:25,21" *)
    reg[2:0] \gray ;
    (* src = "<compiler dir>/stdlib/cdc.spade:26,26" *)
    logic[2:0] _e_132;
    (* src = "<compiler dir>/stdlib/cdc.spade:26,5" *)
    logic[2:0] _e_130;
    (* src = "<compiler dir>/stdlib/cdc.spade:25,28" *)
    \std::ops::bin_to_gray[1616]  bin_to_gray_0(.x_i(\in ), .output__(_e_128));
    always @(posedge \source_clk ) begin
        \gray  <= _e_128;
    end
    (* src = "<compiler dir>/stdlib/cdc.spade:26,26" *)
    \std::cdc::sync2[1617]  sync2_0(.clk_i(\dest_clk ), .in_i(\gray ), .output__(_e_132));
    (* src = "<compiler dir>/stdlib/cdc.spade:26,5" *)
    \std::ops::gray_to_bin[1618]  gray_to_bin_0(.gray_i(_e_132), .output__(_e_130));
    assign output__ = _e_130;
endmodule

module \std::mem::read_read_port[1602]  (
        input read_clk_i,
        input[2:0] addr_i,
        input[23:0] p_i, output[2:0] p_o,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::read_read_port[1602]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::read_read_port[1602] );
        end
    end
    `endif
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic[2:0] \addr ;
    assign \addr  = addr_i;
    logic[23:0] \p ;
    assign \p  = p_i;
    logic[2:0] \p_mut ;
    assign p_o = \p_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:69,1" *)
    reg[2:0] \s1_addr ;
    (* src = "<compiler dir>/stdlib/mem.spade:68,18" *)
    logic[23:0] \result ;
    always @(posedge \read_clk ) begin
        \s1_addr  <= \addr ;
    end
    (* src = "<compiler dir>/stdlib/mem.spade:68,18" *)
    \std::mem::impl_11::read[1621]  read_0(.self_i(\p ), .self_o(\p_mut ), .read_clk_i(\read_clk ), .addr_i(\addr ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ports::new_mut_wire[1603]  (
        input[32:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ports::new_mut_wire[1603]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ports::new_mut_wire[1603] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[32:0] _e_5123;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[32:0] _e_5124_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[32:0] _e_1124;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[32:0] _e_1124_mut;
    (* src = "<compiler dir>/stdlib/ports.spade:2,5" *)
    logic[32:0] _e_1123_mut;
    
    assign _e_5123 = _e_5124_mut;
    assign _e_1124 = {_e_5123};
    assign {_e_5124_mut} = _e_1124_mut;
    assign _e_1124_mut[32:0] = _e_1123_mut;
    assign _e_1123_mut = input__;
endmodule

module \std::mem::read_read_port[1604]  (
        input read_clk_i,
        input[2:0] addr_i,
        input[31:0] p_i, output[2:0] p_o,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::read_read_port[1604]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::read_read_port[1604] );
        end
    end
    `endif
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic[2:0] \addr ;
    assign \addr  = addr_i;
    logic[31:0] \p ;
    assign \p  = p_i;
    logic[2:0] \p_mut ;
    assign p_o = \p_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:69,1" *)
    reg[2:0] \s1_addr ;
    (* src = "<compiler dir>/stdlib/mem.spade:68,18" *)
    logic[31:0] \result ;
    always @(posedge \read_clk ) begin
        \s1_addr  <= \addr ;
    end
    (* src = "<compiler dir>/stdlib/mem.spade:68,18" *)
    \std::mem::impl_11::read[1624]  read_0(.self_i(\p ), .self_o(\p_mut ), .read_clk_i(\read_clk ), .addr_i(\addr ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::array::std::array::impl_0::map::F[1605]  (
        input self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::std::array::impl_0::map::F[1605]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::std::array::impl_0::map::F[1605] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:36,22" *)
    logic _e_87;
    (* src = "<compiler dir>/stdlib/array.spade:36,21" *)
    logic _e_86;
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    logic _e_84;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic _e_83;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic _e_82;
    assign _e_87 = \self ;
    assign _e_86 = {_e_87};
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    \nstd::array::impl_37::call[1550]  call_0(.args_i(_e_86), .output__(_e_84));
    assign _e_83 = {_e_84};
    
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    \std::array::impl_0::map[1625]  map_0();
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    \std::array::impl_0::concat[1626]  concat_0(.self_i(_e_83), .output__(_e_82));
    assign output__ = _e_82;
endmodule

module \std::conv::concat_arrays[1606]  (
        input l_i,
        input r_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1606]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1606] );
        end
    end
    `endif
    logic \l ;
    assign \l  = l_i;
    logic \r ;
    assign \r  = r_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic[1:0] _e_428;
    logic[1:0] _e_427;
    assign _e_428 = {\r , \l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \nstd::array::nstd::array::impl_32::fold::F[1607]  (
        input self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_32::fold::F[1607]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_32::fold::F[1607] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic \rest ;
    (* src = "build/libs/nstd/src/array.spade:10,27" *)
    logic _e_3414;
    (* src = "build/libs/nstd/src/array.spade:10,20" *)
    logic[1:0] _e_3412;
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    logic _e_3410;
    
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    \nstd::array::impl_32::fold[1627]  fold_0(.init_i(\init ), .output__(\rest ));
    assign _e_3414 = \self ;
    assign _e_3412 = {\rest , _e_3414};
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    \nstd::array::impl_34::call[1554]  call_0(.args_i(_e_3412), .output__(_e_3410));
    assign output__ = _e_3410;
endmodule

module \std::array::std::array::impl_0::map::F[1608]  (
        input self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::std::array::impl_0::map::F[1608]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::std::array::impl_0::map::F[1608] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:36,22" *)
    logic _e_87;
    (* src = "<compiler dir>/stdlib/array.spade:36,21" *)
    logic _e_86;
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    logic _e_84;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic _e_83;
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    logic _e_82;
    assign _e_87 = \self ;
    assign _e_86 = {_e_87};
    (* src = "<compiler dir>/stdlib/array.spade:36,14" *)
    \nstd::array::impl_38::call[1555]  call_0(.args_i(_e_86), .output__(_e_84));
    assign _e_83 = {_e_84};
    
    (* src = "<compiler dir>/stdlib/array.spade:36,41" *)
    \std::array::impl_0::map[1628]  map_0();
    (* src = "<compiler dir>/stdlib/array.spade:36,13" *)
    \std::array::impl_0::concat[1626]  concat_0(.self_i(_e_83), .output__(_e_82));
    assign output__ = _e_82;
endmodule

module \nstd::array::nstd::array::impl_32::fold::F[1609]  (
        input self_i,
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_32::fold::F[1609]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_32::fold::F[1609] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    logic \rest ;
    (* src = "build/libs/nstd/src/array.spade:10,27" *)
    logic _e_3414;
    (* src = "build/libs/nstd/src/array.spade:10,20" *)
    logic[1:0] _e_3412;
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    logic _e_3410;
    
    (* src = "build/libs/nstd/src/array.spade:8,24" *)
    \nstd::array::impl_32::fold[1629]  fold_0(.init_i(\init ), .output__(\rest ));
    assign _e_3414 = \self ;
    assign _e_3412 = {\rest , _e_3414};
    (* src = "build/libs/nstd/src/array.spade:10,13" *)
    \nstd::array::impl_33::call[1558]  call_0(.args_i(_e_3412), .output__(_e_3410));
    assign output__ = _e_3410;
endmodule

module \std::ops::bin_to_gray[1610]  (
        input[11:0] x_i,
        output[11:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::bin_to_gray[1610]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::bin_to_gray[1610] );
        end
    end
    `endif
    logic[11:0] \x ;
    assign \x  = x_i;
    (* src = "<compiler dir>/stdlib/ops.spade:58,5" *)
    logic[11:0] _e_895;
    (* src = "<compiler dir>/stdlib/ops.spade:58,5" *)
    logic[11:0] _e_894;
    localparam[11:0] _e_897 = 1;
    assign _e_895 = \x  >> _e_897;
    assign _e_894 = _e_895 ^ \x ;
    assign output__ = _e_894;
endmodule

module \std::cdc::sync2[1611]  (
        input clk_i,
        input[11:0] in_i,
        output[11:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::sync2[1611]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::sync2[1611] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic[11:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:16,14" *)
    reg[11:0] \sync1 ;
    (* src = "<compiler dir>/stdlib/cdc.spade:17,14" *)
    reg[11:0] \sync2 ;
    always @(posedge \clk ) begin
        \sync1  <= \in ;
    end
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign output__ = \sync2 ;
endmodule

module \std::ops::gray_to_bin[1612]  (
        input[11:0] gray_i,
        output[11:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1612]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1612] );
        end
    end
    `endif
    logic[11:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[11:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1630]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::mem::impl_11::read[1615]  (
        input[15:0] self_i, output[11:0] self_o,
        input read_clk_i,
        input[11:0] addr_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::impl_11::read[1615]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::impl_11::read[1615] );
        end
    end
    `endif
    logic[15:0] \self ;
    assign \self  = self_i;
    logic[11:0] \self_mut ;
    assign self_o = \self_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic[11:0] \addr ;
    assign \addr  = addr_i;
    (* src = "<compiler dir>/stdlib/mem.spade:61,5" *)
    reg[11:0] \s1_addr ;
    (* src = "<compiler dir>/stdlib/mem.spade:59,13" *)
    logic[11:0] \saddr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:59,13" *)
    logic[15:0] \sout ;
    always @(posedge \read_clk ) begin
        \s1_addr  <= \addr ;
    end
    assign \self_mut [11:0] = \saddr_mut ;
    assign \sout  = \self [15:0];
    assign \saddr_mut  = \addr ;
    assign output__ = \sout ;
endmodule

module \std::ops::bin_to_gray[1616]  (
        input[2:0] x_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::bin_to_gray[1616]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::bin_to_gray[1616] );
        end
    end
    `endif
    logic[2:0] \x ;
    assign \x  = x_i;
    (* src = "<compiler dir>/stdlib/ops.spade:58,5" *)
    logic[2:0] _e_895;
    (* src = "<compiler dir>/stdlib/ops.spade:58,5" *)
    logic[2:0] _e_894;
    localparam[2:0] _e_897 = 1;
    assign _e_895 = \x  >> _e_897;
    assign _e_894 = _e_895 ^ \x ;
    assign output__ = _e_894;
endmodule

module \std::cdc::sync2[1617]  (
        input clk_i,
        input[2:0] in_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::cdc::sync2[1617]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::cdc::sync2[1617] );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic[2:0] \in ;
    assign \in  = in_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:16,14" *)
    reg[2:0] \sync1 ;
    (* src = "<compiler dir>/stdlib/cdc.spade:17,14" *)
    reg[2:0] \sync2 ;
    always @(posedge \clk ) begin
        \sync1  <= \in ;
    end
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign output__ = \sync2 ;
endmodule

module \std::ops::gray_to_bin[1618]  (
        input[2:0] gray_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1618]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1618] );
        end
    end
    `endif
    logic[2:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[2:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1633]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::mem::impl_11::read[1621]  (
        input[23:0] self_i, output[2:0] self_o,
        input read_clk_i,
        input[2:0] addr_i,
        output[23:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::impl_11::read[1621]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::impl_11::read[1621] );
        end
    end
    `endif
    logic[23:0] \self ;
    assign \self  = self_i;
    logic[2:0] \self_mut ;
    assign self_o = \self_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic[2:0] \addr ;
    assign \addr  = addr_i;
    (* src = "<compiler dir>/stdlib/mem.spade:61,5" *)
    reg[2:0] \s1_addr ;
    (* src = "<compiler dir>/stdlib/mem.spade:59,13" *)
    logic[2:0] \saddr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:59,13" *)
    logic[23:0] \sout ;
    always @(posedge \read_clk ) begin
        \s1_addr  <= \addr ;
    end
    assign \self_mut [2:0] = \saddr_mut ;
    assign \sout  = \self [23:0];
    assign \saddr_mut  = \addr ;
    assign output__ = \sout ;
endmodule

module \std::mem::impl_11::read[1624]  (
        input[31:0] self_i, output[2:0] self_o,
        input read_clk_i,
        input[2:0] addr_i,
        output[31:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::mem::impl_11::read[1624]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::mem::impl_11::read[1624] );
        end
    end
    `endif
    logic[31:0] \self ;
    assign \self  = self_i;
    logic[2:0] \self_mut ;
    assign self_o = \self_mut ;
    logic \read_clk ;
    assign \read_clk  = read_clk_i;
    logic[2:0] \addr ;
    assign \addr  = addr_i;
    (* src = "<compiler dir>/stdlib/mem.spade:61,5" *)
    reg[2:0] \s1_addr ;
    (* src = "<compiler dir>/stdlib/mem.spade:59,13" *)
    logic[2:0] \saddr_mut ;
    (* src = "<compiler dir>/stdlib/mem.spade:59,13" *)
    logic[31:0] \sout ;
    always @(posedge \read_clk ) begin
        \s1_addr  <= \addr ;
    end
    assign \self_mut [2:0] = \saddr_mut ;
    assign \sout  = \self [31:0];
    assign \saddr_mut  = \addr ;
    assign output__ = \sout ;
endmodule

module \std::array::impl_0::map[1625]  (
        
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::map[1625]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::map[1625] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    \std::array::std::array::impl_0::map::T[1638]  T_0();
endmodule

module \std::array::impl_0::concat[1626]  (
        input self_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::concat[1626]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::concat[1626] );
        end
    end
    `endif
    logic \self ;
    assign \self  = self_i;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    logic _e_74;
    (* src = "<compiler dir>/stdlib/array.spade:27,9" *)
    \std::conv::concat_arrays[1639]  concat_arrays_0(.l_i(\self ), .output__(_e_74));
    assign output__ = _e_74;
endmodule

module \nstd::array::impl_32::fold[1627]  (
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::fold[1627]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::fold[1627] );
        end
    end
    `endif
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    \nstd::array::nstd::array::impl_32::fold::T[1640]  T_0(.init_i(\init ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::array::impl_0::map[1628]  (
        
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::impl_0::map[1628]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::impl_0::map[1628] );
        end
    end
    `endif
    (* src = "<compiler dir>/stdlib/array.spade:32,5" *)
    \std::array::std::array::impl_0::map::T[1641]  T_0();
endmodule

module \nstd::array::impl_32::fold[1629]  (
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::impl_32::fold[1629]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::impl_32::fold[1629] );
        end
    end
    `endif
    logic \init ;
    assign \init  = init_i;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    logic \result ;
    (* src = "build/libs/nstd/src/array.spade:4,5" *)
    \nstd::array::nstd::array::impl_32::fold::T[1642]  T_0(.init_i(\init ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1630]  (
        input[11:0] gray_i,
        output[11:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1630]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1630] );
        end
    end
    `endif
    logic[11:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[11:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1643]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1633]  (
        input[2:0] gray_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1633]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1633] );
        end
    end
    `endif
    logic[2:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[2:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1644]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::array::std::array::impl_0::map::T[1638]  (
        
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::std::array::impl_0::map::T[1638]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::std::array::impl_0::map::T[1638] );
        end
    end
    `endif
    
endmodule

module \std::conv::concat_arrays[1639]  (
        input l_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::conv::concat_arrays[1639]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::conv::concat_arrays[1639] );
        end
    end
    `endif
    logic \l ;
    assign \l  = l_i;
    (* src = "<compiler dir>/stdlib/conv.spade:25,30" *)
    logic _e_428;
    logic _e_427;
    assign _e_428 = {\l };
    assign _e_427 = _e_428;
    assign output__ = _e_427;
endmodule

module \nstd::array::nstd::array::impl_32::fold::T[1640]  (
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_32::fold::T[1640]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_32::fold::T[1640] );
        end
    end
    `endif
    logic \init ;
    assign \init  = init_i;
    assign output__ = \init ;
endmodule

module \std::array::std::array::impl_0::map::T[1641]  (
        
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::array::std::array::impl_0::map::T[1641]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::array::std::array::impl_0::map::T[1641] );
        end
    end
    `endif
    
endmodule

module \nstd::array::nstd::array::impl_32::fold::T[1642]  (
        input init_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "nstd::array::nstd::array::impl_32::fold::T[1642]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \nstd::array::nstd::array::impl_32::fold::T[1642] );
        end
    end
    `endif
    logic \init ;
    assign \init  = init_i;
    assign output__ = \init ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1643]  (
        input[11:0] gray_i,
        output[11:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1643]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1643] );
        end
    end
    `endif
    logic[11:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[11:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[11:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[11:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[11:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[10:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[10:0] _e_923;
    logic[11:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[11:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[10:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[11:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[10:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1645]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1644]  (
        input[2:0] gray_i,
        output[2:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1644]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1644] );
        end
    end
    `endif
    logic[2:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[2:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[2:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[2:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[2:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[1:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[1:0] _e_923;
    logic[2:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[2:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[1:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[2:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[1:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1646]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::gray_to_bin[1645]  (
        input[10:0] gray_i,
        output[10:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1645]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1645] );
        end
    end
    `endif
    logic[10:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[10:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1647]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::gray_to_bin[1646]  (
        input[1:0] gray_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1646]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1646] );
        end
    end
    `endif
    logic[1:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[1:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1648]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1647]  (
        input[10:0] gray_i,
        output[10:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1647]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1647] );
        end
    end
    `endif
    logic[10:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[10:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1649]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1648]  (
        input[1:0] gray_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1648]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1648] );
        end
    end
    `endif
    logic[1:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[1:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1650]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1649]  (
        input[10:0] gray_i,
        output[10:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1649]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1649] );
        end
    end
    `endif
    logic[10:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[10:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[10:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[10:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[10:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[9:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[9:0] _e_923;
    logic[10:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[10:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[9:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[10:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[9:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1651]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1650]  (
        input[1:0] gray_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1650]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1650] );
        end
    end
    `endif
    logic[1:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[1:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[1:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[1:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[1:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic _e_923;
    logic[1:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[1:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[0:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[1:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[0:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1652]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::gray_to_bin[1651]  (
        input[9:0] gray_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1651]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1651] );
        end
    end
    `endif
    logic[9:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[9:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1653]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::gray_to_bin[1652]  (
        input gray_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1652]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1652] );
        end
    end
    `endif
    logic \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1654]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1653]  (
        input[9:0] gray_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1653]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1653] );
        end
    end
    `endif
    logic[9:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[9:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1655]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1654]  (
        input gray_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1654]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1654] );
        end
    end
    `endif
    logic \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::T[1656]  T_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1655]  (
        input[9:0] gray_i,
        output[9:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1655]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1655] );
        end
    end
    `endif
    logic[9:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[9:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[9:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[9:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[9:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[8:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[8:0] _e_923;
    logic[9:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[9:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[8:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[9:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[8:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1657]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::T[1656]  (
        input gray_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::T[1656]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::T[1656] );
        end
    end
    `endif
    logic \gray ;
    assign \gray  = gray_i;
    assign output__ = \gray ;
endmodule

module \std::ops::gray_to_bin[1657]  (
        input[8:0] gray_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1657]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1657] );
        end
    end
    `endif
    logic[8:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[8:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1658]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1658]  (
        input[8:0] gray_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1658]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1658] );
        end
    end
    `endif
    logic[8:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[8:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1659]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1659]  (
        input[8:0] gray_i,
        output[8:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1659]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1659] );
        end
    end
    `endif
    logic[8:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[8:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[8:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[8:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[8:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[7:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[7:0] _e_923;
    logic[8:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[8:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[7:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[8:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[7:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1660]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::gray_to_bin[1660]  (
        input[7:0] gray_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1660]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1660] );
        end
    end
    `endif
    logic[7:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[7:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1661]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1661]  (
        input[7:0] gray_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1661]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1661] );
        end
    end
    `endif
    logic[7:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[7:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1662]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1662]  (
        input[7:0] gray_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1662]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1662] );
        end
    end
    `endif
    logic[7:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[7:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[7:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[7:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[7:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[6:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[6:0] _e_923;
    logic[7:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[7:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[6:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[7:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[6:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1663]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::gray_to_bin[1663]  (
        input[6:0] gray_i,
        output[6:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1663]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1663] );
        end
    end
    `endif
    logic[6:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[6:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1664]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1664]  (
        input[6:0] gray_i,
        output[6:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1664]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1664] );
        end
    end
    `endif
    logic[6:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[6:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1665]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1665]  (
        input[6:0] gray_i,
        output[6:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1665]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1665] );
        end
    end
    `endif
    logic[6:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[6:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[6:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[6:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[6:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[5:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[5:0] _e_923;
    logic[6:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[6:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[5:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[6:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[5:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1666]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::gray_to_bin[1666]  (
        input[5:0] gray_i,
        output[5:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1666]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1666] );
        end
    end
    `endif
    logic[5:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[5:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1667]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1667]  (
        input[5:0] gray_i,
        output[5:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1667]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1667] );
        end
    end
    `endif
    logic[5:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[5:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1668]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1668]  (
        input[5:0] gray_i,
        output[5:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1668]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1668] );
        end
    end
    `endif
    logic[5:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[5:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[5:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[5:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[5:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[4:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[4:0] _e_923;
    logic[5:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[5:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[4:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[5:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[4:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1669]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::gray_to_bin[1669]  (
        input[4:0] gray_i,
        output[4:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1669]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1669] );
        end
    end
    `endif
    logic[4:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[4:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1670]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1670]  (
        input[4:0] gray_i,
        output[4:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1670]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1670] );
        end
    end
    `endif
    logic[4:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[4:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1671]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1671]  (
        input[4:0] gray_i,
        output[4:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1671]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1671] );
        end
    end
    `endif
    logic[4:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[4:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[4:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[4:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[4:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[3:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[3:0] _e_923;
    logic[4:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[4:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[3:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[4:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[3:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1672]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule

module \std::ops::gray_to_bin[1672]  (
        input[3:0] gray_i,
        output[3:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::gray_to_bin[1672]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::gray_to_bin[1672] );
        end
    end
    `endif
    logic[3:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    logic[3:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:62,51" *)
    \std::ops::std::ops::gray_to_bin::F[1673]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::gray_to_bin::F[1673]  (
        input[3:0] gray_i,
        output[3:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::gray_to_bin::F[1673]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::gray_to_bin::F[1673] );
        end
    end
    `endif
    logic[3:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    logic[3:0] \result ;
    (* src = "<compiler dir>/stdlib/ops.spade:67,12" *)
    \std::ops::std::ops::std::ops::gray_to_bin::F::F[1674]  F_0(.gray_i(\gray ), .output__(\result ));
    assign output__ = \result ;
endmodule

module \std::ops::std::ops::std::ops::gray_to_bin::F::F[1674]  (
        input[3:0] gray_i,
        output[3:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::ops::std::ops::std::ops::gray_to_bin::F::F[1674]" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::ops::std::ops::std::ops::gray_to_bin::F::F[1674] );
        end
    end
    `endif
    logic[3:0] \gray ;
    assign \gray  = gray_i;
    (* src = "<compiler dir>/stdlib/ops.spade:68,47" *)
    logic[3:0] _e_909;
    (* src = "<compiler dir>/stdlib/ops.spade:68,33" *)
    logic[3:0] \high_bit ;
    (* src = "<compiler dir>/stdlib/ops.spade:69,54" *)
    logic[3:0] _e_916;
    (* src = "<compiler dir>/stdlib/ops.spade:69,47" *)
    logic[3:0] _e_914;
    (* src = "<compiler dir>/stdlib/ops.spade:69,41" *)
    logic[2:0] \lower_gray ;
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    logic[2:0] _e_923;
    logic[3:0] _e_922;
    (* src = "<compiler dir>/stdlib/ops.spade:70,9" *)
    logic[3:0] _e_920;
    localparam[0:0] _e_910 = 1;
    localparam[2:0] _e_911 = 0;
    assign _e_909 = {_e_910, _e_911};
    assign \high_bit  = \gray  & _e_909;
    localparam[3:0] _e_918 = 1;
    assign _e_916 = \high_bit  >> _e_918;
    assign _e_914 = \gray  ^ _e_916;
    assign \lower_gray  = _e_914[2:0];
    (* src = "<compiler dir>/stdlib/ops.spade:70,25" *)
    \std::ops::gray_to_bin[1618]  gray_to_bin_0(.gray_i(\lower_gray ), .output__(_e_923));
    assign _e_922 = {1'b0, _e_923};
    assign _e_920 = \high_bit  | _e_922;
    assign output__ = _e_920;
endmodule
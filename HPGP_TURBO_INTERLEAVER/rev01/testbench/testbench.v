`timescale 1ps/1ps

module testbench();

    reg clk;
    reg n_rst;
    reg [1:0] pb_size;
    reg [1:0] din;
    reg din_vld;

    wire [1:0] rdata;
    wire [1:0] rdata_itl;
    //wire rdata_ditl;
    wire dout_vld;

    top dut_top(
        .clk(clk),
        .n_rst(n_rst),
        .pb_size(pb_size),
        .din(din),
        .din_vld(din_vld),
        .rdata(rdata),
        .rdata_itl(rdata_itl),
        //.rdata_ditl(rdata_ditl),
        .dout_vld(dout_vld)
    );

    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        pb_size = 2'h3;
        din = 2'b00;
        din_vld = 1'b0;
        #27;
        din_vld = 1'b1;
        #10;
        din = 2'b01;
        din_vld = 1'b0;
        #10;
        din = 2'b10;
        #10;
        din = 2'b01;
        #10;
        din = 2'b10;
        #10;
        din = 2'b01;
        #10;
        din = 2'b10;
        #10;
        din = 2'b01;
        #10;
        din = 2'b10;
        #10;
        din = 2'b01;
        #10;
        din = 2'b10;
        #10;


        #150;

        $stop;
    end
endmodule


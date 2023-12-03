`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    reg [5:0] link_id;
    reg din;
    reg din_vld;
    reg request;
    //reg wen;

    wire rdata;
    wire rdata_itl;

    top dut_top(
        .clk(clk),
        .n_rst(n_rst),
        .link_id(link_id),
        .din(din),
        .din_vld(din_vld),
        .request(request),
        .rdata(rdata),
        .rdata_itl(rdata_itl)
        //.wen(wen)
    );

    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        din = 1'b0;
        din_vld = 1'b0;
        link_id = 6'h00;
        request = 1'b0;
        //wen = 1'b0;
        #27;
        link_id = 6'h05;
        #10;
        din_vld = 1'b1;
        //wen = 1'b1;
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        din_vld = 1'b0;
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;
        din = 1'b1; //
        #10;
        din = 1'b0; //
        #10;

        //wen = 1'b0;
        #3000;

        request = 1'b1;
        #10;
        request = 1'b0;
        #30;
        request = 1'b1;
        #20;
        request = 1'b0;
        #10;
        request = 1'b1;
        #50;
        request = 1'b0;
        #300;

        $stop;

    end


endmodule



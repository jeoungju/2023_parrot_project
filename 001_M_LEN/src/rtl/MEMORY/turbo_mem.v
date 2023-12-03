`timescale 1ps/1ps
//Memory
module terbo_mem (
    input clk,
    input n_rst,
    input [15:0] enable

);
    localparam D_WIDTH = 13;
    localparam A_WIDTH = 16;

    wire [A_WIDTH-1:0] rom_addr;     wire [D_WIDTH-1:0] rom_data;

    assign rom_addr  = enable;

    rom #(  .D_WIDTH(13),   .A_WIDTH(16)  ) u_rom (
	.addr(rom_addr),
	.clk(clk),
	.data(rom_data)
	);
endmodule


module de0_memory (
    clk, n_rst,
    sw
);

parameter D_WIDTH = 13;
parameter A_WIDTH = 16;

input clk;                  input n_rst;
input [5:0] sw;


wire [A_WIDTH-1:0] rom_addr;     wire [D_WIDTH-1:0] rom_data;
reg  [A_WIDTH-1:0] ram_waddr;   wire [D_WIDTH-1:0] ram_wdata;
reg  ram_wen;
wire [A_WIDTH-1:0] ram_raddr;   wire [D_WIDTH-1:0] ram_rdata;

assign rom_addr  = {sw[4:0]};

always @(posedge clk or negedge n_rst)
    if (!n_rst) begin
        ram_waddr <= 16'h0000;
        ram_wen <= 1'b0;
    end
    else begin
        ram_waddr <= rom_addr;
        ram_wen <= sw[5];
    end

assign ram_wdata = rom_data;
assign ram_raddr = (ram_wen == 1'b1)? ram_waddr - 16'h0001: 
			rom_addr;

rom #(  .D_WIDTH(13),   .A_WIDTH(16)  ) u_rom (
	.addr(rom_addr),
	.clk(clk),
	.data(rom_data)
	);

ram #(  .D_WIDTH(13),  .A_WIDTH(16)  ) u_ram (
	.clk (clk),
	.waddr(ram_waddr),
	.wen(ram_wen),
	.wdata(ram_wdata),
	.raddr(ram_raddr),
	.rdata(ram_rdata)
);

endmodule

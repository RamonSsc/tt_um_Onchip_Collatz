`timescale 1ns / 1ps


module tt_um_ccollatz_SergioOliveros_tb(
    );
    
    reg clk;
    reg start;
    reg [7:0] N;
    wire [7:0] c;
    wire [7:0] busy;
    //wire [7:0] n;
    
tt_um_ccollatz_SergioOliveros uut(
    .clk(clk),
    .rst_n(start),
    .ui_in(N),
    .uio_out(c),
    .uo_out(busy)
    //.n(n)
);

initial 
    begin
        N = 8'd51;
    end
    
always #5 clk = ~clk;

initial begin  
        clk <= 0;
        start <= 1'b1;
        #10
            
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10000;        
end
endmodule

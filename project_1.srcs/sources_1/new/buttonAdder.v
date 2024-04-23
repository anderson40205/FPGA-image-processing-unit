`timescale 1ns / 1ps

module buttonAdder(
    input wire btn_a,
    input wire btn_b,
    input wire btn_c,
    input wire btn_d,
    output [7:0] output_valueh,
    output [7:0] output_valuel
    );
    reg [7:0] counterh = 8'd80; // 初始值為 80
    reg [7:0] counterl = 8'd10; // 初始值為 80

    always@(posedge btn_a or posedge btn_b)begin
        if(btn_a==1'd1)
            counterh <= counterh + 8'd1;
        else if(btn_b==1'd1)
            counterh <= counterh - 8'd1;
    end
    always@(posedge btn_c or posedge btn_d)begin
        if(btn_c==1'd1)
            counterl <= counterl + 8'd1;
        else if(btn_d==1'd1)
            counterl <= counterl - 8'd1;
    end
    
    assign output_valueh = counterh;
    assign output_valuel = counterl;
endmodule

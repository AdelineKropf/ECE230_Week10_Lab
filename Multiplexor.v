module Multiplexor_4(
    input [7:0] input0,
    input [7:0] input1,
    input [7:0] input2,
    input [7:0] input3,
    input [1:0] sel,
    output reg [7:0] out
);

always @(*) begin 
        case(sel)
            2'b00: out = input0; 
            2'b01: out = input1;
            2'b10: out = input2;
            2'b11: out = input3;
        endcase
    end

endmodule


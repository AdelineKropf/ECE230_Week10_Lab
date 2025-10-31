module Demultiplexor_4(
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
);

    always @(*) begin 
        case(sel)
            2'b00: {D, C, B, A} <= {8'd0, 8'd0, 8'd0, data}; 
            2'b01: {D, C, B, A} <= {8'd0, 8'd0, data, 8'd0};
            2'b10: {D, C, B, A} <= {8'd0, data, 8'd0, 8'd0};
            2'b11: {D, C, B, A} <= {data, 8'd0, 8'd0, 8'd0};
        endcase
    end

endmodule
module Demux(
    input  E,
    input [1:0] sel,
    output reg  out0,
    output reg  out1,
    output reg  out2,
    output reg  out3
);

    always @(*) begin 
        case(sel)
            2'b00: {out3, out2, out1, out0} <= {1'd0, 1'd0, 1'd0, E}; 
            2'b01: {out3, out2, out1, out0} <= {1'd0, 1'd0, E, 1'd0};
            2'b10: {out3, out2, out1, out0} <= {1'd0, E, 1'd0, 1'd0};
            2'b11: {out3, out2, out1, out0} <= {E, 1'd0, 1'd0, 1'd0};
        endcase
    end

endmodule
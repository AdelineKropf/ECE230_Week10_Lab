module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
    );
    
    wire [7:0] arr [3:0];
    
    Demultiplexor_4 first(
        .data(data),
        .sel(addr),
        .A(arr[0]),
        .B(arr[1]),
        .C(arr[2]),
        .D(arr[3])
    );
    
    wire carry [3:0];
    
    Demux second(
        .E(store),
        .sel(addr),
        .out0(carry[0]),
        .out1(carry[1]),
        .out2(carry[2]),
        .out3(carry[3])
    );
    
    wire [7:0] arrOutByte [3:0];
    
    byte_memory firstByte(
        .data(arr[0]),
        .store(carry[0]),
        .memory(arrOutByte[0])
    );
    
    byte_memory secondByte(
        .data(arr[1]),
        .store(carry[1]),
        .memory(arrOutByte[1])
    );
    
    byte_memory thirdByte(
        .data(arr[2]),
        .store(carry[2]),
        .memory(arrOutByte[2])
    );
    
    byte_memory fourthByte(
        .data(arr[3]),
        .store(carry[3]),
        .memory(arrOutByte[3])
    );
    
    wire [7:0] finalVal;
    
    Multiplexor_4 last(
        .input0(arrOutByte[0]),
        .input1(arrOutByte[1]),
        .input2(arrOutByte[2]),
        .input3(arrOutByte[3]),
        .sel(addr),
        .out(finalVal)
    );
    
    assign memory = finalVal;
          
endmodule

module binary(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] state
);
    wire [2:0] Next;

    //A=000 B=001 C=010 D=011 E=100
    assign Next[0] = (state[0] & state[1] & ~w) | (w & ~state[0] & ~state[2]) | (w & ~state[1] & ~state[2]) | (~state[0] & ~state[1] & ~w);
    assign Next[1] = (state[0] & ~state[1]) |(state[1] & ~state[0]) |(w & ~state[1] & ~state[2]);
    assign Next[2] = (state[2] & w) | (state[0] & state[1] & w);

    //Output when C and E
    assign z = (~state[2] & state[1] & ~state[0]) | (state[2] & ~state[1] & ~state[0]);

    dff ff0(.Default(1'b0), .D(Next[0]), .clk(clk), .reset(reset), .Q(state[0]));
    dff ff1(.Default(1'b0), .D(Next[1]), .clk(clk), .reset(reset), .Q(state[1]));
    dff ff2(.Default(1'b0), .D(Next[2]), .clk(clk), .reset(reset), .Q(state[2]));
    
endmodule

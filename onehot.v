module onehot(
    input w,
    input clk,
    input reset,
    output z,
    output [4:0] state
);
    wire [4:0] Next;

    //States
    assign Next[0] = 1'b0;
    assign Next[1] = ~w & (state[0] | state[3] | state[4]);
    assign Next[2] = ~w & (state[1] | state[2]);
    assign Next[3] = w & (state[0] | state[1] | state[2]);
    assign Next[4] = w & (state[3] | state[4]);
    assign z = state[2] | state[4];

    dff ff0(.Default(1'b1), .D(Next[0]), .clk(clk), .reset(reset), .Q(state[0]));
    dff ff1(.Default(1'b0), .D(Next[1]), .clk(clk), .reset(reset), .Q(state[1]));
    dff ff2(.Default(1'b0), .D(Next[2]), .clk(clk), .reset(reset), .Q(state[2]));
    dff ff3(.Default(1'b0), .D(Next[3]), .clk(clk), .reset(reset), .Q(state[3]));
    dff ff4(.Default(1'b0), .D(Next[4]), .clk(clk), .reset(reset), .Q(state[4]));
    
endmodule

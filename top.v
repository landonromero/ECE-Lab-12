module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines
    
    onehot onehot_fsm(
        .w(sw), 
        .clk(btnC), 
        .reset(btnU),
        .z(led[0]), 
        .state(led[6:2])
    );

    binary binary_fsm(
        .w(sw), 
        .clk(btnC), 
        .reset(btnU),
        .z(led[1]), 
        .state(led[9:7])
    );

endmodule
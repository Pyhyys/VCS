module phase (
    input V_PWM_C,
    output phi1,
    output phi2
);

    wire net1, net2, net3, net4, net5, net6, net7;

    // Inverter 1
    assign net1 = ~V_PWM_C;

    // NAND gate 1 (assuming AND)
    assign net2 = ~(net1 && net7);  

    // Inverter 2
    assign net3 = ~net2;

    // Inverter 4
    assign net4 = ~net3;

    // NAND gate 2
    assign net5 = ~(net4 && V_PWM_C);

    // Inverter 3
    assign net6 = ~net5;

    // Inverter 5
    assign net7 = ~net6;


    // Output
    assign phi1 = net3;
    assign phi2 = net6;

endmodule


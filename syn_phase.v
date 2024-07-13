/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Jun 27 14:13:42 2024
/////////////////////////////////////////////////////////////


module phase ( V_PWM_C, phi1, phi2 );
  input V_PWM_C;
  output phi1, phi2;
  wire   V_PWM_C;
  assign phi2 = V_PWM_C;

  INV_X1M_A9TR U2 ( .A(V_PWM_C), .Y(phi1) );
endmodule


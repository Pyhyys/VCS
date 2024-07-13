`timescale 1ns/1ps

`define END_TIME 400

module tb();
    // Inputs
    reg V_PWM_C;
    
    // Outputs
    wire phi1, phi2;
    
// Module
phase u_phase(
    .V_PWM_C(V_PWM_C),
    .phi1(phi1),
    .phi2(phi2)
);

// SDF
`ifdef SDF_FILE
	initial $sdf_annotate(`SDF_FILE, u_phase);
`endif

// SIM
always #20 V_PWM_C = ~V_PWM_C;

initial begin
V_PWM_C=0;

#10;
$display("V_PWM_C = %d",V_PWM_C);
$display("phi1 = %d  phi2=%d",phi1,phi2);

end

// Finish CTR
initial 
	begin
		#`END_TIME;
		$finish;
	end


initial begin

$fsdbDumpfile("tb.fsdb");
$fsdbDumpvars;
$fsdbDumpMDA;

end



endmodule
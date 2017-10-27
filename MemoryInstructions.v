module MemoryInstructions (
	input [19:0] address,
	output [31:0] instruction
);
	parameter size = 150;
	integer initialize = 1; //Responsável por inicializar a matriz de instruções.
	reg [31:0] instructionM [size-1:0];
	
	assign instruction = instructionM[address];
	
	always@ (*) begin
		if (initialize == 1) begin
instructionM[0] = {6'd8, 6'bxxxxxx, 20'd66};
instructionM[1] = {6'd12, 5'd29, 21'd0};
instructionM[2] = {6'd0, 5'd1, 5'd29, 10'd0, 6'd1};
instructionM[3] = {6'd4, 5'd1, 1'bx, 20'd2};
instructionM[4] = {6'd1, 5'd11, 1'bx, 20'd2};
instructionM[5] = {6'd2, 5'd22, 21'd1};
instructionM[6] = {6'd0, 5'd1, 5'd11, 5'd22, 5'bxxxxx, 6'd15};
instructionM[7] = {6'd6, 5'd1, 5'd0, 16'd15};
instructionM[8] = {6'd2, 5'd21, 21'd100};
instructionM[9] = {6'd0, 5'd29, 5'd21, 10'd0, 6'd1};
instructionM[10] = {6'd14, 26'dx};
instructionM[11] = {6'd13, 5'd29, 21'd0};
instructionM[12] = {6'd2, 5'd21, 21'd0};
instructionM[13] = {6'd4, 5'd21, 1'bx, 20'd0};
instructionM[14] = {6'd8, 6'bxxxxxx, 20'd19};
instructionM[15] = {6'd2, 5'd21, 21'd0};
instructionM[16] = {6'd0, 5'd29, 5'd21, 10'd0, 6'd1};
instructionM[17] = {6'd14, 26'dx};
instructionM[18] = {6'd13, 5'd29, 21'd0};
instructionM[19] = {6'd1, 5'd30, 1'bx, 20'd1};
instructionM[20] = {6'd9, 5'd30, 21'd0};
instructionM[21] = {6'd2, 5'd21, 21'd3};
instructionM[22] = {6'd0, 5'd29, 5'd21, 10'd0, 6'd1};
instructionM[23] = {6'd14, 26'dx};
instructionM[24] = {6'd13, 5'd29, 21'd0};
instructionM[25] = {6'd2, 5'd21, 21'd28};
instructionM[26] = {6'd4, 5'd21, 1'bx, 20'd1};
instructionM[27] = {6'd8, 6'bxxxxxx, 20'd1};
instructionM[28] = {6'd1, 5'd30, 1'bx, 20'd5};
instructionM[29] = {6'd9, 5'd30, 21'd0};
instructionM[30] = {6'd12, 5'd29, 21'd0};
instructionM[31] = {6'd0, 5'd1, 5'd29, 10'd0, 6'd1};
instructionM[32] = {6'd4, 5'd1, 1'bx, 20'd7};
instructionM[33] = {6'd1, 5'd11, 1'bx, 20'd7};
instructionM[34] = {6'd0, 5'd29, 5'd11, 10'd0, 6'd1};
instructionM[35] = {6'd14, 26'dx};
instructionM[36] = {6'd13, 5'd29, 21'd0};
instructionM[37] = {6'd2, 5'd21, 21'd40};
instructionM[38] = {6'd4, 5'd21, 1'bx, 20'd1};
instructionM[39] = {6'd8, 6'bxxxxxx, 20'd1};
instructionM[40] = {6'd1, 5'd30, 1'bx, 20'd6};
instructionM[41] = {6'd9, 5'd30, 21'd0};
instructionM[42] = {6'd2, 5'd21, 21'd4};
instructionM[43] = {6'd4, 5'd21, 1'bx, 20'd9};
instructionM[44] = {6'd1, 5'd11, 1'bx, 20'd9};
instructionM[45] = {6'd0, 5'd29, 5'd11, 10'd0, 6'd1};
instructionM[46] = {6'd14, 26'dx};
instructionM[47] = {6'd13, 5'd29, 21'd0};
instructionM[48] = {6'd2, 5'd21, 21'd51};
instructionM[49] = {6'd4, 5'd21, 1'bx, 20'd1};
instructionM[50] = {6'd8, 6'bxxxxxx, 20'd1};
instructionM[51] = {6'd1, 5'd30, 1'bx, 20'd8};
instructionM[52] = {6'd9, 5'd30, 21'd0};
instructionM[53] = {6'd2, 5'd21, 21'd3};
instructionM[54] = {6'd2, 5'd22, 21'd5};
instructionM[55] = {6'd0, 5'd1, 5'd21, 5'd22, 5'bxxxxx, 6'd0};
instructionM[56] = {6'd0, 5'd29, 5'd1, 10'd0, 6'd1};
instructionM[57] = {6'd14, 26'dx};
instructionM[58] = {6'd13, 5'd29, 21'd0};
instructionM[59] = {6'd2, 5'd21, 21'd62};
instructionM[60] = {6'd4, 5'd21, 1'bx, 20'd1};
instructionM[61] = {6'd8, 6'bxxxxxx, 20'd1};
instructionM[62] = {6'd1, 5'd30, 1'bx, 20'd10};
instructionM[63] = {6'd9, 5'd30, 21'd0};
instructionM[64] = {6'd1, 5'd30, 1'bx, 20'd11};
instructionM[65] = {6'd9, 5'd30, 21'd0};
instructionM[66] = {6'd2, 5'd21, 21'd1};
instructionM[67] = {6'd4, 5'd21, 1'bx, 20'd0};
instructionM[68] = {6'd1, 5'd11, 1'bx, 20'd0};
instructionM[69] = {6'd2, 5'd22, 21'd1};
instructionM[70] = {6'd0, 5'd1, 5'd11, 5'd22, 5'bxxxxx, 6'd15};
instructionM[71] = {6'd6, 5'd1, 5'd0, 16'd76};
instructionM[72] = {6'd2, 5'd21, 21'd75};
instructionM[73] = {6'd4, 5'd21, 1'bx, 20'd5};
instructionM[74] = {6'd8, 6'bxxxxxx, 20'd21};
instructionM[75] = {6'd8, 6'bxxxxxx, 20'd68};
instructionM[76] = {6'd2, 5'd21, 21'd1};
instructionM[77] = {6'd4, 5'd21, 1'bx, 20'd0};
instructionM[78] = {6'd1, 5'd11, 1'bx, 20'd0};
instructionM[79] = {6'd2, 5'd22, 21'd1};
instructionM[80] = {6'd0, 5'd1, 5'd11, 5'd22, 5'bxxxxx, 6'd15};
instructionM[81] = {6'd6, 5'd1, 5'd0, 16'd86};
instructionM[82] = {6'd2, 5'd21, 21'd85};
instructionM[83] = {6'd4, 5'd21, 1'bx, 20'd6};
instructionM[84] = {6'd8, 6'bxxxxxx, 20'd30};
instructionM[85] = {6'd8, 6'bxxxxxx, 20'd78};
instructionM[86] = {6'd2, 5'd21, 21'd1};
instructionM[87] = {6'd4, 5'd21, 1'bx, 20'd0};
instructionM[88] = {6'd1, 5'd11, 1'bx, 20'd0};
instructionM[89] = {6'd2, 5'd22, 21'd1};
instructionM[90] = {6'd0, 5'd1, 5'd11, 5'd22, 5'bxxxxx, 6'd15};
instructionM[91] = {6'd6, 5'd1, 5'd0, 16'd96};
instructionM[92] = {6'd2, 5'd21, 21'd95};
instructionM[93] = {6'd4, 5'd21, 1'bx, 20'd8};
instructionM[94] = {6'd8, 6'bxxxxxx, 20'd42};
instructionM[95] = {6'd8, 6'bxxxxxx, 20'd88};
instructionM[96] = {6'd2, 5'd21, 21'd1};
instructionM[97] = {6'd4, 5'd21, 1'bx, 20'd0};
instructionM[98] = {6'd1, 5'd11, 1'bx, 20'd0};
instructionM[99] = {6'd2, 5'd22, 21'd1};
instructionM[100] = {6'd0, 5'd1, 5'd11, 5'd22, 5'bxxxxx, 6'd15};
instructionM[101] = {6'd6, 5'd1, 5'd0, 16'd106};
instructionM[102] = {6'd2, 5'd21, 21'd105};
instructionM[103] = {6'd4, 5'd21, 1'bx, 20'd10};
instructionM[104] = {6'd8, 6'bxxxxxx, 20'd53};
instructionM[105] = {6'd8, 6'bxxxxxx, 20'd98};
instructionM[106] = {6'd11, 5'd29, 21'd0};


		initialize <= 0;
		end
	end
	
endmodule

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
instructionM[0] = {6'd8, 6'bxxxxxx, 20'd24};
instructionM[1] = {6'd2, 5'd21, 21'd0};
instructionM[2] = {6'd4, 5'd21, 1'bx, 20'd3};
instructionM[3] = {6'd2, 5'd21, 21'd1};
instructionM[4] = {6'd4, 5'd21, 1'bx, 20'd4};
instructionM[5] = {6'd1, 5'd11, 1'bx, 20'd3};
instructionM[6] = {6'd1, 5'd12, 1'bx, 20'd2};
instructionM[7] = {6'd0, 5'd1, 5'd11, 5'd12, 5'bxxxxx, 6'd11};
instructionM[8] = {6'd6, 5'd1, 5'd0, 16'd18};
instructionM[9] = {6'd1, 5'd13, 1'bx, 20'd4};
instructionM[10] = {6'd1, 5'd14, 1'bx, 20'd1};
instructionM[11] = {6'd0, 5'd1, 5'd13, 5'd14, 5'bxxxxx, 6'd17};
instructionM[12] = {6'd4, 5'd1, 1'bx, 20'd4};
instructionM[13] = {6'd1, 5'd15, 1'bx, 20'd3};
instructionM[14] = {6'd2, 5'd22, 21'd1};
instructionM[15] = {6'd0, 5'd1, 5'd15, 5'd22, 5'bxxxxx, 6'd0};
instructionM[16] = {6'd4, 5'd1, 1'bx, 20'd3};
instructionM[17] = {6'd8, 6'bxxxxxx, 20'd5};
instructionM[18] = {6'd1, 5'd16, 1'bx, 20'd4};
instructionM[19] = {6'd0, 5'd31, 5'd16, 10'd0, 6'd1};
instructionM[20] = {6'd1, 5'd30, 1'bx, 20'd0};
instructionM[21] = {6'd9, 5'd30, 21'd0};
instructionM[22] = {6'd1, 5'd30, 1'bx, 20'd0};
instructionM[23] = {6'd9, 5'd30, 21'd0};
instructionM[24] = {6'd2, 5'd21, 21'd3};
instructionM[25] = {6'd4, 5'd21, 1'bx, 20'd6};
instructionM[26] = {6'd2, 5'd21, 21'd4};
instructionM[27] = {6'd4, 5'd21, 1'bx, 20'd7};
instructionM[28] = {6'd1, 5'd11, 1'bx, 20'd6};
instructionM[29] = {6'd4, 5'd11, 1'bx, 20'd1};
instructionM[30] = {6'd1, 5'd12, 1'bx, 20'd7};
instructionM[31] = {6'd4, 5'd12, 1'bx, 20'd2};
instructionM[32] = {6'd2, 5'd21, 21'd35};
instructionM[33] = {6'd4, 5'd21, 1'bx, 20'd0};
instructionM[34] = {6'd8, 6'bxxxxxx, 20'd1};
instructionM[35] = {6'd0, 5'd1, 5'd31, 10'd0, 6'd1};
instructionM[36] = {6'd0, 5'd29, 5'd1, 10'd0, 6'd1};
instructionM[37] = {6'd13, 5'd29, 21'd0};
instructionM[38] = {6'd11, 5'd29, 21'd0};

		initialize <= 0;
		end
	end
	
endmodule

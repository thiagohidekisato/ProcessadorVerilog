module BIOS (
	input clock,
	input [11:0] address,
	output [31:0] instruction
);

	integer init = 1;
	reg[31:0] ram[190:0];

	assign instruction = ram[address];
	
	always@(posedge clock) begin
		if(init == 1) begin
//BIOS

ram[0] <= {6'd8, 6'd0, 20'd122};
ram[1] <= {6'd12, 5'd8, 21'd0};
ram[2] <= {6'd14, 26'd0};
ram[3] <= {6'd4, 5'd8, 1'b0, 20'd4};
ram[4] <= {6'd1, 5'd14, 1'b0, 20'd4};
ram[5] <= {6'd2, 5'd15, 21'd1};
ram[6] <= {6'd0, 5'd8, 5'd14, 5'd15, 5'd0, 6'd15};
ram[7] <= {6'd6, 5'd8, 5'd0, 16'd15};
ram[8] <= {6'd1, 5'd16, 1'b0, 20'd1};
ram[9] <= {6'd0, 5'd6, 5'd16, 10'd0, 6'd1};
ram[10] <= {6'd13, 5'd6, 21'd0};
ram[11] <= {6'd14, 26'd0};
ram[12] <= {6'd2, 5'd17, 21'd0};
ram[13] <= {6'd4, 5'd17, 1'b0, 20'd0};
ram[14] <= {6'd8, 6'd0, 20'd19};
ram[15] <= {6'd1, 5'd18, 1'b0, 20'd2};
ram[16] <= {6'd0, 5'd6, 5'd18, 10'd0, 6'd1};
ram[17] <= {6'd13, 5'd6, 21'd0};
ram[18] <= {6'd14, 26'd0};
ram[19] <= {6'd1, 5'd19, 1'b0, 20'd3};
ram[20] <= {6'd9, 5'd19, 21'd0};
ram[21] <= {6'd2, 5'd14, 21'd3};
ram[22] <= {6'd0, 5'd6, 5'd14, 10'd0, 6'd1};
ram[23] <= {6'd13, 5'd6, 21'd0};
ram[24] <= {6'd14, 26'd0};
ram[25] <= {6'd2, 5'd14, 21'd28};
ram[26] <= {6'd4, 5'd14, 1'b0, 20'd3};
ram[27] <= {6'd8, 6'd0, 20'd1};
ram[28] <= {6'd1, 5'd15, 1'b0, 20'd5};
ram[29] <= {6'd9, 5'd15, 21'd0};
ram[30] <= {6'd12, 5'd8, 21'd0};
ram[31] <= {6'd14, 26'd0};
ram[32] <= {6'd4, 5'd8, 1'b0, 20'd7};
ram[33] <= {6'd1, 5'd14, 1'b0, 20'd7};
ram[34] <= {6'd0, 5'd6, 5'd14, 10'd0, 6'd1};
ram[35] <= {6'd13, 5'd6, 21'd0};
ram[36] <= {6'd14, 26'd0};
ram[37] <= {6'd2, 5'd14, 21'd40};
ram[38] <= {6'd4, 5'd14, 1'b0, 20'd3};
ram[39] <= {6'd8, 6'd0, 20'd1};
ram[40] <= {6'd1, 5'd15, 1'b0, 20'd6};
ram[41] <= {6'd9, 5'd15, 21'd0};
ram[42] <= {6'd2, 5'd14, 21'd4};
ram[43] <= {6'd4, 5'd14, 1'b0, 20'd9};
ram[44] <= {6'd1, 5'd15, 1'b0, 20'd9};
ram[45] <= {6'd0, 5'd6, 5'd15, 10'd0, 6'd1};
ram[46] <= {6'd13, 5'd6, 21'd0};
ram[47] <= {6'd14, 26'd0};
ram[48] <= {6'd2, 5'd14, 21'd51};
ram[49] <= {6'd4, 5'd14, 1'b0, 20'd3};
ram[50] <= {6'd8, 6'd0, 20'd1};
ram[51] <= {6'd1, 5'd15, 1'b0, 20'd8};
ram[52] <= {6'd9, 5'd15, 21'd0};
ram[53] <= {6'd2, 5'd14, 21'd3};
ram[54] <= {6'd2, 5'd15, 21'd5};
ram[55] <= {6'd0, 5'd8, 5'd14, 5'd15, 5'd0, 6'd0};
ram[56] <= {6'd0, 5'd6, 5'd8, 10'd0, 6'd1};
ram[57] <= {6'd13, 5'd6, 21'd0};
ram[58] <= {6'd14, 26'd0};
ram[59] <= {6'd2, 5'd14, 21'd62};
ram[60] <= {6'd4, 5'd14, 1'b0, 20'd3};
ram[61] <= {6'd8, 6'd0, 20'd1};
ram[62] <= {6'd1, 5'd15, 1'b0, 20'd10};
ram[63] <= {6'd9, 5'd15, 21'd0};
ram[64] <= {6'd2, 5'd14, 21'd10};
ram[65] <= {6'd0, 5'd15, 5'd14, 10'd0, 6'd1};
ram[66] <= {6'd2, 5'd16, 21'd15};
ram[67] <= {6'd0, 5'd17, 5'd16, 10'd0, 6'd1};
ram[68] <= {6'd2, 5'd18, 21'd1023};
ram[69] <= {6'd0, 5'd19, 5'd18, 10'd0, 6'd1};
ram[70] <= {6'd16, 5'd15, 5'd17, 5'd19, 11'd0};
ram[71] <= {6'd2, 5'd14, 21'd15};
ram[72] <= {6'd0, 5'd15, 5'd14, 10'd0, 6'd1};
ram[73] <= {6'd2, 5'd16, 21'd1023};
ram[74] <= {6'd0, 5'd17, 5'd16, 10'd0, 6'd1};
ram[75] <= {6'd17, 5'd8, 5'd15, 5'd17, 11'd0};
ram[76] <= {6'd0, 5'd6, 5'd8, 10'd0, 6'd1};
ram[77] <= {6'd13, 5'd6, 21'd0};
ram[78] <= {6'd14, 26'd0};
ram[79] <= {6'd2, 5'd14, 21'd82};
ram[80] <= {6'd4, 5'd14, 1'b0, 20'd3};
ram[81] <= {6'd8, 6'd0, 20'd1};
ram[82] <= {6'd1, 5'd15, 1'b0, 20'd11};
ram[83] <= {6'd9, 5'd15, 21'd0};
ram[84] <= {6'd2, 5'd14, 21'd0};
ram[85] <= {6'd4, 5'd14, 1'b0, 20'd14};
ram[86] <= {6'd2, 5'd15, 21'd0};
ram[87] <= {6'd4, 5'd15, 1'b0, 20'd13};
ram[88] <= {6'd1, 5'd16, 1'b0, 20'd13};
ram[89] <= {6'd2, 5'd17, 21'd2048};
ram[90] <= {6'd0, 5'd8, 5'd16, 5'd17, 5'd0, 6'd11};
ram[91] <= {6'd6, 5'd8, 5'd0, 16'd120};
ram[92] <= {6'd1, 5'd18, 1'b0, 20'd13};
ram[93] <= {6'd2, 5'd19, 21'd1024};
ram[94] <= {6'd0, 5'd8, 5'd18, 5'd19, 5'd0, 6'd11};
ram[95] <= {6'd6, 5'd8, 5'd0, 16'd104};
ram[96] <= {6'd1, 5'd14, 1'b0, 20'd13};
ram[97] <= {6'd0, 5'd15, 5'd14, 10'd0, 6'd1};
ram[98] <= {6'd2, 5'd16, 21'd1};
ram[99] <= {6'd0, 5'd17, 5'd16, 10'd0, 6'd1};
ram[100] <= {6'd1, 5'd18, 1'b0, 20'd13};
ram[101] <= {6'd0, 5'd19, 5'd18, 10'd0, 6'd1};
ram[102] <= {6'd15, 5'd15, 5'd17, 5'd19, 11'd0};
ram[103] <= {6'd8, 6'd0, 20'd115};
ram[104] <= {6'd1, 5'd14, 1'b0, 20'd13};
ram[105] <= {6'd0, 5'd15, 5'd14, 10'd0, 6'd1};
ram[106] <= {6'd2, 5'd16, 21'd2};
ram[107] <= {6'd0, 5'd17, 5'd16, 10'd0, 6'd1};
ram[108] <= {6'd1, 5'd18, 1'b0, 20'd14};
ram[109] <= {6'd0, 5'd19, 5'd18, 10'd0, 6'd1};
ram[110] <= {6'd15, 5'd15, 5'd17, 5'd19, 11'd0};
ram[111] <= {6'd1, 5'd14, 1'b0, 20'd14};
ram[112] <= {6'd2, 5'd15, 21'd1};
ram[113] <= {6'd0, 5'd8, 5'd14, 5'd15, 5'd0, 6'd0};
ram[114] <= {6'd4, 5'd8, 1'b0, 20'd14};
ram[115] <= {6'd1, 5'd16, 1'b0, 20'd13};
ram[116] <= {6'd2, 5'd17, 21'd1};
ram[117] <= {6'd0, 5'd8, 5'd16, 5'd17, 5'd0, 6'd0};
ram[118] <= {6'd4, 5'd8, 1'b0, 20'd13};
ram[119] <= {6'd8, 6'd0, 20'd88};
ram[120] <= {6'd1, 5'd18, 1'b0, 20'd12};
ram[121] <= {6'd9, 5'd18, 21'd0};
ram[122] <= {6'd20, 5'd0, 21'd0};
ram[123] <= {6'd14, 26'd0};
ram[124] <= {6'd2, 5'd14, 21'd65535};
ram[125] <= {6'd4, 5'd14, 1'b0, 20'd1};
ram[126] <= {6'd2, 5'd15, 21'd65534};
ram[127] <= {6'd4, 5'd15, 1'b0, 20'd2};
ram[128] <= {6'd2, 5'd16, 21'd1};
ram[129] <= {6'd4, 5'd16, 1'b0, 20'd0};
ram[130] <= {6'd1, 5'd17, 1'b0, 20'd0};
ram[131] <= {6'd2, 5'd18, 21'd1};
ram[132] <= {6'd0, 5'd8, 5'd17, 5'd18, 5'd0, 6'd15};
ram[133] <= {6'd6, 5'd8, 5'd0, 16'd138};
ram[134] <= {6'd2, 5'd14, 21'd137};
ram[135] <= {6'd4, 5'd14, 1'b0, 20'd5};
ram[136] <= {6'd8, 6'd0, 20'd21};
ram[137] <= {6'd8, 6'd0, 20'd130};
ram[138] <= {6'd2, 5'd15, 21'd1};
ram[139] <= {6'd4, 5'd15, 1'b0, 20'd0};
ram[140] <= {6'd1, 5'd16, 1'b0, 20'd0};
ram[141] <= {6'd2, 5'd17, 21'd1};
ram[142] <= {6'd0, 5'd8, 5'd16, 5'd17, 5'd0, 6'd15};
ram[143] <= {6'd6, 5'd8, 5'd0, 16'd148};
ram[144] <= {6'd2, 5'd14, 21'd147};
ram[145] <= {6'd4, 5'd14, 1'b0, 20'd6};
ram[146] <= {6'd8, 6'd0, 20'd30};
ram[147] <= {6'd8, 6'd0, 20'd140};
ram[148] <= {6'd2, 5'd15, 21'd1};
ram[149] <= {6'd4, 5'd15, 1'b0, 20'd0};
ram[150] <= {6'd1, 5'd16, 1'b0, 20'd0};
ram[151] <= {6'd2, 5'd17, 21'd1};
ram[152] <= {6'd0, 5'd8, 5'd16, 5'd17, 5'd0, 6'd15};
ram[153] <= {6'd6, 5'd8, 5'd0, 16'd158};
ram[154] <= {6'd2, 5'd14, 21'd157};
ram[155] <= {6'd4, 5'd14, 1'b0, 20'd8};
ram[156] <= {6'd8, 6'd0, 20'd42};
ram[157] <= {6'd8, 6'd0, 20'd150};
ram[158] <= {6'd2, 5'd15, 21'd1};
ram[159] <= {6'd4, 5'd15, 1'b0, 20'd0};
ram[160] <= {6'd1, 5'd16, 1'b0, 20'd0};
ram[161] <= {6'd2, 5'd17, 21'd1};
ram[162] <= {6'd0, 5'd8, 5'd16, 5'd17, 5'd0, 6'd15};
ram[163] <= {6'd6, 5'd8, 5'd0, 16'd168};
ram[164] <= {6'd2, 5'd14, 21'd167};
ram[165] <= {6'd4, 5'd14, 1'b0, 20'd10};
ram[166] <= {6'd8, 6'd0, 20'd53};
ram[167] <= {6'd8, 6'd0, 20'd160};
ram[168] <= {6'd2, 5'd15, 21'd1};
ram[169] <= {6'd4, 5'd15, 1'b0, 20'd0};
ram[170] <= {6'd1, 5'd16, 1'b0, 20'd0};
ram[171] <= {6'd2, 5'd17, 21'd1};
ram[172] <= {6'd0, 5'd8, 5'd16, 5'd17, 5'd0, 6'd15};
ram[173] <= {6'd6, 5'd8, 5'd0, 16'd178};
ram[174] <= {6'd2, 5'd14, 21'd177};
ram[175] <= {6'd4, 5'd14, 1'b0, 20'd11};
ram[176] <= {6'd8, 6'd0, 20'd64};
ram[177] <= {6'd8, 6'd0, 20'd170};
ram[178] <= {6'd2, 5'd14, 21'd181};
ram[179] <= {6'd4, 5'd14, 1'b0, 20'd12};
ram[180] <= {6'd8, 6'd0, 20'd84};
ram[181] <= {6'd1, 5'd15, 1'b0, 20'd1};
ram[182] <= {6'd0, 5'd6, 5'd15, 10'd0, 6'd1};
ram[183] <= {6'd13, 5'd6, 21'd0};
ram[184] <= {6'd14, 26'd0};
ram[185] <= {6'd11, 26'd0};

			init = 0;
		end
	end

endmodule

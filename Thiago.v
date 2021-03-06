module Thiago (
	input reset,
	input clock50,
	input enter,
	input [15:0] switches,
	output [6:0] OUT_Th,
	output [6:0] OUT_H,
	output [6:0] OUT_T,
	output [6:0] OUT_O,
	output [6:0] OUT_PROC_Th,
	output [6:0] OUT_PROC_H,
	output [6:0] OUT_PROC_T,
	output [6:0] OUT_PROC_O,
	output LED,
	// LCD Module 16X2
	output LCD_ON, // LCD Power ON/OFF
	output LCD_BLON, // LCD Back Light ON/OFF
	output LCD_RW, // LCD Read/Write Select, 0 = Write, 1 = Read
	output LCD_EN, // LCD Enable
	output LCD_RS, // LCD Command/Data Select, 0 = Command, 1 = Data
	inout [7:0] LCD_DATA, // LCD Data bus 8 bits
	//Redes
	output LED_send,
	output LED_sent,
	//-> Enviar
	output flagSendArduino,
	input flagSentArduino,
	//-> Receber
	output flagReceiveArduino,
	input flagReceivedArduino,
	input [3:0] dataFromArduino,
	output [1:0] destToArduino,
	//output [1:0] sourceToArduino,
	output [3:0] dataToArduino,
	
	//Teste
	output test1, //LEDR 17
	output test2  //LEDR 16
);
		
	//Clock dividido e sinal de interrupção
	wire clock;
	wire enterDB;
	reg interruption;
	//Endereço de execução ou da memória de dados
	wire [11:0] addressMD, executionAddress;
	//Valor lido (Memória de dados, entrada)
	wire [31:0] dataReadMD, IN_Data;
	//Instrução
	wire [31:0] instructionBIOS, instructionMI, instructionSOControl;
	reg [31:0] instruction;
	
	//Flags
	wire flagMI, flagMD, flagHALT, flagHD, flagHD_MD, flagNumProg;
	wire flagReceive, flagSOControl;
	wire [1:0] flagShift;
	//Valores de saída
	wire [31:0] RWvalue, RDvalue, RSvalue, RTvalue, outLCD;
	//Decidir de onde executar a instrução
	reg executeMI, so_control;
	//Rede
	wire [31:0] netDest, netData;
	//wire [31:0] netSource;
	//Controle da execuçao dos dados
	wire [1:0] addrSOControl;
	
	//HD
	wire [3:0] sector;
	wire [9:0] track;
	wire [31:0] dataHD;
	//Escrita na memória de instruções
	wire [11:0] addressWriteMI;
	//OUT
	wire [15:0] outTest, outLCD16, IN_Data16;
	//Shift da memória
	wire [11:0] shiftMI, shiftMD;
	//Dado para a memória de dados
	reg [31:0] dataToMD;
	//Nome do programa em execução
	wire [15:0] process;
	//Dado do arduino
	wire [31:0] dataArduino;
	
	assign sector = RSvalue[3:0];
	assign track = RTvalue[9:0];
	assign addressWriteMI = RDvalue[11:0]; 
	assign outLCD16 = outLCD[15:0];
	assign IN_Data16 = IN_Data[15:0];
	assign shiftMI = RSvalue[11:0];
	assign shiftMD = RTvalue[11:0];
	assign process = RDvalue[15:0];	
	//Redes
	assign destToArduino = netDest[1:0];
	//assign sourceToArduino = netSource[1:0];
	assign dataToArduino = netData[3:0];
	assign dataArduino = {28'd0, dataFromArduino};
	assign LED_send = flagSendArduino;
	assign LED_sent = flagSentArduino;
	//Teste
	assign test1 = flagReceiveArduino;
	assign test2 = flagReceivedArduino;
	
	DeBounce db1(
		.clk(clock50),
		.n_reset(1),
		.button_in(enter),
		.DB_out(enterDB)
	);
	
	//Divisor de clock
	Divisor Divisor1 (
		.enter(enterDB),
		.reset(reset),
		.flagIN(LED),
		.flagSend(flagSendArduino),
		.flagReceive(flagReceiveArduino),
		.send_confirmS(flagSentArduino),
		.send_confirmR(flagReceivedArduino),
		.CLOCK(clock50),
		.NEW_CLOCK(clock)
	);
	
	//Basic Input/Output System
	BIOS Bios1(
		.clock(clock),
		.address(executionAddress),
		.instruction(instructionBIOS)
	);
	
	//HD
	HardDisk HD1(
		.clock(clock),
		.clock50(clock50),
		.flagHD(flagHD),
		.sector(sector),
		.track(track),
		.dataW(RWvalue),
		.dataR(dataHD)
	);	
	
	//Memória de instruções
	MemoryInstructions MemoryInstructions1 (
		.reset(reset),
		.clock50(clock50),
		.clock(clock),
		.flagMI(flagMI),
		.flagShift(flagShift),
		.shift(shiftMI),
		.address(executionAddress),
		.addressWrite(addressWriteMI),
		.receiveInstruction(dataHD),
		.instruction(instructionMI)
	);
	
	//Memória de dados
	MemoryData MemoryData1 (
		.reset(reset),
		.clock(clock),
		.clock50(clock50),
		.flagMD(flagMD),
		.flagShift(flagShift),
		.shift(shiftMD),
		.address(addressMD),
		.data(RDvalue),
		.read(dataReadMD)
	);
	
	//Processador
	Processor Processor1(
		.reset(reset), //Input
		.clock(clock),
		.interruption(interruption),
		.dataReadMD(dataReadMD),
		.dataHD(dataHD),
		.instruction(instruction),
		.IN_Data(IN_Data),
		.flagMI(flagMI), //Output
		.LED(LED),
		.flagMD(flagMD),
		.flagHALT(flagHALT),
		.flagHD(flagHD),
		.flagNumProg(flagNumProg),
		.flagShift(flagShift),
		.addressMD(addressMD),
		.addressMI(executionAddress),
		.outTest(outTest),
		.RWvalue(RWvalue),
		.RDvalue(RDvalue),
		.RSvalue(RSvalue),
		.RTvalue(RTvalue),
		.outLCD(outLCD),
		//Redes
		.flagSOControl(flagSOControl),
		.flagSend(flagSendArduino),
		.flagReceive(flagReceiveArduino),
		.netDataArduino(dataArduino),
		.addrSOControl(addrSOControl),
		.netDest(netDest),
		//.netSource(netSource),
		.netData(netData)
	);
	
	//Controlar execucao de instrucoes pelo SO
	SO_control soc1(
		.clock(clock),
		.address(addrSOControl),
		.instruction(instructionSOControl)
	);
	
	//Ler valor de entrada
	IN IN1 (
		.data(switches),
		.dataIN(IN_Data)
	);
	
	//Apresentar o valor da entrada no display de 7 segmentos
	OUT_IN OUT1 (
		.Value(IN_Data16),
		.OUT_Th(OUT_Th),
		.OUT_H(OUT_H),
		.OUT_T(OUT_T),
		.OUT_O(OUT_O)
	);
	
	//Apresentar o valor de saída e o processo
	OUT_LCD OUT2 (
		.clock(clock),
		.CLOCK_50(clock50),
		.notExecuteBIOS(executeMI),
		.flagNumProg(flagNumProg),
		.process(process),
		.value(outLCD16),
		.LCD_ON(LCD_ON),
		.LCD_BLON(LCD_BLON),
		.LCD_RW(LCD_RW),
		.LCD_EN(LCD_EN),
		.LCD_RS(LCD_RS),
		.LCD_DATA(LCD_DATA)
	);
	
	//Apresentar valores de testes
	OUT_TEST OUT3 (
		.Value(outTest), //Valor para aparecer do display de 7 segmentos
		//.Value({14'd0, flagSend}),
		.OUT_Th(OUT_PROC_Th),
		.OUT_H(OUT_PROC_H),
		.OUT_T(OUT_PROC_T),
		.OUT_O(OUT_PROC_O)
	);
	
	always@ (posedge clock) begin
		if(reset == 1) begin
			interruption = 0;
			executeMI = 0;
			so_control = 0;
		end

		if(flagHALT == 1)
			executeMI = 1;
	
		if(flagSOControl == 1) so_control = 1;
		else so_control = 0;
	end
	
	//Determinada da onde a instrução vem
	always@(*) begin
		if(so_control == 1) instruction = instructionSOControl;
		else if(executeMI == 0) instruction = instructionBIOS;
		else instruction = instructionMI;
	end
	
endmodule

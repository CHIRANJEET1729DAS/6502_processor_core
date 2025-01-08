module instruction_decoder (
    input wire [7:0] opcode,         
    output reg [3:0] ALU_Control,    
    output reg MemRead,               
    output reg MemWrite,              
    output reg RegWrite,              
    output reg Branch,              
    output reg Jump                
);

always @(*) begin
    // Default values
    ALU_Control = 4'b0000;
    MemRead = 0;
    MemWrite = 0;
    RegWrite = 0;
    Branch = 0;
    Jump = 0;

    // Decode the opcode
    case (opcode)
        8'b00000001: begin // ADD instruction
            ALU_Control = 4'b0001; 
            RegWrite = 1;          
        end
        8'b00000010: begin // SUB instruction
            ALU_Control = 4'b0010; 
            RegWrite = 1;           
        end
        8'b00000100: begin // AND instruction
            ALU_Control = 4'b0011;  
            RegWrite = 1;      
        end
        8'b00000101: begin // OR instruction
            ALU_Control = 4'b0100;  
            RegWrite = 1;          
        end
        8'b00001000: begin // LOAD instruction
            MemRead = 1;            
            RegWrite = 1;         
        end
        8'b00001001: begin // STORE instruction
            MemWrite = 1;           
        end
        8'b00010000: begin // BRANCH instruction
            Branch = 1;             
        end
        8'b00010001: begin // JUMP instruction
            Jump = 1;              
        end
        default: begin
        end
    endcase
end

endmodule


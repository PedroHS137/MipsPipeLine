/******************************************************************
* Description
*		This is the Equals:
* Version:
*	1.0
* Author:
*Alexis Salgado Ramirez
* email:
*	Alexis_DenisseMyLove@gmail.com
* Date:
*	3/05/2020
******************************************************************/
module Equals
(
	input [31:0] ReadData1,
	input [31:0] ReadData2,
  input BranchEQ,
  input BranchNE,
	output ORForBranch
);

wire Zero;
wire ZeroANDBrachEQ;
wire NotZeroANDBrachNE;

assign Zero = (ReadData1 == ReadData2) ? 1'b1 : 1'b0;

ANDGate
Gate_BranchEQANDZero
(
	.A(BranchEQ),
	.B(Zero), //bit menos significativo del opcode porque J 000010 y JAL 000011
	.C(ZeroANDBrachEQ)
);



ANDGate
Gate_BranchNEANDZero
(
	.A(BranchNE),
	.B(!Zero), //Si zero es diferente de 1, significa que es diferente
	.C(NotZeroANDBrachNE)
);


ORGate
Gate_BeqOrBNE
(
	.A(NotZeroANDBrachNE),
	.B(ZeroANDBrachEQ),
	.C(ORForBranch)
);



endmodule

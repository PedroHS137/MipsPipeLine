/******************************************************************
* Description
*		This is an OR gate:
* Version:
*	1.0
* Author:
*Alexis Ramirez Salgado
* email:
*	Alexis_DenisseMyLove@gmail.com
* Date:
*	02/05/2020
******************************************************************/
module ORGate
(
	input A,
	input B,
	output reg C
);

always@(*)
	C = A | B;

endmodule
//andgate//

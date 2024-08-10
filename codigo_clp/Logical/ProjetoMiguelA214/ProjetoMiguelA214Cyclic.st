(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: ProjetoMiguelA214
 * File: ProjetoMiguelA214Cyclic.st
 * Author: supervisorio
 * Created: June 12, 2024
 ********************************************************************
 * Implementation of program ProjetoMiguelA214
 ********************************************************************)

PROGRAM _CYCLIC
	
	IF EDGEPOS(START_MOVE) THEN
		IF (0 < ORIGEM) AND (ORIGEM <= 12) AND (0 < DESTINO) AND (DESTINO <= 12) THEN
			SAIDA := ORIGEM - 1; (*Define origem*)
			TI.IN := TRUE;
		ELSE
			START_MOVE := FALSE;
		END_IF;
	END_IF;
			
	IF TI.Q THEN
		TI.IN := FALSE;
		TI2.IN := TRUE;
		SAIDA := SAIDA + 16; (*Muda o 5º bit primeiro pra garantir que a origem não modifique*)
	END_IF;
	
	IF TI2.Q THEN
		TI2.IN := FALSE;
		TI3.IN := TRUE;
		SAIDA := DESTINO + 16 - 1; (*Define destino*)
	END_IF;
	
	IF TI3.Q THEN
		TI3.IN := FALSE;
		TI4.IN := TRUE;
		SAIDA := SAIDA + 32; (*Inicia movimentação*)
	END_IF;
	
	IF TI4.Q THEN
		TI4.IN := FALSE;
		START_MOVE := FALSE;
		SAIDA := 0;
	END_IF;
	
	BIT0 := SAIDA.0;
	BIT1 := SAIDA.1;
	BIT2 := SAIDA.2;	
	BIT3 := SAIDA.3;
	BIT4 := SAIDA.4;
	BIT5 := SAIDA.5;
	
	TI.PT := T#100ms;
	TI();
	TI2.PT := T#100ms;
	TI2();
	TI3.PT := T#100ms;
	TI3();
	TI4.PT := T#100ms;
	TI4();
	
END_PROGRAM

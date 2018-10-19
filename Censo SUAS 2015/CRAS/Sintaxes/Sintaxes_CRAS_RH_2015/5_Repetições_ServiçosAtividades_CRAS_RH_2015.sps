**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR RESPOSTAS REPETIDAS DA QUEST�O Q55_12 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************* VERIFICA��O DE N�O PREENCHIMENTO DA q55_12_1 ***********

IF  (MISSING(q55_12_1) &
NOT (q55_6=251 | q55_6 = 252 | q55_6 = 253 | q55_6 = 254)) q55_12_verif=1.
EXECUTE.

IF  (MISSING(q55_12_1) & 
(q55_6=251 | q55_6 = 252 | q55_6 = 253 | q55_6 = 254)) q55_12_verif=2.
EXECUTE.

IF  (NOT MISSING(q55_12_1) & 
(q55_6=251 | q55_6 = 252 | q55_6 = 253 | q55_6 = 254)) q55_12_verif=3.
EXECUTE.

VARIABLE LABELS q55_12_verif'Verifica��o de preenchimento - Principal Servi�o/Atividade'.
EXECUTE.

VALUE LABELS 
/q55_12_verif
1'N�o preencheu quest�o obrigat�ria'
2'Sem escolaridade m�nima para preenchimento'
3'Preencheu sem a escolaridade m�nima'.
EXECUTE.

**********************************Limpeza da redund�ncia nas vari�veis q55_12_1, q55_12_2 e q55_12_3  ****************************************
*As vari�veis q55_12_1, q55_12_2 e q55_12_3 deveriam expressar o principal, segundo e terceiro servi�o ao qual o trabalhador de n�vel m�dio ou superior estava vinculado.
*Em alguns casos, o servi�o descrito na principal atividade foi repetido nas seguintes. A syntax abaixo converte os valores repetidos em missing ****************************
*******************************************


*** BACKUP Var q55_12 Original (Fun��o)

COMPUTE q55_12_1_original = q55_12_1.
VARIABLE LABELS q55_12_1_original 'Original - q55_12_1_Servi�os/Atividade a qual o profissional est� vinculado - Principal servi�o/atividade'.
VALUE LABELS 
/q55_12_1_original
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99   "Outros".
EXECUTE.

COMPUTE q55_12_2_original = q55_12_2.
VARIABLE LABELS q55_12_2_original 'Original - q55_12_2_Servi�os/Atividade a qual o profissional est� vinculado - Segundo principal servi�o/atividade'.
VALUE LABELS 
/q55_12_2_original
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99   "Outros".
EXECUTE.

COMPUTE q55_12_3_original = q55_12_3.
VARIABLE LABELS q55_12_3_original 'Original - q55_12_3_Servi�os/Atividade a qual o profissional est� vinculado - Terceiro principal servi�o/atividade'.
VALUE LABELS 
/q55_12_3_original
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99   "Outros".
EXECUTE.


***** LIMPEZA DE q55_12_2 e q55_12_3 SE AS 3 RESPOSTAS FOREM IGUAIS *****

** as 3 iguais > limpar 2� e 3�

DO IF (q55_12_1_original = 1 & q55_12_2_original = 1 & q55_12_3_original = 1).
RECODE q55_12_2 q55_12_3 (1=SYSMIS).
END IF.

DO IF (q55_12_1_original = 2 & q55_12_2_original = 2 & q55_12_3_original = 2).
RECODE q55_12_2 q55_12_3 (2=SYSMIS).
END IF.

DO IF (q55_12_1_original = 3 & q55_12_2_original = 3 & q55_12_3_original = 3).
RECODE q55_12_2 q55_12_3 (3=SYSMIS).
END IF.

DO IF (q55_12_1_original = 4 & q55_12_2_original = 4 & q55_12_3_original = 4).
RECODE q55_12_2 q55_12_3 (4=SYSMIS).
END IF.

DO IF (q55_12_1_original = 99 & q55_12_2_original = 99 & q55_12_3_original = 99).
RECODE q55_12_2 q55_12_3 (99=SYSMIS).
END IF.

EXECUTE.

******** LIMPEZA DE q55_12 SE 2 FOREM IGUAIS ********

** 1� e 3� iguais > limpar 3�

DO IF (q55_12_1_original = 1 & q55_12_3_original = 1).
RECODE q55_12_3 (1=SYSMIS).
END IF.

DO IF (q55_12_1_original = 2 & q55_12_3_original = 2).
RECODE q55_12_3 (2=SYSMIS).
END IF.

DO IF (q55_12_1_original = 3 & q55_12_3_original = 3).
RECODE q55_12_3 (3=SYSMIS).
END IF.

DO IF (q55_12_1_original = 4 & q55_12_3_original = 4).
RECODE q55_12_3 (4=SYSMIS).
END IF.

DO IF (q55_12_1_original = 99 & q55_12_3_original = 99).
RECODE q55_12_3 (99=SYSMIS).
END IF.

EXECUTE.

** 2� e 3� iguais > limpar 3�

DO IF (q55_12_2_original = 1 & q55_12_3_original = 1).
RECODE q55_12_3 (1=SYSMIS).
END IF.

DO IF (q55_12_2_original = 2 & q55_12_3_original = 2).
RECODE q55_12_3 (2=SYSMIS).
END IF.

DO IF (q55_12_2_original = 3 & q55_12_3_original = 3).
RECODE q55_12_3 (3=SYSMIS).
END IF.

DO IF (q55_12_2_original = 4 & q55_12_3_original = 4).
RECODE q55_12_3 (4=SYSMIS).
END IF.

DO IF (q55_12_2_original = 99 & q55_12_3_original = 99).
RECODE q55_12_3 (99=SYSMIS).
END IF.

EXECUTE.

** 1� e 2� iguais > limpar 2�

DO IF (q55_12_1_original = 1 & q55_12_2_original = 1).
RECODE q55_12_2 (1=SYSMIS).
END IF.

DO IF (q55_12_1_original = 2 & q55_12_2_original = 2).
RECODE q55_12_2 (2=SYSMIS).
END IF.

DO IF (q55_12_1_original = 3 & q55_12_2_original = 3).
RECODE q55_12_2 (3=SYSMIS).
END IF.

DO IF (q55_12_1_original = 4 & q55_12_2_original = 4).
RECODE q55_12_2 (4=SYSMIS).
END IF.

DO IF (q55_12_1_original = 99 & q55_12_2_original = 99).
RECODE q55_12_2 (99=SYSMIS).
END IF.

EXECUTE.






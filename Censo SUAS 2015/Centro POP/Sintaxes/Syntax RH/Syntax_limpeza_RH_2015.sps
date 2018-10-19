****************************************************************************************************************************************
**Syntax Limpeza RH Centro POP - Censo SUAS 2015   *********************************************************************
****************************************************************************************************************************************
*********A vari�vel v10255  Fun��o no Centro POP apresentou 164 casos com o c�digo da fun��o errado. 
******O c�digo exibido era o n�mero que constava no question�rio (1- Apoio Administrativo 2 - Coordenador(a) 3 - Educador (a) Social e assim por diante) e n�o o c�digo correto.


RECODE v10255 (1=251).
RECODE v10255 (2=21).
RECODE v10255 (3=248).
RECODE v10255 (4=253).
RECODE v10255 (5=252).
RECODE v10255 (6=370).
RECODE v10255 (7=249).
RECODE v10255 (8=254).
EXECUTE.


*********As vari�veis q39_12_1, q39_12_2 e q39_12_3 deveriam ser preenchidas apenas para os trabalhadores com escolaridade igual ou superior a n�vel m�dio completo. Entretanto, as vari�veis foram preenchidas para 228 trabalhadores 
com escolaridade menor que n�vel m�dio.
********Segue a syntax de limpeza********************************************************************************************** 

***Cria��o da vari�vel velha, c�pia da anterior ************

RECODE q39_12_1 (ELSE=Copy) INTO Q39_12_1_VELHA.
VARIABLE LABELS  Q39_12_1_VELHA 'q39_12_1_VELHA_Servi�os/Atividade a qual o profissional est� '+
    'vinculado - Principal servi�o/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_12_1
  /TARGET VARIABLES=Q39_12_1_VELHA
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.


RECODE q39_12_2 (ELSE=Copy) INTO Q39_12_2_VELHA.
VARIABLE LABELS  Q39_12_2_VELHA 'q39_12_2_VELHA_q39_12_2_Servi�os/Atividade a qual o profissional est� '+
    'vinculado - Segundo principal servi�o/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_12_2
  /TARGET VARIABLES=Q39_12_2_VELHA
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.    



RECODE q39_12_3 (ELSE=Copy) INTO Q39_12_3_VELHA.
VARIABLE LABELS  Q39_12_3_VELHA 'q39_12_3_VELHA_Servi�os/Atividade a qual o profissional est� '+
    'vinculado - Terceiro principal servi�o/atividade'.

EXECUTE.

APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_12_3
  /TARGET VARIABLES=Q39_12_3_VELHA
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.    


********Crit�rio de limpeza - escolaridade **********************************

IF  (q39_6 >= 255) q39_12_1_NOVA=q39_12_1.
EXECUTE.

IF  (q39_6 >= 255) q39_12_2_NOVA=q39_12_2.
EXECUTE.

IF  (q39_6 >= 255) q39_12_3_NOVA=q39_12_3.
EXECUTE.


APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_12_1
  /TARGET VARIABLES=Q39_12_1_NOVA
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.


APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_12_2
  /TARGET VARIABLES=Q39_12_2_NOVA
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.    


APPLY DICTIONARY
  /FROM *
  /SOURCE VARIABLES=q39_12_3
  /TARGET VARIABLES=Q39_12_3_NOVA
  /FILEINFO
  /VARINFO ALIGNMENT FORMATS LEVEL ROLE MISSING VALLABELS=REPLACE ATTRIBUTES=REPLACE VARLABEL WIDTH.    



**********************************Limpeza da redund�ncia nas vari�veis q39_12_1, q39_12_2 e q39_12_3  ****************************************
*As vari�veis q39_12_1, q39_12_2 e q39_12_3 deveriam expressar o principal, segundo e terceiro servi�o ao qual o trabalhador de n�vel m�dio ou superior estava vinculado.
*Em alguns casos, o servi�o descrito na principal atividade foi repetido nas seguintes. A syntax abaixo converte os valores repetidos em missing ****************************
*******************************************

**Essa Syntax � um Recode para a mesma vari�vel, ent�o precisa rodar a primeira parte, e s� depois a segunda, sen�o rodar� com erro********

***** Primeira etapa: Limpeza da terceira atividade, quando repete a segunda*****************

DO IF (q39_12_2 = 1).
RECODE q39_12_3 (1=SYSMIS).
END IF.

DO IF (q39_12_2 = 2).
RECODE q39_12_3 (2=SYSMIS).
END IF.

DO IF (q39_12_2 = 3).
RECODE q39_12_3 (3=SYSMIS).
END IF.

DO IF (q39_12_2 = 4).
RECODE q39_12_3 (4=SYSMIS).
END IF.

DO IF (q39_12_2 = 99).
RECODE q39_12_3 (99=SYSMIS).
END IF.


****** Segunda etapa: limpeza da terceira atividade, quando repete a primeira *************************

DO IF (q39_12_1 = 1).
RECODE q39_12_3 (1=SYSMIS).
END IF.

DO IF (q39_12_1 = 2).
RECODE q39_12_3 (2=SYSMIS).
END IF.

DO IF (q39_12_1 = 3).
RECODE q39_12_3 (3=SYSMIS).
END IF.

DO IF (q39_12_1 = 4).
RECODE q39_12_3 (4=SYSMIS).
END IF.

DO IF (q39_12_1 = 99).
RECODE q39_12_3 (99=SYSMIS).
END IF.


****** Terceira etapa: limpeza da segunda atividade, quando repete a primeira *************************

DO IF (q39_12_1 = 1).
RECODE q39_12_2 (1=SYSMIS).
END IF.

DO IF (q39_12_1 = 2).
RECODE q39_12_2 (2=SYSMIS).
END IF.

DO IF (q39_12_1 = 3).
RECODE q39_12_2 (3=SYSMIS).
END IF.

DO IF (q39_12_1 = 4).
RECODE q39_12_2 (4=SYSMIS).
END IF.

DO IF (q39_12_1 = 99).
RECODE q39_12_2 (99=SYSMIS).
END IF.

***********************************************************************************************************************************************************


**********************************Limpeza da vari�vel profissao q39_7  a partir da escolaridade****************************************
*******************************************


DO IF (q39_6 < 255).
RECODE q39_7 (ELSE=239).
END IF.



















*****************************************************************************
**** Syntax Censo SUAS - RH ******Conselho Municipal 2015******
*Variables Labels*Value Labels*
*****************************************************************************

****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)



COMPUTE num_data=DATE.DMY(31,12,2015).
EXECUTE.

**Ser� criada a vari�vel com n�mero procurado. Em seguida rodar a sintax abaixo**


COMPUTE D63_2=DATEDIFF(num_data,q63_2,"years").
EXECUTE.

VARIABLE LABELS D63_2 'D63_2_Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

***********************************************************************************************************

RECODE D63_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D63_2_categoria.
VARIABLE LABELS  D63_2_categoria  'D63_2_categoria_Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  D63_2_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.


RECODE q63_4 (1 thru 4=0) (5 thru 6=1) (7 thru 10=2) INTO D63_4.
VARIABLE LABELS D63_4 'D63_4_N�veis de escolaridade'.
EXECUTE.

VALUE LABELS D63_4
0 'N�vel fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.


****vari�veis bin�rias escolaridade***

RECODE D63_4 (0=1) INTO D63_4bin1.
VARIABLE LABELS  D63_4bin1 'D66_4bin1_N�vel fundamental - trabalhadores que possuem at� o n�vel m�dio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D63_4bin1
1 'N�vel fundamental'.
EXECUTE.

RECODE D63_4 (1=1) INTO D63_4bin2.
VARIABLE LABELS  D63_4bin2 'D63_4bin2_N�vel m�dio - trabalhadores com ensino superior incompleto e ensino m�dio completo'.
EXECUTE.

VALUE LABELS  D63_4bin2
1 'N�vel M�dio'.
EXECUTE.

RECODE D63_4 (2=1) INTO D63_4bin3.
VARIABLE LABELS  D63_4bin3 'D63_4bin3_N�vel superior - inclui trabalhadores graduados, com especializa��o, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D63_4bin3
1 'N�vel Superior'.
EXECUTE.

****vari�veis bin�rias Representa��o***


RECODE q63_5 (6=1) (8=1) INTO D63_5bin1.
VARIABLE LABELS  D63_5bin1 'D63_5bin1_Representante de usu�rios e organiza��o de usu�rios '.
EXECUTE.

RECODE q63_5 (5=1) INTO D63_5bin2.
VARIABLE LABELS  D63_5bin2 'D63_5bin2_Representante de Entidades de Assist�ncia Social'.
EXECUTE.

RECODE q63_5 (7=1) INTO D63_5bin3.
VARIABLE LABELS  D63_5bin3 'D63_5bin3_Representante de organiza��o dos trabalhadores'.
EXECUTE.

RECODE q63_5 (1 THRU 4=1) INTO D63_5bin4.
VARIABLE LABELS  D63_5bin4 'D63_5bin4_Representante do Governo'.
EXECUTE.


****Value Labels variaveis bin�rias Representa��o***

VALUE LABELS  D63_5bin1
1 'Representante de usu�rios e organiza��o de usu�rios'.
EXECUTE.


VALUE LABELS  D63_5bin2
1 'Representante de Entidades de Assist�ncia Social'.
EXECUTE.

VALUE LABELS  D63_5bin3
1 'Representante de organiza��o dos trabalhadores'.
EXECUTE.

VALUE LABELS  D63_5bin4
1 'Representante do Governo'.
EXECUTE.

*** IMPORTANTE ***
*As Syntax abaixo criam vari�veis bin�rias de representa��o para titulares e suplentes *


DO IF  (q63_6 >= 1 & q63_6 < 4).
RECODE D63_5bin1 (1=1) INTO D63_5bin1_TIT.
END IF.
VARIABLE LABELS  D63_5bin1_TIT 'D63_5bin1_TIT_Representante Titular de usu�rios e organiza��o de usu�rios'.
EXECUTE.


DO IF  (q63_6 = 4).
RECODE D63_5bin1 (1=1) INTO D63_5bin1_SUPL.
END IF.
VARIABLE LABELS  D63_5bin1_SUPL 'D63_5bin1_SUPL_Representante Suplente de usu�rios e organiza��o de usu�rios'.
EXECUTE.



DO IF  (q63_6 >= 1 & q63_6 < 4).
RECODE D63_5bin2 (1=1) INTO D63_5bin2_TIT.
END IF.
VARIABLE LABELS  D63_5bin2_TIT 'D63_5bin2_TIT_Representante Titular de Entidades de Assist�ncia Social'.
EXECUTE.


DO IF  (q63_6 = 4).
RECODE D63_5bin2 (1=1) INTO D63_5bin2_SUPL.
END IF.
VARIABLE LABELS  D63_5bin2_SUPL 'D63_5bin2_SUPL_Representante Suplente de Entidades de Assist�ncia Social'.
EXECUTE.




DO IF  (q63_6 >= 1 & q63_6 < 4).
RECODE D63_5bin3 (1=1) INTO D63_5bin3_TIT.
END IF.
VARIABLE LABELS  D63_5bin3_TIT 'D63_5bin3_TIT_Representante Titular de organiza��o dos trabalhadores'.
EXECUTE.


DO IF  (q63_6 = 4).
RECODE D63_5bin3 (1=1) INTO D63_5bin3_SUPL.
END IF.
VARIABLE LABELS  D63_5bin3_SUPL 'D63_5bin3_SUPL_Representante Suplente de organiza��o dos trabalhadores'.
EXECUTE.




DO IF  (q63_6 >= 1 & q63_6 < 4).
RECODE D63_5bin4 (1=1) INTO D63_5bin4_TIT.
END IF.
VARIABLE LABELS  D63_5bin4_TIT 'D63_5bin4_TIT_Representante Titular do Governo'.
EXECUTE.


DO IF  (q63_6 = 4).
RECODE D63_5bin4 (1=1) INTO D63_5bin4_SUPL.
END IF.
VARIABLE LABELS  D63_5bin4_SUPL 'D63_5bin4_SUPL_Representante Suplente do Governo'.
EXECUTE.



******************************************************************************************
********************AGGREGATE VARI�VEIS BIN�RIAS**************************
******************************************************************************************

AGGREGATE
  /BREAK=IBGE
  /D63_5bin1_sum=SUM(D63_5bin1)
  /D63_5bin2_sum=SUM(D63_5bin2)
  /D63_5bin3_sum=SUM(D63_5bin3)
  /D63_5bin4_sum=SUM(D63_5bin4)
  /D63_5bin1_TIT_sum=SUM(D63_5bin1_TIT)
  /D63_5bin1_SUPL_sum=SUM(D63_5bin1_SUPL)
  /D63_5bin2_TIT_sum=SUM(D63_5bin2_TIT)
  /D63_5bin2_SUPL_sum=SUM(D63_5bin2_SUPL)
  /D63_5bin3_TIT_sum=SUM(D63_5bin3_TIT)
  /D63_5bin3_SUPL_sum=SUM(D63_5bin3_SUPL)
  /D63_5bin4_TIT_sum=SUM(D63_5bin4_TIT)
  /D63_5bin4_SUPL_sum=SUM(D63_5bin4_SUPL)
  /nu_conselheiros=N
.
EXECUTE.




RECODE D63_5bin1_sum D63_5bin2_sum D63_5bin3_sum D63_5bin4_sum nu_conselheiros 
    (SYSMIS=0).
EXECUTE.


RECODE D63_5bin1_TIT_sum D63_5bin1_SUPL_sum D63_5bin2_TIT_sum D63_5bin2_SUPL_sum D63_5bin3_TIT_sum D63_5bin3_SUPL_sum D63_5bin4_TIT_sum D63_5bin4_SUPL_sum
    (SYSMIS=0).
EXECUTE.




VARIABLE LABELS
D63_5bin1_sum	'Representante de usu�rios e organiza��o de usu�rios'
  /D63_5bin2_sum	'Representante de Entidades de Assist�ncia Social'
  /D63_5bin3_sum	'Representante de organiza��o dos trabalhadores'
  /D63_5bin4_sum	'Representante do Governo'
    /nu_conselheiros	'Quantidade de conselheiros'
.
EXECUTE.



VARIABLE LABELS
 D63_5bin1_TIT_sum    'Representante Titular de usu�rios e organiza��o de usu�rios'
  /D63_5bin1_SUPL_sum    'Representante Suplente de usu�rios e organiza��o de usu�rios'
  /D63_5bin2_TIT_sum    'Representante Titular de Entidades de Assist�ncia Social'
  /D63_5bin2_SUPL_sum    'Representante Suplente de Entidades de Assist�ncia Social'
  /D63_5bin3_TIT_sum    'Representante Titular de organiza��o dos trabalhadores'
  /D63_5bin3_SUPL_sum    'Representante Suplente de organiza��o dos trabalhadores'
  /D63_5bin4_TIT_sum    'Representante Titular do Governo'
  /D63_5bin4_SUPL_sum    'Representante Suplente do Governo'
.
EXECUTE.




** dataset para merge na dados gerais


dataset declare aggr_RH_conselho.
AGGREGATE
/outfile='aggr_RH_conselho'
  /BREAK=IBGE
  /D63_5bin1_sum=SUM(D63_5bin1)
  /D63_5bin2_sum=SUM(D63_5bin2)
  /D63_5bin3_sum=SUM(D63_5bin3)
  /D63_5bin4_sum=SUM(D63_5bin4)
  /D63_5bin1_TIT_sum=SUM(D63_5bin1_TIT)
  /D63_5bin1_SUPL_sum=SUM(D63_5bin1_SUPL)
  /D63_5bin2_TIT_sum=SUM(D63_5bin2_TIT)
  /D63_5bin2_SUPL_sum=SUM(D63_5bin2_SUPL)
  /D63_5bin3_TIT_sum=SUM(D63_5bin3_TIT)
  /D63_5bin3_SUPL_sum=SUM(D63_5bin3_SUPL)
  /D63_5bin4_TIT_sum=SUM(D63_5bin4_TIT)
  /D63_5bin4_SUPL_sum=SUM(D63_5bin4_SUPL)
  /nu_conselheiros=N
.
EXECUTE.




RECODE D63_5bin1_sum D63_5bin2_sum D63_5bin3_sum D63_5bin4_sum nu_conselheiros 
    (SYSMIS=0).
EXECUTE.


RECODE D63_5bin1_TIT_sum D63_5bin1_SUPL_sum D63_5bin2_TIT_sum D63_5bin2_SUPL_sum D63_5bin3_TIT_sum D63_5bin3_SUPL_sum D63_5bin4_TIT_sum D63_5bin4_SUPL_sum
    (SYSMIS=0).
EXECUTE.





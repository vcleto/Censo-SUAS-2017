****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)

**Ser� criada a vari�vel com n�mero procurado. Em seguida rodar a sintax abaixo**

COMPUTE  D44_2=DATEDIFF(13576291200, q44_2,"years").
format D44_2 (F2.0).
EXECUTE.

VARIABLE LABELS D44_2 'Idade em anos (data ref. 31-12-2012)'.

***********************************************************************************************************

RECODE D44_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D44_categoria.
VARIABLE LABELS  D44_categoria  'Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  D44_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.

RECODE q44_8 (251 thru 254=0) (255 thru 256=1) (257 thru 262=2) INTO D44_8.
VARIABLE LABELS D44_8 'N�veis de escolaridade'.
EXECUTE.

VALUE LABELS D44_8
0 'N�vel fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.

RECODE D44_8 (0=1) INTO D44_8bin1.
VARIABLE LABELS  D44_8bin1 'N�vel fundamental'.
EXECUTE.

VALUE LABELS D44_8bin1
1 'N�vel fundamental'.

RECODE D44_8 (1=1) INTO D44_8bin2.
VARIABLE LABELS  D44_8bin2 'N�vel m�dio'.
EXECUTE.

VALUE LABELS  D44_8bin2
1 'N�vel M�dio'.

RECODE D44_8 (2=1) INTO D44_8bin3.
VARIABLE LABELS  D44_8bin3 'N�vel superior'.
EXECUTE.

VALUE LABELS  D44_8bin3
1 'N�vel Superior'.

RECODE q44_9 (275=1) INTO D44_9bin1.
VARIABLE LABELS  D44_9bin1 'Pedagogo'.
EXECUTE.

VALUE LABELS D44_9bin1
1 'Pedagogo'.

RECODE q44_9 (273=1) INTO D44_9bin2.
VARIABLE LABELS  D44_9bin2 'Assistente Social'.
EXECUTE.

VALUE LABELS  D44_9bin2
1 'Assistente Social'.

RECODE q44_9 (234=1) INTO D44_9bin3.
VARIABLE LABELS  D44_9bin3 'Antrop�logo'.
EXECUTE.

VALUE LABELS  D44_9bin3
1 'Antrop�logo'.

RECODE q44_9 (232=1) INTO D44_9bin4.
VARIABLE LABELS  D44_9bin4 'Advogado'.
EXECUTE.

VALUE LABELS  D44_9bin4
1 'Advogado'.

RECODE q44_9 (274=1) INTO D44_9bin5.
VARIABLE LABELS  D44_9bin5 'Psic�logo'.
EXECUTE.

VALUE LABELS  D44_9bin5
1 'Psic�logo'.

RECODE q44_10 (292=3) (139=2) (138=1) (else=4) INTO D44_10.
VARIABLE LABELS   D44_10 'Tipo de v�nculo'.

VALUE LABELS D44_10
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.

RECODE  D44_10 (1=1) INTO D44_10bin1.
VARIABLE LABELS   D44_10bin1 'Servidor Estatut�rio'.

VALUE LABELS  D44_10bin1
1 'Servidor Estatut�rio'.

RECODE D44_10  (2=1) INTO D44_10bin2.
VARIABLE LABELS  D44_10bin2 'Empregado P�blico (CLT)'.

VALUE LABELS  D44_10bin2
1 'Empregado P�blico (CLT)'.

RECODE D44_10 (3=1) INTO D44_10bin3.
VARIABLE LABELS D44_10bin3 'Comissionado'.

VALUE LABELS  D44_10bin3
1 'Comissionado'.

RECODE D44_10 (4=1) INTO D44_10bin4.
VARIABLE LABELS D44_10bin4 'Outros v�nculos n�o permanentes'.

VALUE LABELS  D44_10bin4
1 'Outros v�nculos n�o permanentes'.

****************************************************corrigindo inconsist�ncia entre escolaridade e profiss�o ***********************************************


****recode profiss�o com base na escolaridade*****

*** NIVEL SUPERIOR***

DO IF (D44_8bin3 = 1).
RECODE q44_9 (238=SYSMIS) (239=SYSMIS).
END IF.
EXECUTE.

*** NIVEL M�DIO***

DO IF (D44_8bin2=1).
RECODE q44_9 (240 thru Highest=SYSMIS) (Lowest thru 237=SYSMIS).
END IF.
EXECUTE.


*** NIVEL FUNDAMENTAL***

DO IF (D44_8bin1=1).
RECODE q44_9 (Lowest thru 238=SYSMIS) (240 thru Highest=SYSMIS).
END IF.
EXECUTE.


**********recode profiss�es bin�rias**********

RECODE q44_9 (275=1) INTO D44_9bin1.
VARIABLE LABELS  D44_9bin1 'Pedagogo'.
EXECUTE.

RECODE q44_9 (273=1) INTO D44_9bin2.
VARIABLE LABELS  D44_9bin2 'Assistente Social'.
EXECUTE.

RECODE q44_9 (234=1) INTO D44_9bin3.
VARIABLE LABELS  D44_9bin3 'Antrop�logo'.
EXECUTE.

RECODE q44_9 (232=1) INTO D44_9bin4.
VARIABLE LABELS  D44_9bin4 'Advogado'.
EXECUTE.

RECODE q44_9 (274=1) INTO D44_9bin5.
VARIABLE LABELS  D44_9bin5 'Psic�logo'.
EXECUTE.

VALUE LABELS D44_9bin1
1 'Pedagogo'.

VALUE LABELS  D44_9bin2
1 'Assistente Social'.

VALUE LABELS  D44_9bin3
1 'Antrop�logo'.

VALUE LABELS  D44_9bin4
1 'Advogado'.

VALUE LABELS  D44_9bin5
1 'Psic�logo'.


********************AGGREGATE VARI�VEIS BIN�RIAS**************************


AGGREGATE
  /BREAK=NU_IDENTIFICADOR
  /D44_8bin1_sum=SUM(D44_8bin1)
  /D44_8bin2_sum=SUM(D44_8bin2)
  /D44_8bin3_sum=SUM(D44_8bin3)
  /D44_9bin1_sum=SUM(D44_9bin1) 
  /D44_9bin2_sum=SUM(D44_9bin2) 
  /D44_9bin3_sum=SUM(D44_9bin3) 
  /D44_9bin4_sum=SUM(D44_9bin4) 
  /D44_9bin5_sum=SUM(D44_9bin5) 
  /D44_10bin1_sum=SUM(D44_10bin1) 
  /D44_10bin2_sum=SUM(D44_10bin2) 
  /D44_10bin3_sum=SUM(D44_10bin3) 
  /D44_10bin4_sum=SUM(D44_10bin4)
  /nu_trabalhadores=N
.
EXECUTE.


VARIABLE LABELS
D44_8bin1_sum'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
D44_8bin2_sum'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
D44_8bin3_sum'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
D44_9bin1_sum'N�mero de Pedagogos'
D44_9bin2_sum'N�mero de Assistentes Sociais'
D44_9bin3_sum'N�mero de Antrop�logos'
D44_9bin4_sum'N�mero de Advogados'
D44_9bin5_sum'N�mero de Psic�logos'
D44_10bin1_sum'N�mero de Servidores Estatut�rios'
D44_10bin2_sum'N�mero de Empregados P�blicos(CLT)'
D44_10bin3_sum'N�mero de Comissionados'
D44_10bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes'
nu_trabalhadores'N�mero de trabalhdores no Centro POP'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE D44_8bin1_sum D44_8bin2_sum D44_8bin3_sum D44_9bin1_sum D44_9bin2_sum D44_9bin3_sum 
    D44_9bin4_sum D44_9bin5_sum D44_10bin1_sum D44_10bin2_sum D44_10bin3_sum D44_10bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
D44_8bin1_sum'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
D44_8bin2_sum'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
D44_8bin3_sum'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.

VARIABLE LABELS
D44_9bin1_sum'N�mero de Pedagogos'
D44_9bin2_sum'N�mero de Assistentes Sociais'
D44_9bin3_sum'N�mero de Antrop�logos'
D44_9bin4_sum'N�mero de Advogados'
D44_9bin5_sum'N�mero de Psic�logos'.

 VARIABLE LABELS
D44_10bin1_sum'N�mero de Servidores Estatut�rios'
D44_10bin2_sum'N�mero de Empregados P�blicos(CLT)'
D44_10bin3_sum'N�mero de Comissionados'
D44_10bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes'.

VARIABLE LABELS
nu_trabalhadores 'N�mero de trabalhadores no Centro POP'.

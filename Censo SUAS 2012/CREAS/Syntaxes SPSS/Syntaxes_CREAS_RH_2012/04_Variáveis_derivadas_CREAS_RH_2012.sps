****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v5420 (referente � data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)

**Ser� criada a vari�vel com o n�mero procurado. Em seguida rodar a syntax abaixo**

COMPUTE  D53_2=DATEDIFF(13576291200, q53_2,"years").
format D53_2 (F2.0).
EXECUTE.

VARIABLE LABELS D53_2 'Idade em anos (data ref. 31-12-2012)'.
execute.

***************************************************************************************************************************************************************

RECODE D53_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3) (40 thru 49=3) (50 thru 100=4)  INTO D53_categoria .
VARIABLE LABELS D53_categoria 'Idade (faixas et�rias)'.

VALUE LABELS  D53_categoria 
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.


RECODE q53_6 (251 thru 254=0) (255 thru 256=1) (257 thru 262=2) INTO D53_6.
VARIABLE LABELS  D53_6 'N�veis de escolaridade'.
EXECUTE.

RECODE D53_6 (0=1) INTO D53_6bin1.
VARIABLE LABELS  D53_6bin1 'N�vel fundamental'.
EXECUTE.

RECODE D53_6 (1=1) INTO D53_6bin2.
VARIABLE LABELS  D53_6bin2 'N�vel m�dio'.
EXECUTE.

RECODE D53_6 (2=1) INTO D53_6bin3.
VARIABLE LABELS  D53_6bin3 'N�vel superior'.
EXECUTE.

RECODE q53_7 (275=1) INTO D53_7bin1.
VARIABLE LABELS  D53_7bin1 'Pedagogo'.
EXECUTE.

RECODE q53_7 (273=1) INTO D53_7bin2.
VARIABLE LABELS  D53_7bin2 'Assistente Social'.
EXECUTE.

RECODE q53_7 (234=1) INTO D53_7bin3.
VARIABLE LABELS  D53_7bin3 'Antrop�logo'.
EXECUTE.

RECODE q53_7 (232=1) INTO D53_7bin4.
VARIABLE LABELS  D53_7bin4 'Advogado'.
EXECUTE.

RECODE q53_7 (274=1) INTO D53_7bin5.
VARIABLE LABELS  D53_7bin5 'Psic�logo'.
EXECUTE.

RECODE q53_8 (292=3) (139=2) (138=1) (else=4) INTO D53_8.
VARIABLE LABELS   D53_8 'Tipo de v�nculo'.
execute.

RECODE  D53_8 (1=1) INTO D53_8bin1.
VARIABLE LABELS   D53_8bin1 'Servidor Estatut�rio'.
execute.

RECODE D53_8  (2=1) INTO D53_8bin2.
VARIABLE LABELS  D53_8bin2 'Empregado P�blico (CLT)'.
execute.

RECODE D53_8 (3=1) INTO D53_8bin3.
VARIABLE LABELS D53_8bin3 'Comissionado'.
execute.

RECODE D53_8 (4=1) INTO D53_8bin4.
VARIABLE LABELS D53_8bin4 'Outros v�nculos n�o permanentes'.
execute.

VARIABLE LABELS
D53_6	'Escolaridade (por n�veis)'
D53_6bin1	'Escolaridade - N�vel fundamental'
D53_6bin2	'Escolaridade - N�vel m�dio'
D53_6bin3	'Escolaridade - N�vel superior'
D53_7bin1	'Profiss�o - Pedagogo'
D53_7bin2	'Profiss�o - Assistente Social'
D53_7bin3	'Profiss�o - Antrop�logo'
D53_7bin4	'Profiss�o - Advogado'
D53_7bin5	'Profiss�o - Psic�logo'
D53_8	'Tipo de v�nculo'
D53_8bin1	'Comissionado'
D53_8bin2	'Empregado P�blico (CLT)'
D53_8bin3	'Servidor Estatut�rio'
D53_8bin4	'Outros v�nculos n�o permanentes'.
execute.


VALUE LABELS D53_6
0 'N�vel fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.

VALUE LABELS D53_6bin1
1 'N�vel fundamental'.

VALUE LABELS  D53_6bin2
1 'N�vel M�dio'.

VALUE LABELS  D53_6bin3
1 'N�vel Superior'.

VALUE LABELS D53_7bin1
1 'Pedagogo'.

VALUE LABELS  D53_7bin2
1 'Assistente Social'.

VALUE LABELS  D53_7bin3
1 'Antrop�logo'.

VALUE LABELS  D53_7bin4
1 'Advogado'.

VALUE LABELS  D53_7bin5
1 'Psic�logo'.

VALUE LABELS D53_8
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.

VALUE LABELS  D53_8bin1
1 'Servidor Estatut�rio'.

VALUE LABELS  D53_8bin2
1 'Empregado P�blico (CLT)'.

VALUE LABELS  D53_8bin3
1 'Comissionado'.

VALUE LABELS  D53_8bin4
1 'Outros v�nculos n�o permanentes'.


********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /D53_6bin1_sum=SUM(D53_6bin1)
  /D53_6bin2_sum=SUM(D53_6bin2)
  /D53_6bin3_sum=SUM(D53_6bin3)
  /D53_7bin1_sum=SUM(D53_7bin1) 
  /D53_7bin2_sum=SUM(D53_7bin2) 
  /D53_7bin3_sum=SUM(D53_7bin3) 
  /D53_7bin4_sum=SUM(D53_7bin4) 
  /D53_7bin5_sum=SUM(D53_7bin5) 
  /D53_8bin1_sum=SUM(D53_8bin1) 
  /D53_8bin2_sum=SUM(D53_8bin2) 
  /D53_8bin3_sum=SUM(D53_8bin3) 
  /D53_8bin4_sum=SUM(D53_8bin4)
  /nu_trabalhadores=N
.
EXECUTE.


VARIABLE LABELS
 D53_6bin1_sum 'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 /D53_6bin2_sum'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 /D53_6bin3_sum'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
 /D53_7bin1_sum'N�mero de Pedagogos'
 /D53_7bin2_sum'N�mero de Assistentes Sociais'
 /D53_7bin3_sum'N�mero de Antrop�logos'
 /D53_7bin4_sum'N�mero de Advogados'
 /D53_7bin5_sum'N�mero de Psic�logos'
 /D53_8bin1_sum'N�mero de Servidores Estatut�rios'
 /D53_8bin2_sum'N�mero de Empregados P�blicos(CLT)'
 /D53_8bin3_sum'N�mero de Comissionados'
 /D53_8bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes'
 /nu_trabalhadores'N�mero de trabalhdores no CREAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE D53_6bin1_sum D53_6bin2_sum D53_6bin3_sum D53_7bin1_sum D53_7bin2_sum D53_7bin3_sum 
    D53_7bin4_sum D53_7bin5_sum D53_8bin1_sum D53_8bin2_sum D53_8bin3_sum D53_8bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D53_6bin1_sum 'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 D53_6bin2_sum'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 D53_6bin3_sum'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.

VARIABLE LABELS
 D53_7bin1_sum'N�mero de Pedagogos'
 D53_7bin2_sum'N�mero de Assistentes Sociais'
 D53_7bin3_sum'N�mero de Antrop�logos'
 D53_7bin4_sum'N�mero de Advogados'
 D53_7bin5_sum'N�mero de Psic�logos'.

 VARIABLE LABELS
 D53_8bin1_sum'N�mero de Servidores Estatut�rios'
 D53_8bin2_sum'N�mero de Empregados P�blicos(CLT)'
 D53_8bin3_sum'N�mero de Comissionados'
 D53_8bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes'.

VARIABLE LABELS
nu_trabalhadores 'N�mero de trabalhadores no CREAS'.




****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)

**Ser� criada a vari�vel com n�mero procurado. Em seguida rodar a sintax abaixo**

COMPUTE  D49_2=DATEDIFF(13576291200, q49_2,"years").
format D49_2 (F2.0).
EXECUTE.

VARIABLE LABELS D49_2 'Idade em anos (data ref. 31-12-2012)'.
EXECUTE.
***********************************************************************************************************

RECODE D49_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D49_categoria.
VARIABLE LABELS  D49_categoria  'Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  D49_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

RECODE q49_6 (251 thru 254=0) (255 thru 256=1) (257 thru 262=2) INTO D49_6.
VARIABLE LABELS D49_6 'N�veis de escolaridade'.
EXECUTE.

VALUE LABELS D49_6
0 'N�vel fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.

RECODE q49_8 (292=3) (139=2) (138=1) (else=4) INTO D49_8.
VARIABLE LABELS   D49_8 'Tipo de v�nculo'.

VALUE LABELS D49_8
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.
EXECUTE.

****vari�veis bin�rias escolaridade***

RECODE D49_6 (0=1) INTO D49_6bin1.
VARIABLE LABELS  D49_6bin1 'N�vel fundamental - trabalhadores que possuem at� o n�vel m�dio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D49_6bin1
1 'N�vel fundamental'.
EXECUTE.

RECODE D49_6 (1=1) INTO D49_6bin2.
VARIABLE LABELS  D49_6bin2 'N�vel m�dio - trabalhadores com ensino superior incompleto e ensino m�dio completo'.
EXECUTE.

VALUE LABELS  D49_6bin2
1 'N�vel M�dio'.
EXECUTE.

RECODE D49_6 (2=1) INTO D49_6bin3.
VARIABLE LABELS  D49_6bin3 'N�vel superior - inclui trabalhadores graduados, com especializa��o, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D49_6bin3
1 'N�vel Superior'.
EXECUTE.

****vari�veis bin�rias profiss�o****

RECODE q49_7 (275=1) INTO D49_7bin1.
VARIABLE LABELS  D49_7bin1 'Pedagogo'.
EXECUTE.

VALUE LABELS D49_7bin1
1 'Pedagogo'.
EXECUTE.

RECODE q49_7 (273=1) INTO D49_7bin2.
VARIABLE LABELS  D49_7bin2 'Assistente Social'.
EXECUTE.

VALUE LABELS  D49_7bin2
1 'Assistente Social'.
EXECUTE.

RECODE q49_7 (234=1) INTO D49_7bin3.
VARIABLE LABELS  D49_7bin3 'Antrop�logo'.
EXECUTE.

VALUE LABELS  D49_7bin3
1 'Antrop�logo'.
EXECUTE.

RECODE q49_7 (232=1) INTO D49_7bin4.
VARIABLE LABELS  D49_7bin4 'Advogado'.
EXECUTE.

VALUE LABELS  D49_7bin4
1 'Advogado'.
EXECUTE.

RECODE q49_7 (274=1) INTO D49_7bin5.
VARIABLE LABELS  D49_7bin5 'Psic�logo'.
EXECUTE.

VALUE LABELS  D49_7bin5
1 'Psic�logo'.
EXECUTE.

**** vari�veis bin�rias - tipo de v�nculo****

RECODE  D49_8 (1=1) INTO D49_8bin1.
VARIABLE LABELS   D49_8bin1 'Servidor Estatut�rio'.

VALUE LABELS  D49_8bin1
1 'Servidor Estatut�rio'.
EXECUTE.

RECODE D49_8  (2=1) INTO D49_8bin2.
VARIABLE LABELS  D49_8bin2 'Empregado P�blico (CLT)'.

VALUE LABELS  D49_8bin2
1 'Empregado P�blico (CLT)'.
EXECUTE.

RECODE D49_8 (3=1) INTO D49_8bin3.
VARIABLE LABELS D49_8bin3 'Comissionado'.

VALUE LABELS  D49_8bin3
1 'Comissionado'.
EXECUTE.

RECODE D49_8 (4=1) INTO D49_8bin4.
VARIABLE LABELS D49_8bin4 'Outros v�nculos n�o permanentes'.

VALUE LABELS  D49_8bin4
1 'Outros v�nculos n�o permanentes'.
EXECUTE.



********************AGGREGATE VARI�VEIS BIN�RIAS**************************


DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /D49_6bin1_sum=SUM(D49_6bin1)
  /D49_6bin2_sum=SUM(D49_6bin2)
  /D49_6bin3_sum=SUM(D49_6bin3)
  /D49_7bin1_sum=SUM(D49_7bin1) 
  /D49_7bin2_sum=SUM(D49_7bin2) 
  /D49_7bin3_sum=SUM(D49_7bin3) 
  /D49_7bin4_sum=SUM(D49_7bin4) 
  /D49_7bin5_sum=SUM(D49_7bin5) 
  /D49_8bin1_sum=SUM(D49_8bin1) 
  /D49_8bin2_sum=SUM(D49_8bin2) 
  /D49_8bin3_sum=SUM(D49_8bin3) 
  /D49_8bin4_sum=SUM(D49_8bin4)
  /nu_trabalhadores=N
.
EXECUTE.


VARIABLE LABELS
 D49_6bin1_sum 'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 /D49_6bin2_sum'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 /D49_6bin3_sum'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
 /D49_7bin1_sum'N�mero de Pedagogos'
 /D49_7bin2_sum'N�mero de Assistentes Sociais'
 /D49_7bin3_sum'N�mero de Antrop�logos'
 /D49_7bin4_sum'N�mero de Advogados'
 /D49_7bin5_sum'N�mero de Psic�logos'
 /D49_8bin1_sum'N�mero de Servidores Estatut�rios'
 /D49_8bin2_sum'N�mero de Empregados P�blicos(CLT)'
 /D49_8bin3_sum'N�mero de Comissionado's
 /D49_8bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes'
 /nu_trabalhadores'N�mero de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE D49_6bin1_sum D49_6bin2_sum D49_6bin3_sum D49_7bin1_sum D49_7bin2_sum D49_7bin3_sum 
    D49_7bin4_sum D49_7bin5_sum D49_8bin1_sum D49_8bin2_sum D49_8bin3_sum D49_8bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D49_6bin1_sum 'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 D49_6bin2_sum'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 D49_6bin3_sum'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D49_7bin1_sum'N�mero de Pedagogos'
 D49_7bin2_sum'N�mero de Assistentes Sociais'
 D49_7bin3_sum'N�mero de Antrop�logos'
 D49_7bin4_sum'N�mero de Advogados'
 D49_7bin5_sum'N�mero de Psic�logos'.
EXECUTE.

 VARIABLE LABELS
 D49_8bin1_sum'N�mero de Servidores Estatut�rios'
 D49_8bin2_sum'N�mero de Empregados P�blicos(CLT)'
 D49_8bin3_sum'N�mero de Comissionados'
 D49_8bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'N�mero de trabalhadores no CRAS'.
EXECUTE.

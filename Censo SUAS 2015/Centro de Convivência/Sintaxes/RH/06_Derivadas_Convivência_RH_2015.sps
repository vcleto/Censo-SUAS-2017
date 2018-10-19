****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

********************************************* BACKUP E CORRE��ES

****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)

**Trocar o ano de refer�ncia no COMPUTE abaixo. Em seguida rodar a sintax**

COMPUTE d31_2=DATEDIFF((DATE.DMY(31,12,2015)),q31_2,"years").
VARIABLE LABELS d31_2 'd31_2_Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

**** REMOVER DA d31_2 os casos em que o profissional tem idade < 16 ou > 70.
RECODE d31_2 (LOWEST thru 15=SYSMIS) (71 thru HIGHEST=SYSMIS).
EXECUTE.

***********************************************************************************************************

RECODE d31_2 (16 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 70=4) INTO d31_2_categoria.
VARIABLE LABELS  d31_2_categoria  'd31_2_categoria_Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  d31_2_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
EXECUTE.



RECODE q31_8 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d31_8.
VARIABLE LABELS d31_8 'd31_8_N�veis de escolaridade'.
EXECUTE.

VALUE LABELS d31_8
0 'N�vel Fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.

RECODE q31_10 (292=3) (139=2) (361=2) (363=2) (138=1) (else=4) INTO d31_10.
VARIABLE LABELS   d31_10 'd31_10_Tipo de v�nculo'.

VALUE LABELS d31_10
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.
EXECUTE.

****vari�veis bin�rias escolaridade***

RECODE d31_8 (0=1) INTO d31_8bin1.
VARIABLE LABELS  d31_8bin1 'd31_8bin1_N�vel fundamental - trabalhadores que possuem at� o n�vel m�dio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d31_8bin1
1 'N�vel Fundamental'.
EXECUTE.

RECODE d31_8 (1=1) INTO d31_8bin2.
VARIABLE LABELS  d31_8bin2 'd31_8bin2_N�vel m�dio - trabalhadores com ensino superior incompleto e ensino m�dio completo'.
EXECUTE.

VALUE LABELS  d31_8bin2
1 'N�vel M�dio'.
EXECUTE.

RECODE d31_8 (2=1) INTO d31_8bin3.
VARIABLE LABELS  d31_8bin3 'd31_8bin3_N�vel superior - inclui trabalhadores graduados, com especializa��o, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d31_8bin3
1 'N�vel Superior'.
EXECUTE.

****vari�veis bin�rias profiss�o****

RECODE q31_9 (275=1) INTO d31_9bin1.
VARIABLE LABELS d31_9bin1 'd31_9bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d31_9bin1
1 'Pedagogo'.
EXECUTE.

RECODE q31_9 (273=1) INTO d31_9bin2.
VARIABLE LABELS  d31_9bin2 'd31_9bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d31_9bin2
1 'Assistente Social'.
EXECUTE.

RECODE q31_9 (234=1) INTO d31_9bin3.
VARIABLE LABELS  d31_9bin3 'd31_9bin3_Antrop�logo'.
EXECUTE.

VALUE LABELS  d31_9bin3
1 'Antrop�logo'.
EXECUTE.

RECODE q31_9 (232=1) INTO d31_9bin4.
VARIABLE LABELS  d31_9bin4 'd31_9bin4_Advogado'.
EXECUTE.

VALUE LABELS  d31_9bin4
1 'Advogado'.
EXECUTE.

RECODE q31_9 (274=1) INTO d31_9bin5.
VARIABLE LABELS  d31_9bin5 'd31_9bin5_Psic�logo'.
EXECUTE.

VALUE LABELS  d31_9bin5
1 'Psic�logo'.
EXECUTE.

**** vari�veis bin�rias - tipo de v�nculo****

RECODE  d31_10 (1=1) INTO d31_10bin1.
VARIABLE LABELS   d31_10bin1 'd31_10bin1_Servidor Estatut�rio'.

VALUE LABELS  d31_10bin1
1 'Servidor Estatut�rio'.
EXECUTE.

RECODE d31_10  (2=1) INTO d31_10bin2.
VARIABLE LABELS  d31_10bin2 'd31_10bin2_Empregado P�blico (CLT)'.

VALUE LABELS  d31_10bin2
1 'Empregado P�blico (CLT)'.
EXECUTE.

RECODE d31_10 (3=1) INTO d31_10bin3.
VARIABLE LABELS d31_10bin3 'd31_10bin3_Comissionado'.

VALUE LABELS  d31_10bin3
1 'Comissionado'.
EXECUTE.

RECODE d31_10 (4=1) INTO d31_10bin4.
VARIABLE LABELS d31_10bin4 'd31_10bin4_Outros v�nculos n�o permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Servidor Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente'.

VALUE LABELS  d31_10bin4
1 'Outros v�nculos n�o permanentes'.
EXECUTE.


********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /d31_8bin1_sum=SUM(d31_8bin1)
  /d31_8bin2_sum=SUM(d31_8bin2)
  /d31_8bin3_sum=SUM(d31_8bin3)
  /d31_9bin1_sum=SUM(d31_9bin1) 
  /d31_9bin2_sum=SUM(d31_9bin2) 
  /d31_9bin3_sum=SUM(d31_9bin3) 
  /d31_9bin4_sum=SUM(d31_9bin4) 
  /d31_9bin5_sum=SUM(d31_9bin5) 
  /d31_10bin1_sum=SUM(d31_10bin1) 
  /d31_10bin2_sum=SUM(d31_10bin2) 
  /d31_10bin3_sum=SUM(d31_10bin3) 
  /d31_10bin4_sum=SUM(d31_10bin4)
  /nu_trabalhadores=N
.
EXECUTE.

DATASET ACTIVATE aggr.

VARIABLE LABELS
d31_8bin1_sum'd31_8bin1_sum_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
/d31_8bin2_sum'd31_8bin2_sum_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
/d31_8bin3_sum'd31_8bin3_sum_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
/d31_9bin1_sum'd31_9bin1_sum_N�mero de Pedagogos'
/d31_9bin2_sum'd31_9bin2_sum_N�mero de Assistentes Sociais'
/d31_9bin3_sum'd31_9bin3_sum_N�mero de Antrop�logos'
/d31_9bin4_sum'd31_9bin4_sum_N�mero de Advogados'
/d31_9bin5_sum'd31_9bin5_sum_N�mero de Psic�logos'
/d31_10bin1_sum'd31_10bin1_sum_N�mero de Servidores Estatut�rios'
/d31_10bin2_sum'd31_10bin2_sum_N�mero de Empregados P�blicos(CLT)'
/d31_10bin3_sum'd31_10bin3_sum_N�mero de Comissionados'
/d31_10bin4_sum'd31_10bin4_sum_N�mero de profissionais com outros v�nculos n�o permanentes'
/nu_trabalhadores'N�mero de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE d31_8bin1_sum d31_8bin2_sum d31_8bin3_sum d31_9bin1_sum d31_9bin2_sum d31_9bin3_sum 
d31_9bin4_sum d31_9bin5_sum d31_10bin1_sum d31_10bin2_sum d31_10bin3_sum d31_10bin4_sum (SYSMIS=0)
.
EXECUTE.

VARIABLE LABELS
d31_8bin1_sum 'd31_8bin1_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
d31_8bin2_sum'd31_8bin2_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
d31_8bin3_sum'd31_8bin3_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
d31_9bin1_sum'd31_9bin1_sum_N�mero de Pedagogos'
 d31_9bin2_sum'd31_9bin2_sum_N�mero de Assistentes Sociais'
 d31_9bin3_sum'd31_9bin3_sum_N�mero de Antrop�logos'
 d31_9bin4_sum'd31_9bin4_sum_N�mero de Advogados'
 d31_9bin5_sum'd31_9bin5_sum_N�mero de Psic�logos'.
EXECUTE.

VARIABLE LABELS
 d31_10bin1_sum'd31_10bin1_N�mero de Servidores Estatut�rios'
 d31_10bin2_sum'd31_10bin2_N�mero de Empregados P�blicos(CLT)'
 d31_10bin3_sum'd31_10bin3_N�mero de Comissionados'
 d31_10bin4_sum'd31_10bin4_N�mero de profissionais com outros v�nculos '+
'n�o permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Ser. Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'N�mero de trabalhadores no CRAS'.
EXECUTE.

FORMATS
d31_8bin1_sum
d31_8bin2_sum
d31_8bin3_sum
d31_9bin1_sum
d31_9bin2_sum
d31_9bin3_sum
d31_9bin4_sum
d31_9bin5_sum
d31_10bin1_sum
d31_10bin2_sum
d31_10bin3_sum
d31_10bin4_sum
(F8.0).

SORT CASES BY NU_IDENTIFICADOR(A).


******* MESCLAR AS VARI�VEIS DA BASE AGGR � BASE DADOS GERAIS




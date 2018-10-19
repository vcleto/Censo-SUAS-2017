* Encoding: windows-1252.
****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

********************************************* BACKUP E CORRE��ES

**** Corre��o do IBGE 2 d�gitos (perfil estado)

COMPUTE IBGE_original = IBGE.
VARIABLE LABELS IBGE_original'Original - C�digo IBGE do Munic�pio'.
EXECUTE.

IF  (IBGE<100) IBGE=TRUNC(NU_IDENTIFICADOR/10000000).
VARIABLE LABELS  IBGE 'C�digo IBGE do Munic�pio'.
EXECUTE.



****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)


COMPUTE num_data=DATE.DMY(31,12,2017).

**Trocar o ano de refer�ncia no COMPUTE abaixo. Em seguida rodar a sintax**

COMPUTE d28.2=DATEDIFF((DATE.DMY(31,12,2017)),q28.2,"years").
VARIABLE LABELS d28.2 'd28.2.Idade em anos (data ref. 31-12-2017)'.
EXECUTE.

**** REMOVER DA d40.idade os casos em que o profissional tem idade < 16 ou > 70.
RECODE d28.2 (LOWEST thru 15=SYSMIS) (71 thru HIGHEST=SYSMIS).
EXECUTE.

***********************************************************************************************************

RECODE d28.2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO d28.2_categoria.
VARIABLE LABELS  d28.2_categoria 'd28.2_Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS d28.2_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
EXECUTE.



RECODE q28.9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d28.9.
VARIABLE LABELS d28.9 'd28.9.recode_N�veis de escolaridade'.
EXECUTE.

VALUE LABELS d28.9
0 'N�vel Fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.

RECODE q28.11 (292=3) (139=2) (361=2) (363=2) (138=1) (else=4) INTO d28.11.
VARIABLE LABELS d28.11 'd28.11_Tipo de v�nculo'.

VALUE LABELS d28.11
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.
EXECUTE.

****vari�veis bin�rias escolaridade***

RECODE d28.9 (0=1) INTO d28.9bin1.
VARIABLE LABELS  d28.9bin1 'd28.9bin1_N�vel fundamental - trabalhadores que possuem at� o n�vel m�dio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d28.9bin1
1 'N�vel Fundamental'.
EXECUTE.

RECODE d28.9 (1=1) INTO d28.9bin2.
VARIABLE LABELS  d28.9bin2 'd28.9bin2_N�vel m�dio - trabalhadores com ensino superior incompleto e ensino m�dio completo'.
EXECUTE.

VALUE LABELS  d28.9bin2
1 'N�vel M�dio'.
EXECUTE.

RECODE d28.9 (2=1) INTO d28.9bin3.
VARIABLE LABELS  d28.9bin3 'd28.9bin3_N�vel superior - inclui trabalhadores graduados, com especializa��o, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d28.9bin3
1 'N�vel Superior'.
EXECUTE.

****vari�veis bin�rias profiss�o****

RECODE q28.10 (275=1) INTO d28.10bin1.
VARIABLE LABELS d28.10bin1 'd28.10bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d28.10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q28.10 (273=1) INTO d28.10bin2.
VARIABLE LABELS  d28.10bin2 'd28.10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d28.10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q28.10 (234=1) INTO d28.10bin3.
VARIABLE LABELS  d28.10bin3 'd28.10bin3_Antrop�logo'.
EXECUTE.

VALUE LABELS  d28.10bin3
1 'Antrop�logo'.
EXECUTE.

RECODE q28.10 (232=1) INTO d28.10bin4.
VARIABLE LABELS  d28.10bin4 'd28.10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d28.10bin4
1 'Advogado'.
EXECUTE.

RECODE q28.10 (274=1) INTO d28.10bin5.
VARIABLE LABELS  d28.10bin5 'd28.10bin5_Psic�logo'.
EXECUTE.

VALUE LABELS  d28.10bin5
1 'Psic�logo'.
EXECUTE.

**** vari�veis bin�rias - tipo de v�nculo****

RECODE  d28.11 (1=1) INTO d28.11bin1.
VARIABLE LABELS   d28.11bin1 'd28.11bin1_Servidor Estatut�rio'.

VALUE LABELS  d28.11bin1
1 'Servidor Estatut�rio'.
EXECUTE.

RECODE d28.11  (2=1) INTO d28.11bin2.
VARIABLE LABELS  d28.11bin2 'd28.11bin2_Empregado P�blico (CLT)'.

VALUE LABELS  d28.11bin2
1 'Empregado P�blico (CLT)'.
EXECUTE.

RECODE d28.11 (3=1) INTO d28.11bin3.
VARIABLE LABELS d28.11bin3 'd28.11bin3_Comissionado'.

VALUE LABELS  d28.11bin3
1 'Comissionado'.
EXECUTE.

RECODE d28.11 (4=1) INTO d28.11bin4.
VARIABLE LABELS d28.11bin4 'd28.11bin4_Outros v�nculos n�o permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Servidor Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente'.

VALUE LABELS  d28.11bin4
1 'Outros v�nculos n�o permanentes'.
EXECUTE.


********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /d28.9bin1_sum=SUM(d28.10bin1)
  /d28.9bin2_sum=SUM(d28.10bin2)
  /d28.9bin3_sum=SUM(d28.10bin3)
  /d28.10bin1_sum=SUM(d28.10bin1) 
  /d28.10bin2_sum=SUM(d28.10bin2) 
  /d28.10bin3_sum=SUM(d28.10bin3) 
  /d28.10bin4_sum=SUM(d28.10bin4) 
  /d28.10bin5_sum=SUM(d28.10bin5) 
  /d28.11bin1_sum=SUM(d28.11bin1) 
  /d28.11bin2_sum=SUM(d28.11bin2) 
  /d28.11bin3_sum=SUM(d28.11bin3) 
  /d28.11bin4_sum=SUM(d28.11bin4)
  /nu_trabalhadores=N
.
EXECUTE.

DATASET ACTIVATE aggr.

VARIABLE LABELS
d28.9bin1_sum'd28.9bin1_sum_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
/d28.9bin2_sum'd28.9bin2_sum_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
/d28.9bin3_sum'd28.9bin3_sum_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
/d28.10bin1_sum'd28.10bin1_sum_N�mero de Pedagogos'
/d28.10bin2_sum'd28.10bin2_sum_N�mero de Assistentes Sociais'
/d28.10bin3_sum'd28.10bin3_sum_N�mero de Antrop�logos'
/d28.10bin4_sum'd28.10bin4_sum_N�mero de Advogados'
/d28.10bin5_sum'd28.10bin5_sum_N�mero de Psic�logos'
/d28.11bin1_sum'd28.11bin1_sum_N�mero de Servidores Estatut�rios'
/d28.11bin2_sum'd28.11bin2_sum_N�mero de Empregados P�blicos(CLT)'
/d28.11bin3_sum'd28.11bin3_sum_N�mero de Comissionados'
/d28.11bin4_sum'd28.11bin4_sum_N�mero de profissionais com outros v�nculos n�o permanentes'
/nu_trabalhadores'N�mero de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE d28.9bin1_sum d28.9bin2_sum d28.9bin3_sum d28.10bin1_sum d28.10bin2_sum d28.10bin3_sum 
d28.10bin4_sum d28.10bin5_sum d28.11bin1_sum d28.11bin2_sum d28.11bin3_sum d28.11bin4_sum (SYSMIS=0)
.
EXECUTE.

VARIABLE LABELS
d28.9bin1_sum 'd28.9bin1_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
d28.9bin2_sum'd28.9bin2_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
d28.9bin3_sum'd28.9bin3_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
d28.10bin1_sum'd28.10bin1_sum_N�mero de Pedagogos'
 d28.10bin2_sum'd28.10bin2_sum_N�mero de Assistentes Sociais'
 d28.10bin3_sum'd28.10bin3_sum_N�mero de Antrop�logos'
 d28.10bin4_sum'd28.10bin4_sum_N�mero de Advogados'
 d28.10bin5_sum'd28.10bin5_sum_N�mero de Psic�logos'.
EXECUTE.

VARIABLE LABELS
 d28.11bin1_sum'd28.11bin1_N�mero de Servidores Estatut�rios'
 d28.11bin2_sum'd28.11bin2_N�mero de Empregados P�blicos(CLT)'
 d28.11bin3_sum'd28.11bin3_N�mero de Comissionados'
 d28.11bin4_sum'd28.11bin4_N�mero de profissionais com outros v�nculos '+
'n�o permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Ser. Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'N�mero de trabalhadores no CRAS'.
EXECUTE.

FORMATS
d28.9bin1_sum
d28.9bin2_sum
d28.9bin3_sum
d28.10bin1_sum
d28.10bin2_sum
d28.10bin3_sum
d28.10bin4_sum
d28.10bin5_sum
d28.11bin1_sum
d28.11bin2_sum
d28.11bin3_sum
d28.11bin4_sum
(F8.0).

SORT CASES BY NU_IDENTIFICADOR(A).


******* MESCLAR AS VARI�VEIS DA BASE AGGR � BASE DADOS GERAIS




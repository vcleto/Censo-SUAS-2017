****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

********************************************* BACKUP E CORRE��ES

**** Corre��o do IBGE 2 d�gitos (perfil estado)

COMPUTE CD_IBGE_original = CD_IBGE.
VARIABLE LABELS CD_IBGE_original'Original - C�digo IBGE do Munic�pio'.
EXECUTE.

IF  (CD_IBGE<100) CD_IBGE=TRUNC(NU_IDENTIFICADOR/100000).
VARIABLE LABELS  CD_IBGE 'C�digo IBGE do Munic�pio'.
EXECUTE.



****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)

**Trocar o ano de refer�ncia no COMPUTE abaixo. Em seguida rodar a sintax**

COMPUTE d55_2=DATEDIFF((DATE.DMY(31,12,2015)),q55_2,"years").
VARIABLE LABELS d55_2 'd55_2_Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

**** REMOVER DA d55_2 os casos em que o profissional tem idade < 16 ou > 70.
RECODE d55_2 (LOWEST thru 15=SYSMIS) (71 thru HIGHEST=SYSMIS).
EXECUTE.

***********************************************************************************************************

RECODE d55_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO d55_2_categoria.
VARIABLE LABELS  d55_2_categoria  'd55_2_categoria_Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  d55_2_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
EXECUTE.



RECODE q55_6 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d55_6.
VARIABLE LABELS d55_6 'd55_6_N�veis de escolaridade'.
EXECUTE.

VALUE LABELS d55_6
0 'N�vel fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.

RECODE q55_8 (292=3) (139=2) (138=1) (else=4) INTO d55_8.
VARIABLE LABELS   d55_8 'd55_8_Tipo de v�nculo'.

VALUE LABELS d55_8
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.
EXECUTE.

****vari�veis bin�rias escolaridade***

RECODE d55_6 (0=1) INTO d55_6bin1.
VARIABLE LABELS  d55_6bin1 'd55_6bin1_N�vel fundamental - trabalhadores que possuem at� o n�vel m�dio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d55_6bin1
1 'N�vel fundamental'.
EXECUTE.

RECODE d55_6 (1=1) INTO d55_6bin2.
VARIABLE LABELS  d55_6bin2 'd55_6bin2_N�vel m�dio - trabalhadores com ensino superior incompleto e ensino m�dio completo'.
EXECUTE.

VALUE LABELS  d55_6bin2
1 'N�vel M�dio'.
EXECUTE.

RECODE d55_6 (2=1) INTO d55_6bin3.
VARIABLE LABELS  d55_6bin3 'd55_6bin3_N�vel superior - inclui trabalhadores graduados, com especializa��o, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d55_6bin3
1 'N�vel Superior'.
EXECUTE.

****vari�veis bin�rias profiss�o****

RECODE q55_7 (275=1) INTO d55_7bin1.
VARIABLE LABELS  d55_7bin1 'd55_7bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d55_7bin1
1 'Pedagogo'.
EXECUTE.

RECODE q55_7 (273=1) INTO d55_7bin2.
VARIABLE LABELS  d55_7bin2 'd55_7bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d55_7bin2
1 'Assistente Social'.
EXECUTE.

RECODE q55_7 (234=1) INTO d55_7bin3.
VARIABLE LABELS  d55_7bin3 'd55_7bin3_Antrop�logo'.
EXECUTE.

VALUE LABELS  d55_7bin3
1 'Antrop�logo'.
EXECUTE.

RECODE q55_7 (232=1) INTO d55_7bin4.
VARIABLE LABELS  d55_7bin4 'd55_7bin4_Advogado'.
EXECUTE.

VALUE LABELS  d55_7bin4
1 'Advogado'.
EXECUTE.

RECODE q55_7 (274=1) INTO d55_7bin5.
VARIABLE LABELS  d55_7bin5 'd55_7bin5_Psic�logo'.
EXECUTE.

VALUE LABELS  d55_7bin5
1 'Psic�logo'.
EXECUTE.

**** vari�veis bin�rias - tipo de v�nculo****

RECODE  d55_8 (1=1) INTO d55_8bin1.
VARIABLE LABELS   d55_8bin1 'd55_8bin1_Servidor Estatut�rio'.

VALUE LABELS  d55_8bin1
1 'Servidor Estatut�rio'.
EXECUTE.

RECODE d55_8  (2=1) INTO d55_8bin2.
VARIABLE LABELS  d55_8bin2 'd55_8bin2_Empregado P�blico (CLT)'.

VALUE LABELS  d55_8bin2
1 'Empregado P�blico (CLT)'.
EXECUTE.

RECODE d55_8 (3=1) INTO d55_8bin3.
VARIABLE LABELS d55_8bin3 'd55_8bin3_Comissionado'.

VALUE LABELS  d55_8bin3
1 'Comissionado'.
EXECUTE.

RECODE d55_8 (4=1) INTO d55_8bin4.
VARIABLE LABELS d55_8bin4 'd55_8bin4_Outros v�nculos n�o permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Servidor Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente'.

VALUE LABELS  d55_8bin4
1 'Outros v�nculos n�o permanentes'.
EXECUTE.


**** vari�veis bin�rias - Servi�os****

RECODE  q55_12_1 (1=1) INTO d55_12_1bin_Gest�o.
VARIABLE LABELS   d55_12_1bin_Gest�o 'd55_12_1bin_Gest�o - Principal servi�o/atividade'.

VALUE LABELS  d55_12_1bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE  q55_12_1 (2=1) INTO d55_12_1bin_PAIF.
VARIABLE LABELS   d55_12_1bin_PAIF 'd55_12_1bin_PAIF - Principal servi�o/atividade'.

VALUE LABELS  d55_12_1bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q55_12_1 (3=1) INTO d55_12_1bin_SCFV.
VARIABLE LABELS   d55_12_1bin_SCFV 'd55_12_1bin_SCFV - Principal servi�o/atividade'.

VALUE LABELS  d55_12_1bin_SCFV
1 'Servi�o de Conviv�ncia e Fortalecimento de V�nculos - SCFV'.
EXECUTE.

RECODE  q55_12_1 (4=1) INTO d55_12_1bin_Cadastramento.
VARIABLE LABELS   d55_12_1bin_Cadastramento 'd55_12_1bin_Cadastramento - Principal servi�o/atividade'.

VALUE LABELS  d55_12_1bin_Cadastramento
1 'Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)'.
EXECUTE.

RECODE  q55_12_1 (99=1) INTO d55_12_1bin_Outros.
VARIABLE LABELS   d55_12_1bin_Outros 'd55_12_1bin_Outros - Principal servi�o/atividade'.

VALUE LABELS  d55_12_1bin_Outros
1 'Outros'.
EXECUTE.



RECODE  q55_12_2 (1=1) INTO d55_12_2bin_Gest�o.
VARIABLE LABELS   d55_12_2bin_Gest�o 'd55_12_2bin_Gest�o - Segundo principal servi�o/atividade'.

VALUE LABELS  d55_12_2bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE  q55_12_2 (2=1) INTO d55_12_2bin_PAIF.
VARIABLE LABELS   d55_12_2bin_PAIF 'd55_12_2bin_PAIF - Segundo principal servi�o/atividade'.

VALUE LABELS  d55_12_2bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q55_12_2 (3=1) INTO d55_12_2bin_SCFV.
VARIABLE LABELS   d55_12_2bin_SCFV 'd55_12_2bin_SCFV - Segundo principal servi�o/atividade'.

VALUE LABELS  d55_12_2bin_SCFV
1 'Servi�o de Conviv�ncia e Fortalecimento de V�nculos - SCFV'.
EXECUTE.

RECODE  q55_12_2 (4=1) INTO d55_12_2bin_Cadastramento.
VARIABLE LABELS   d55_12_2bin_Cadastramento 'd55_12_2bin_Cadastramento - Segundo principal servi�o/atividade'.

VALUE LABELS  d55_12_2bin_Cadastramento
1 'Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)'.
EXECUTE.

RECODE  q55_12_2 (99=1) INTO d55_12_2bin_Outros.
VARIABLE LABELS   d55_12_2bin_Outros 'd55_12_2bin_Outros - Principal servi�o/atividade'.

VALUE LABELS  d55_12_2bin_Outros
1 'Outros'.
EXECUTE.




RECODE  q55_12_3 (1=1) INTO d55_12_3bin_Gest�o.
VARIABLE LABELS   d55_12_3bin_Gest�o 'd55_12_3bin_Gest�o - Terceiro principal servi�o/atividade'.

VALUE LABELS  d55_12_3bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE  q55_12_3 (2=1) INTO d55_12_3bin_PAIF.
VARIABLE LABELS   d55_12_3bin_PAIF 'd55_12_3bin_PAIF - Terceiro principal servi�o/atividade'.

VALUE LABELS  d55_12_3bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q55_12_3 (3=1) INTO d55_12_3bin_SCFV.
VARIABLE LABELS   d55_12_3bin_SCFV 'd55_12_3bin_SCFV - Terceiro principal servi�o/atividade'.

VALUE LABELS  d55_12_3bin_SCFV
1 'Servi�o de Conviv�ncia e Fortalecimento de V�nculos - SCFV'.
EXECUTE.

RECODE  q55_12_3 (4=1) INTO d55_12_3bin_Cadastramento.
VARIABLE LABELS   d55_12_3bin_Cadastramento 'd55_12_3bin_Cadastramento - Terceiro principal servi�o/atividade'.

VALUE LABELS  d55_12_3bin_Cadastramento
1 'Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)'.
EXECUTE.

RECODE  q55_12_3 (99=1) INTO d55_12_3bin_Outros.
VARIABLE LABELS   d55_12_3bin_Outros 'd55_12_3bin_Outros - Principal servi�o/atividade'.

VALUE LABELS  d55_12_3bin_Outros
1 'Outros'.
EXECUTE.


********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /d55_6bin1_sum=SUM(d55_6bin1)
  /d55_6bin2_sum=SUM(d55_6bin2)
  /d55_6bin3_sum=SUM(d55_6bin3)
  /d55_7bin1_sum=SUM(d55_7bin1) 
  /d55_7bin2_sum=SUM(d55_7bin2) 
  /d55_7bin3_sum=SUM(d55_7bin3) 
  /d55_7bin4_sum=SUM(d55_7bin4) 
  /d55_7bin5_sum=SUM(d55_7bin5) 
  /d55_8bin1_sum=SUM(d55_8bin1) 
  /d55_8bin2_sum=SUM(d55_8bin2) 
  /d55_8bin3_sum=SUM(d55_8bin3) 
  /d55_8bin4_sum=SUM(d55_8bin4)
  /d55_12_1bin_Gest�o_sum=SUM(d55_12_1bin_Gest�o)
  /d55_12_1bin_PAIF_sum=SUM(d55_12_1bin_PAIF)
  /d55_12_1bin_SCFV_sum=SUM(d55_12_1bin_SCFV)
		/d55_12_1bin_Cadastramento_sum=SUM(d55_12_1bin_Cadastramento)
  /d55_12_1bin_Outros_sum=SUM(d55_12_1bin_Outros)
  /d55_12_2bin_Gest�o_sum=SUM(d55_12_2bin_Gest�o)
  /d55_12_2bin_PAIF_sum=SUM(d55_12_2bin_PAIF)
  /d55_12_2bin_SCFV_sum=SUM(d55_12_2bin_SCFV)
		/d55_12_2bin_Cadastramento_sum=SUM(d55_12_2bin_Cadastramento)
  /d55_12_2bin_Outros_sum=SUM(d55_12_2bin_Outros)
  /d55_12_3bin_Gest�o_sum=SUM(d55_12_3bin_Gest�o)
  /d55_12_3bin_PAIF_sum=SUM(d55_12_3bin_PAIF)
  /d55_12_3bin_SCFV_sum=SUM(d55_12_3bin_SCFV)
		/d55_12_3bin_Cadastramento_sum=SUM(d55_12_3bin_Cadastramento)
  /d55_12_3bin_Outros_sum=SUM(d55_12_3bin_Outros)
  /nu_trabalhadores=N
.
EXECUTE.

DATASET ACTIVATE aggr.

VARIABLE LABELS
d55_6bin1_sum 'd55_6bin1_sum_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
/d55_6bin2_sum'd55_6bin2_sum_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
/d55_6bin3_sum'd55_6bin3_sum_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
/d55_7bin1_sum'd55_7bin1_sum_N�mero de Pedagogos'
/d55_7bin2_sum'd55_7bin2_sum_N�mero de Assistentes Sociais'
/d55_7bin3_sum'd55_7bin3_sum_N�mero de Antrop�logos'
/d55_7bin4_sum'd55_7bin4_sum_N�mero de Advogados'
/d55_7bin5_sum'd55_7bin5_sum_N�mero de Psic�logos'
/d55_8bin1_sum'd55_8bin1_sum_N�mero de Servidores Estatut�rios'
/d55_8bin2_sum'd55_8bin2_sum_N�mero de Empregados P�blicos(CLT)'
/d55_8bin3_sum'd55_8bin3_sum_N�mero de Comissionados'
/d55_8bin4_sum'd55_8bin4_sum_N�mero de profissionais com outros v�nculos n�o permanentes'
/d55_12_1bin_Gest�o_sum'd55_12_1bin_Gest�o - Principal servi�o/atividade'
/d55_12_1bin_PAIF_sum'd55_12_1bin_PAIF - Principal servi�o/atividade'
/d55_12_1bin_SCFV_sum'd55_12_1bin_SCFV - Principal servi�o/atividade'
/d55_12_1bin_Cadastramento_sum'd55_12_1bin_Cadastramento- Principal servi�o/atividade'
/d55_12_1bin_Outros_sum'd55_12_1bin_Outros - Principal servi�o/atividade'
/d55_12_2bin_Gest�o_sum'd55_12_2bin_Gest�o - Segundo principal servi�o/atividade'
/d55_12_2bin_PAIF_sum'd55_12_2bin_PAIF - Segundo principal servi�o/atividade'
/d55_12_2bin_SCFV_sum'd55_12_2bin_SCFV - Segundo principal servi�o/atividade'
/d55_12_2bin_Cadastramento_sum'd55_12_2bin_Cadastramento- Segundo servi�o/atividade'
/d55_12_2bin_Outros_sum'd55_12_2bin_Outros - Principal servi�o/atividade'
/d55_12_3bin_Gest�o_sum'd55_12_3bin_Gest�o - Terceiro principal servi�o/atividade'
/d55_12_3bin_PAIF_sum'd55_12_3bin_PAIF - Terceiro principal servi�o/atividade'
/d55_12_3bin_SCFV_sum'd55_12_3bin_SCFV - Terceiro principal servi�o/atividade'
/d55_12_3bin_Cadastramento_sum'd55_12_3bin_Cadastramento - Terceiro principal servi�o/atividade'
/d55_12_3bin_Outros_sum'd55_12_3bin_Outros - Principal servi�o/atividade'
/nu_trabalhadores'N�mero de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE d55_6bin1_sum d55_6bin2_sum d55_6bin3_sum d55_7bin1_sum d55_7bin2_sum d55_7bin3_sum 
d55_7bin4_sum d55_7bin5_sum d55_8bin1_sum d55_8bin2_sum d55_8bin3_sum d55_8bin4_sum d55_12_1bin_Gest�o_sum
d55_12_1bin_PAIF_sum	d55_12_1bin_SCFV_sum	d55_12_1bin_Cadastramento_sum	d55_12_1bin_Outros_sum	d55_12_2bin_Gest�o_sum	d55_12_2bin_PAIF_sum	
d55_12_2bin_SCFV_sum	d55_12_2bin_Cadastramento_sum	d55_12_2bin_Outros_sum	d55_12_3bin_Gest�o_sum	d55_12_3bin_PAIF_sum	d55_12_3bin_SCFV_sum	
d55_12_3bin_Cadastramento_sum	d55_12_3bin_Outros_sum nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
d55_6bin1_sum 'd55_6bin1_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
d55_6bin2_sum'd55_6bin2_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
d55_6bin3_sum'd55_6bin3_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 d55_7bin1_sum'd55_7bin1_sum_N�mero de Pedagogos'
 d55_7bin2_sum'd55_7bin2_sum_N�mero de Assistentes Sociais'
 d55_7bin3_sum'd55_7bin3_sum_N�mero de Antrop�logos'
 d55_7bin4_sum'd55_7bin4_sum_N�mero de Advogados'
 d55_7bin5_sum'd55_7bin5_sum_N�mero de Psic�logos'.
EXECUTE.

VARIABLE LABELS
 d55_8bin1_sum'd55_8bin1_N�mero de Servidores Estatut�rios'
 d55_8bin2_sum'd55_8bin2_N�mero de Empregados P�blicos(CLT)'
 d55_8bin3_sum'd55_8bin3_N�mero de Comissionados'
 d55_8bin4_sum'd55_8bin4_N�mero de profissionais com outros v�nculos n�o permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Ser. Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'N�mero de trabalhadores no CRAS'.
EXECUTE.

FORMATS
d55_6bin1_sum
d55_6bin2_sum
d55_6bin3_sum
d55_7bin1_sum
d55_7bin2_sum
d55_7bin3_sum
d55_7bin4_sum
d55_7bin5_sum
d55_8bin1_sum
d55_8bin2_sum
d55_8bin3_sum
d55_8bin4_sum
d55_12_1bin_Gest�o_sum
d55_12_1bin_PAIF_sum
d55_12_1bin_SCFV_sum
d55_12_1bin_Cadastramento_sum
d55_12_1bin_Outros_sum
d55_12_2bin_Gest�o_sum
d55_12_2bin_PAIF_sum
d55_12_2bin_SCFV_sum
d55_12_2bin_Cadastramento_sum
d55_12_2bin_Outros_sum
d55_12_3bin_Gest�o_sum
d55_12_3bin_PAIF_sum
d55_12_3bin_SCFV_sum
d55_12_3bin_Cadastramento_sum
d55_12_3bin_Outros_sum
(F8.0).

SORT CASES BY NU_IDENTIFICADOR(A).


******* MESCLAR AS VARI�VEIS DA BASE AGGR � BASE DADOS GERAIS




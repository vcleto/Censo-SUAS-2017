

**Trocar o ano de refer�ncia no COMPUTE abaixo. Em seguida rodar a sintax**

COMPUTE d43_2=DATEDIFF((DATE.DMY(31,12,2016)),q43_2_dtnasc,"years").
VARIABLE LABELS d43_2 'd43_2_Idade em anos (data ref. 31-12-2016)'.
EXECUTE.

**** REMOVER DA d43_2 os casos em que o profissional tem idade < 16 ou > 70.
RECODE d43_2 (LOWEST thru 15=SYSMIS) (81 thru HIGHEST=SYSMIS).
EXECUTE.

***********************************************************************************************************

RECODE d43_2 (16 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 80=4) INTO d43_2_categoria.
VARIABLE LABELS  d43_2_categoria  'd43_2_categoria_Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  d43_2_categoria
1 'De 16 a 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 'De 50 a 80 anos'.
EXECUTE.



RECODE q43_7_esc (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d43_7.
VARIABLE LABELS d43_7 'd43_7_N�veis de escolaridade'.
EXECUTE.

VALUE LABELS d43_7
0 'N�vel Fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.

RECODE q43_9_vinc (292=3) (139=2) (138=1) (else=4) INTO d43_9.
VARIABLE LABELS   d43_9 'd43_9_Tipo de v�nculo'.

VALUE LABELS d43_9
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.
EXECUTE.

****vari�veis bin�rias escolaridade***

RECODE d43_7 (0=1) INTO d43_7bin1.
VARIABLE LABELS  d43_7bin1 'd43_7bin1_N�vel fundamental - trabalhadores que possuem at� o n�vel m�dio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d43_7bin1
1 'N�vel Fundamental'.
EXECUTE.

RECODE d43_7 (1=1) INTO d43_7bin2.
VARIABLE LABELS  d43_7bin2 'd43_7bin2_N�vel m�dio - trabalhadores com ensino superior incompleto e ensino m�dio completo'.
EXECUTE.

VALUE LABELS  d43_7bin2
1 'N�vel M�dio'.
EXECUTE.

RECODE d43_7 (2=1) INTO d43_7bin3.
VARIABLE LABELS  d43_7bin3 'd43_7bin3_N�vel superior - inclui trabalhadores graduados, com especializa��o, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d43_7bin3
1 'N�vel Superior'.
EXECUTE.

****vari�veis bin�rias profiss�o****

RECODE q43_8_prof (275=1) INTO d43_8bin1.
VARIABLE LABELS  d43_8bin1 'd43_8bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d43_8bin1
1 'Pedagogo'.
EXECUTE.

RECODE q43_8_prof (273=1) INTO d43_8bin2.
VARIABLE LABELS  d43_8bin2 'd43_8bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d43_8bin2
1 'Assistente Social'.
EXECUTE.

RECODE q43_8_prof (234=1) INTO d43_8bin3.
VARIABLE LABELS  d43_8bin3 'd43_8bin3_Antrop�logo'.
EXECUTE.

VALUE LABELS  d43_8bin3
1 'Antrop�logo'.
EXECUTE.

RECODE q43_8_prof (232=1) INTO d43_8bin4.
VARIABLE LABELS  d43_8bin4 'd43_8bin4_Advogado'.
EXECUTE.

VALUE LABELS  d43_8bin4
1 'Advogado'.
EXECUTE.

RECODE q43_8_prof (274=1) INTO d43_8bin5.
VARIABLE LABELS  d43_8bin5 'd43_8bin5_Psic�logo'.
EXECUTE.

VALUE LABELS  d43_8bin5
1 'Psic�logo'.
EXECUTE.

**** vari�veis bin�rias - tipo de v�nculo****

RECODE  d43_9 (1=1) INTO d43_9bin1.
VARIABLE LABELS   d43_9bin1 'd43_9bin1_Servidor Estatut�rio'.

VALUE LABELS  d43_9bin1
1 'Servidor Estatut�rio'.
EXECUTE.

RECODE d43_9  (2=1) INTO d43_9bin2.
VARIABLE LABELS  d43_9bin2 'd43_9bin2_Empregado P�blico (CLT)'.

VALUE LABELS  d43_9bin2
1 'Empregado P�blico (CLT)'.
EXECUTE.

RECODE d43_9 (3=1) INTO d43_9bin3.
VARIABLE LABELS d43_9bin3 'd43_9bin3_Comissionado'.

VALUE LABELS  d43_9bin3
1 'Comissionado'.
EXECUTE.

RECODE d43_9 (4=1) INTO d43_9bin4.
VARIABLE LABELS d43_9bin4 'd43_9bin4_Outros v�nculos n�o permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Servidor Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente'.

VALUE LABELS  d43_9bin4
1 'Outros v�nculos n�o permanentes'.
EXECUTE.


**** vari�veis bin�rias - Servi�os****

RECODE  q43_13_1 (1=1) INTO d43_13_1bin_Gest�o.
VARIABLE LABELS   d43_13_1bin_Gest�o 'd43_13_1bin_Gest�o - Principal servi�o/atividade'.

VALUE LABELS  d43_13_1bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE  q43_13_1 (2=1) INTO d43_13_1bin_PAIF.
VARIABLE LABELS   d43_13_1bin_PAIF 'd43_13_1bin_PAIF - Principal servi�o/atividade'.

VALUE LABELS  d43_13_1bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q43_13_1 (3=1) INTO d43_13_1bin_SCFV.
VARIABLE LABELS   d43_13_1bin_SCFV 'd43_13_1bin_SCFV - Principal servi�o/atividade'.

VALUE LABELS  d43_13_1bin_SCFV
1 'Servi�o de Conviv�ncia e Fortalecimento de V�nculos - SCFV'.
EXECUTE.

RECODE  q43_13_1 (4=1) INTO d43_13_1bin_Cadastramento.
VARIABLE LABELS   d43_13_1bin_Cadastramento 'd43_13_1bin_Cadastramento - Principal servi�o/atividade'.

VALUE LABELS  d43_13_1bin_Cadastramento
1 'Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)'.
EXECUTE.

RECODE  q43_13_1 (99=1) INTO d43_13_1bin_Outros.
VARIABLE LABELS   d43_13_1bin_Outros 'd43_13_1bin_Outros - Principal servi�o/atividade'.

VALUE LABELS  d43_13_1bin_Outros
1 'Outros'.
EXECUTE.



RECODE  q43_13_2 (1=1) INTO d43_13_2bin_Gest�o.
VARIABLE LABELS   d43_13_2bin_Gest�o 'd43_13_2bin_Gest�o - Segundo principal servi�o/atividade'.

VALUE LABELS  d43_13_2bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE  q43_13_2 (2=1) INTO d43_13_2bin_PAIF.
VARIABLE LABELS   d43_13_2bin_PAIF 'd43_13_2bin_PAIF - Segundo principal servi�o/atividade'.

VALUE LABELS  d43_13_2bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q43_13_2 (3=1) INTO d43_13_2bin_SCFV.
VARIABLE LABELS   d43_13_2bin_SCFV 'd43_13_2bin_SCFV - Segundo principal servi�o/atividade'.

VALUE LABELS  d43_13_2bin_SCFV
1 'Servi�o de Conviv�ncia e Fortalecimento de V�nculos - SCFV'.
EXECUTE.

RECODE  q43_13_2 (4=1) INTO d43_13_2bin_Cadastramento.
VARIABLE LABELS   d43_13_2bin_Cadastramento 'd43_13_2bin_Cadastramento - Segundo principal servi�o/atividade'.

VALUE LABELS  d43_13_2bin_Cadastramento
1 'Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)'.
EXECUTE.

RECODE  q43_13_2 (99=1) INTO d43_13_2bin_Outros.
VARIABLE LABELS   d43_13_2bin_Outros 'd43_13_2bin_Outros - Principal servi�o/atividade'.

VALUE LABELS  d43_13_2bin_Outros
1 'Outros'.
EXECUTE.




RECODE  q43_13_3 (1=1) INTO d43_13_3bin_Gest�o.
VARIABLE LABELS   d43_13_3bin_Gest�o 'd43_13_3bin_Gest�o - Terceiro principal servi�o/atividade'.

VALUE LABELS  d43_13_3bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE  q43_13_3 (2=1) INTO d43_13_3bin_PAIF.
VARIABLE LABELS   d43_13_3bin_PAIF 'd43_13_3bin_PAIF - Terceiro principal servi�o/atividade'.

VALUE LABELS  d43_13_3bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q43_13_3 (3=1) INTO d43_13_3bin_SCFV.
VARIABLE LABELS   d43_13_3bin_SCFV 'd43_13_3bin_SCFV - Terceiro principal servi�o/atividade'.

VALUE LABELS  d43_13_3bin_SCFV
1 'Servi�o de Conviv�ncia e Fortalecimento de V�nculos - SCFV'.
EXECUTE.

RECODE  q43_13_3 (4=1) INTO d43_13_3bin_Cadastramento.
VARIABLE LABELS   d43_13_3bin_Cadastramento 'd43_13_3bin_Cadastramento - Terceiro principal servi�o/atividade'.

VALUE LABELS  d43_13_3bin_Cadastramento
1 'Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)'.
EXECUTE.

RECODE  q43_13_3 (99=1) INTO d43_13_3bin_Outros.
VARIABLE LABELS   d43_13_3bin_Outros 'd43_13_3bin_Outros - Principal servi�o/atividade'.

VALUE LABELS  d43_13_3bin_Outros
1 'Outros'.
EXECUTE.


********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=N�IDENTIFICADOR
  /d43_7bin1_sum=SUM(d43_7bin1)
  /d43_7bin2_sum=SUM(d43_7bin2)
  /d43_7bin3_sum=SUM(d43_7bin3)
  /d43_8bin1_sum=SUM(d43_8bin1) 
  /d43_8bin2_sum=SUM(d43_8bin2) 
  /d43_8bin3_sum=SUM(d43_8bin3) 
  /d43_8bin4_sum=SUM(d43_8bin4) 
  /d43_8bin5_sum=SUM(d43_8bin5) 
  /d43_9bin1_sum=SUM(d43_9bin1) 
  /d43_9bin2_sum=SUM(d43_9bin2) 
  /d43_9bin3_sum=SUM(d43_9bin3) 
  /d43_9bin4_sum=SUM(d43_9bin4)
  /d43_13_1bin_Gest�o_sum=SUM(d43_13_1bin_Gest�o)
  /d43_13_1bin_PAIF_sum=SUM(d43_13_1bin_PAIF)
  /d43_13_1bin_SCFV_sum=SUM(d43_13_1bin_SCFV)
		/d43_13_1bin_Cadastramento_sum=SUM(d43_13_1bin_Cadastramento)
  /d43_13_1bin_Outros_sum=SUM(d43_13_1bin_Outros)
  /d43_13_2bin_Gest�o_sum=SUM(d43_13_2bin_Gest�o)
  /d43_13_2bin_PAIF_sum=SUM(d43_13_2bin_PAIF)
  /d43_13_2bin_SCFV_sum=SUM(d43_13_2bin_SCFV)
		/d43_13_2bin_Cadastramento_sum=SUM(d43_13_2bin_Cadastramento)
  /d43_13_2bin_Outros_sum=SUM(d43_13_2bin_Outros)
  /d43_13_3bin_Gest�o_sum=SUM(d43_13_3bin_Gest�o)
  /d43_13_3bin_PAIF_sum=SUM(d43_13_3bin_PAIF)
  /d43_13_3bin_SCFV_sum=SUM(d43_13_3bin_SCFV)
		/d43_13_3bin_Cadastramento_sum=SUM(d43_13_3bin_Cadastramento)
  /d43_13_3bin_Outros_sum=SUM(d43_13_3bin_Outros)
  /nu_trabalhadores=N
.
EXECUTE.

DATASET ACTIVATE aggr.

VARIABLE LABELS
d43_7bin1_sum 'd43_7bin1_sum_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
/d43_7bin2_sum'd43_7bin2_sum_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
/d43_7bin3_sum'd43_7bin3_sum_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
/d43_8bin1_sum'd43_8bin1_sum_N�mero de Pedagogos'
/d43_8bin2_sum'd43_8bin2_sum_N�mero de Assistentes Sociais'
/d43_8bin3_sum'd43_8bin3_sum_N�mero de Antrop�logos'
/d43_8bin4_sum'd43_8bin4_sum_N�mero de Advogados'
/d43_8bin5_sum'd43_8bin5_sum_N�mero de Psic�logos'
/d43_9bin1_sum'd43_9bin1_sum_N�mero de Servidores Estatut�rios'
/d43_9bin2_sum'd43_9bin2_sum_N�mero de Empregados P�blicos(CLT)'
/d43_9bin3_sum'd43_9bin3_sum_N�mero de Comissionados'
/d43_9bin4_sum'd43_9bin4_sum_N�mero de profissionais com outros v�nculos n�o permanentes'
/d43_13_1bin_Gest�o_sum'd43_13_1bin_Gest�o - Principal servi�o/atividade'
/d43_13_1bin_PAIF_sum'd43_13_1bin_PAIF - Principal servi�o/atividade'
/d43_13_1bin_SCFV_sum'd43_13_1bin_SCFV - Principal servi�o/atividade'
/d43_13_1bin_Cadastramento_sum'd43_13_1bin_Cadastramento- Principal servi�o/atividade'
/d43_13_1bin_Outros_sum'd43_13_1bin_Outros - Principal servi�o/atividade'
/d43_13_2bin_Gest�o_sum'd43_13_2bin_Gest�o - Segundo principal servi�o/atividade'
/d43_13_2bin_PAIF_sum'd43_13_2bin_PAIF - Segundo principal servi�o/atividade'
/d43_13_2bin_SCFV_sum'd43_13_2bin_SCFV - Segundo principal servi�o/atividade'
/d43_13_2bin_Cadastramento_sum'd43_13_2bin_Cadastramento- Segundo servi�o/atividade'
/d43_13_2bin_Outros_sum'd43_13_2bin_Outros - Principal servi�o/atividade'
/d43_13_3bin_Gest�o_sum'd43_13_3bin_Gest�o - Terceiro principal servi�o/atividade'
/d43_13_3bin_PAIF_sum'd43_13_3bin_PAIF - Terceiro principal servi�o/atividade'
/d43_13_3bin_SCFV_sum'd43_13_3bin_SCFV - Terceiro principal servi�o/atividade'
/d43_13_3bin_Cadastramento_sum'd43_13_3bin_Cadastramento - Terceiro principal servi�o/atividade'
/d43_13_3bin_Outros_sum'd43_13_3bin_Outros - Principal servi�o/atividade'
/nu_trabalhadores'N�mero de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE d43_7bin1_sum d43_7bin2_sum d43_7bin3_sum d43_8bin1_sum d43_8bin2_sum d43_8bin3_sum 
d43_8bin4_sum d43_8bin5_sum d43_9bin1_sum d43_9bin2_sum d43_9bin3_sum d43_9bin4_sum d43_13_1bin_Gest�o_sum
d43_13_1bin_PAIF_sum	d43_13_1bin_SCFV_sum	d43_13_1bin_Cadastramento_sum	d43_13_1bin_Outros_sum	d43_13_2bin_Gest�o_sum	d43_13_2bin_PAIF_sum	
d43_13_2bin_SCFV_sum	d43_13_2bin_Cadastramento_sum	d43_13_2bin_Outros_sum	d43_13_3bin_Gest�o_sum	d43_13_3bin_PAIF_sum	d43_13_3bin_SCFV_sum	
d43_13_3bin_Cadastramento_sum	d43_13_3bin_Outros_sum nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
d43_7bin1_sum 'd43_7bin1_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
d43_7bin2_sum'd43_7bin2_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
d43_7bin3_sum'd43_7bin3_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 d43_8bin1_sum'd43_8bin1_sum_N�mero de Pedagogos'
 d43_8bin2_sum'd43_8bin2_sum_N�mero de Assistentes Sociais'
 d43_8bin3_sum'd43_8bin3_sum_N�mero de Antrop�logos'
 d43_8bin4_sum'd43_8bin4_sum_N�mero de Advogados'
 d43_8bin5_sum'd43_8bin5_sum_N�mero de Psic�logos'.
EXECUTE.

VARIABLE LABELS
 d43_9bin1_sum'd43_9bin1_N�mero de Servidores Estatut�rios'
 d43_9bin2_sum'd43_9bin2_N�mero de Empregados P�blicos(CLT)'
 d43_9bin3_sum'd43_9bin3_N�mero de Comissionados'
 d43_9bin4_sum'd43_9bin4_N�mero de profissionais com outros v�nculos n�o permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Ser. Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'N�mero de trabalhadores no CRAS'.
EXECUTE.

FORMATS
d43_7bin1_sum
d43_7bin2_sum
d43_7bin3_sum
d43_8bin1_sum
d43_8bin2_sum
d43_8bin3_sum
d43_8bin4_sum
d43_8bin5_sum
d43_9bin1_sum
d43_9bin2_sum
d43_9bin3_sum
d43_9bin4_sum
d43_13_1bin_Gest�o_sum
d43_13_1bin_PAIF_sum
d43_13_1bin_SCFV_sum
d43_13_1bin_Cadastramento_sum
d43_13_1bin_Outros_sum
d43_13_2bin_Gest�o_sum
d43_13_2bin_PAIF_sum
d43_13_2bin_SCFV_sum
d43_13_2bin_Cadastramento_sum
d43_13_2bin_Outros_sum
d43_13_3bin_Gest�o_sum
d43_13_3bin_PAIF_sum
d43_13_3bin_SCFV_sum
d43_13_3bin_Cadastramento_sum
d43_13_3bin_Outros_sum
(F8.0).

SORT CASES BY N�IDENTIFICADOR(A).


******* MESCLAR AS VARI�VEIS DA BASE AGGR � BASE DADOS GERAIS




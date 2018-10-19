
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




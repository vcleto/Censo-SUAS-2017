****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os seguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)

**Ser� criada a vari�vel com n�mero procurado. Em seguida rodar a sintax abaixo**


COMPUTE num_data=DATE.DMY(31,12,2015).

*COMPUTE  D47_2=DATEDIFF(13670899200, q47_2,"years").
*format D47_2.
*EXECUTE.

* Date and Time Wizard: q47_2data.
COMPUTE q47_2data=number(q47_2, DATE10).
VARIABLE LABELS q47_2data "q47_2_Data de nascimento -formato data".
VARIABLE LEVEL  q47_2data (SCALE).
FORMATS q47_2data (DATE11).
VARIABLE WIDTH  q47_2data(11).
EXECUTE.

COMPUTE  D47_2=DATEDIFF(13670899200, q47_2data,"years").
format D47_2 (F2.0).
EXECUTE.

VARIABLE LABELS D47_2 'Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

***********************************************************************************************************

RECODE D47_2_final (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D47_2_categoria.
VARIABLE LABELS  D47_2_categoria  'Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  D47_2_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

RECODE q47_8 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO D47_8.
VARIABLE LABELS D47_8 'N�veis de escolaridade'.
EXECUTE.

VALUE LABELS D47_8
0 'N�vel fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.

RECODE q47_10 (292=3) (139=2) (138=1) (else=4) INTO D47_10.
VARIABLE LABELS   D47_10 'D47_10_Tipo de v�nculo'.

VALUE LABELS D47_10
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.
EXECUTE.

****vari�veis bin�rias escolaridade***

RECODE D47_8 (0=1) INTO D47_8bin1.
VARIABLE LABELS  D47_8bin1 'D47_8bin1_N�vel fundamental - trabalhadores que possuem at� o n�vel m�dio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D47_8bin1
1 'N�vel fundamental'.
EXECUTE.

RECODE D47_8 (1=1) INTO D47_8bin2.
VARIABLE LABELS  D47_8bin2 'D47_8bin2_N�vel m�dio - trabalhadores com ensino superior incompleto e ensino m�dio completo'.
EXECUTE.

VALUE LABELS  D47_8bin2
1 'N�vel M�dio'.
EXECUTE.

RECODE D47_8 (2=1) INTO D47_8bin3.
VARIABLE LABELS  D47_8bin3 'D47_8bin3_N�vel superior - inclui trabalhadores graduados, com especializa��o, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D47_8bin3
1 'N�vel Superior'.
EXECUTE.


****vari�veis bin�rias profiss�o****

RECODE q47_9 (275=1) INTO D47_9bin1.
VARIABLE LABELS  D47_9bin1 'D47_9bin1_Pedagogo'.
EXECUTE.

VALUE LABELS D47_9bin1
1 'Pedagogo'.
EXECUTE.

RECODE q47_9 (273=1) INTO D47_9bin2.
VARIABLE LABELS  D47_9bin2 'D47_9bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  D47_9bin2
1 'Assistente Social'.
EXECUTE.

RECODE q47_9 (234=1) INTO D47_9bin3.
VARIABLE LABELS  D47_9bin3 'D47_9bin3_Antrop�logo'.
EXECUTE.

VALUE LABELS  D47_9bin3
1 'Antrop�logo'.
EXECUTE.

RECODE q47_9 (232=1) INTO D47_9bin4.
VARIABLE LABELS  D47_9bin4 'D47_9bin4_Advogado'.
EXECUTE.

VALUE LABELS  D47_9bin4
1 'Advogado'.
EXECUTE.

RECODE q47_9 (274=1) INTO D47_9bin5.
VARIABLE LABELS  D47_9bin5 'D47_9bin5_Psicologo'.
EXECUTE.

VALUE LABELS  D47_9bin5
1 'Psic�logo'.
EXECUTE.

**** vari�veis bin�rias - tipo de v�nculo****

RECODE  D47_10 (1=1) INTO D47_10bin1.
VARIABLE LABELS   D47_10bin1 'D47_10bin1_Servidor Estatut�rio'.

VALUE LABELS  D47_10bin1
1 'Servidor Estatut�rio'.
EXECUTE.

RECODE D47_10  (2=1) INTO D47_10bin2.
VARIABLE LABELS  D47_10bin2 ' D47_10bin2_Empregado P�blico (CLT)'.

VALUE LABELS  D47_10bin2
1 'Empregado P�blico (CLT)'.
EXECUTE.

RECODE D47_10 (3=1) INTO D47_10bin3.
VARIABLE LABELS D47_10bin3 'D47_10bin3_Comissionado'.

VALUE LABELS  D47_10bin3
1 'Comissionado'.
EXECUTE.

RECODE D47_10 (4=1) INTO D47_10bin4.
VARIABLE LABELS D47_10bin4 'D47_10bin4_Outros v�nculos n�o permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Servidor Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente'.

VALUE LABELS  D47_10bin4
1 'Outros v�nculos n�o permanentes'.
EXECUTE.


********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_identificador
  /D47_8bin1_sum=SUM(D47_8bin1)
  /D47_8bin2_sum=SUM(D47_8bin2)
  /D47_8bin3_sum=SUM(D47_8bin3)
  /D47_9bin1_sum=SUM(D47_9bin1) 
  /D47_9bin2_sum=SUM(D47_9bin2) 
  /D47_9bin3_sum=SUM(D47_9bin3) 
  /D47_9bin4_sum=SUM(D47_9bin4) 
  /D47_9bin5_sum=SUM(D47_9bin5) 
  /D47_10bin1_sum=SUM(D47_10bin1) 
  /D47_10bin2_sum=SUM(D47_10bin2) 
  /D47_10bin3_sum=SUM(D47_10bin3) 
  /D47_10bin4_sum=SUM(D47_10bin4)
  /nu_trabalhadores=N
.
EXECUTE.

VARIABLE LABELS
/D47_8bin1_sum 'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 /D47_8bin2_sum'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 /D47_8bin3_sum'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
 /D47_9bin1_sum'N�mero de Pedagogos'
 /D47_9bin2_sum'N�mero de Assistentes Sociais'
 /D47_9bin3_sum'N�mero de Antrop�logos'
 /D47_9bin4_sum'N�mero de Advogados'
 /D47_9bin5_sum'N�mero de Psic�logos'
 /D47_10bin1_sum'N�mero de Servidores Estatut�rios'
 /D47_10bin2_sum'N�mero de Empregados P�blicos(CLT)'
 /D47_10bin3_sum'N�mero de Comissionados'
 /D47_10bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes'
 /nu_trabalhadores'N�mero de trabalhdores no CREAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE D47_8bin1_sum D47_8bin2_sum D47_8bin3_sum D47_9bin1_sum D47_9bin2_sum D47_9bin3_sum 
    D47_9bin4_sum D47_9bin5_sum D47_10bin1_sum D47_10bin2_sum D47_10bin3_sum D47_10bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D47_8bin1_sum 'D47_8bin1_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 D47_8bin2_sum'D47_8bin2_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 D47_8bin3_sum'D47_8bin3_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D47_9bin1_sum'D47_9bin1_sum_N�mero de Pedagogos'
 D47_9bin2_sum'D47_9bin2_sum_N�mero de Assistentes Sociais'
 D47_9bin3_sum'D47_9bin3_sum_N�mero de Antrop�logos'
 D47_9bin4_sum'D47_9bin4_sum_N�mero de Advogados'
 D47_9bin5_sum'D47_9bin5_sum_N�mero de Psic�logos'.
EXECUTE.

 VARIABLE LABELS
 D47_10bin1_sum'D47_10bin1_N�mero de Servidores Estatut�rios'
 D47_10bin2_sum'D47_10bin2_N�mero de Empregados P�blicos(CLT)'
 D47_10bin3_sum'D47_10bin3_N�mero de Comissionados'
 D47_10bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Ser. Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente)'.
EXECUTE.


** vari�veis bin�rias - Servi�os****

**** Principal servi�o/atividade

RECODE q47_14_1_final (1=1) INTO D47_14_1bin_Gest�o.
VARIABLE LABELS   D47_14_1bin_Gest�o 'D47_14_1bin_Gest�o - Principal servi�o/atividade'.

VALUE LABELS   D47_14_1bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE   q47_14_1_final (2=1) INTO D47_14_1bin_PAEFI.
VARIABLE LABELS   D47_14_1bin_PAEFI 'D47_14_1bin_PAEFI - Principal servi�o/atividade'.

VALUE LABELS D47_14_1bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_1_final (3=1) INTO D47_14_1bin_MSE.
VARIABLE LABELS   D47_14_1bin_MSE 'D47_14_1bin_MSE - Principal servi�o/atividade'.

VALUE LABELS D47_14_1bin_MSE
1 'Servi�o de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_1_final (4=1) INTO D47_14_1bin_Abordagem.
VARIABLE LABELS   D47_14_1bin_Abordagem ' D47_14_1bin_Abordagem- Principal servi�o/atividade'.

VALUE LABELS  D47_14_1bin_Abordagem
1 'Servi�o de Abordagem Social'.
EXECUTE.

RECODE   q47_14_1_final (5=1) INTO D47_14_1bin_Outros.
VARIABLE LABELS  D47_14_1bin_Outros 'D47_14_1bin_Outros - Principal servi�o/atividade'.

VALUE LABELS  D47_14_1bin_Outros
1 'Outros'.
EXECUTE.



**** Segundo principal servi�o/atividade

RECODE q47_14_2_final (1=1) INTO D47_14_2bin_Gest�o.
VARIABLE LABELS   D47_14_2bin_Gest�o 'D47_14_2bin_Gest�o - Segundo principal servi�o/atividade'.

VALUE LABELS D47_14_2bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE   q47_14_2_final (2=1) INTO D47_14_2bin_PAEFI.
VARIABLE LABELS  D47_14_2bin_PAEFI 'D47_14_2bin_PAEFI - Segundo principal servi�o/atividade'.

VALUE LABELS  D47_14_2bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_2_final (3=1) INTO D47_14_2bin_MSE.
VARIABLE LABELS   D47_14_2bin_MSE 'D47_14_2bin_MSE - Segundo principal servi�o/atividade'.

VALUE LABELS D47_14_2bin_MSE
1 'Servi�o de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_2_final (4=1) INTO  D47_14_2bin_Abordagem.
VARIABLE LABELS  D47_14_2bin_Abordagem ' D47_14_2bin_Abordagem - Segundo principal servi�o/atividade'.

VALUE LABELS  D47_14_2bin_Abordagem
1 'Servi�o de Abordagem Social'.
EXECUTE.

RECODE   q47_14_2_final (5=1) INTO D47_14_2bin_Outros.
VARIABLE LABELS  D47_14_2bin_Outros 'D47_14_2bin_Outros - Segundo principal servi�o/atividade'.

VALUE LABELS  D47_14_2bin_Outros
1 'Outros'.
EXECUTE.


***** Terceiro principal servi�o/atividade

RECODE q47_14_3_final (1=1) INTO D47_14_3bin_Gest�o.
VARIABLE LABELS   D47_14_3bin_Gest�o 'D47_14_3bin_Gest�o - Terceiro principal servi�o/atividade'.

VALUE LABELS D47_14_3bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE   q47_14_3_final (2=1) INTO D47_14_3bin_PAEFI.
VARIABLE LABELS  D47_14_3bin_PAEFI 'D47_14_3bin_PAEFI - Terceiro principal servi�o/atividade'.

VALUE LABELS  D47_14_3bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_3_final (3=1) INTO D47_14_3bin_MSE.
VARIABLE LABELS   D47_14_3bin_MSE 'D47_14_3bin_MSE - Terceiro principal servi�o/atividade'.

VALUE LABELS D47_14_3bin_MSE
1 'Servi�o de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_3_final (4=1) INTO  D47_14_3bin_Abordagem.
VARIABLE LABELS  D47_14_3bin_Abordagem ' D47_14_3bin_Abordagem - Terceiro principal servi�o/atividade'.

VALUE LABELS  D47_14_3bin_Abordagem
1 'Servi�o de Abordagem Social'.
EXECUTE.

RECODE   q47_14_3_final (5=1) INTO D47_14_3bin_Outros.
VARIABLE LABELS  D47_14_3bin_Outros 'D47_14_3bin_Outros - Terceiro principal servi�o/atividade'.

VALUE LABELS  D47_14_3bin_Outros
1 'Outros'.
EXECUTE.

**** Vari�vel Gest�o, PAEFI, MSE e Abordagem - mencionada, no minimo, 1 vez na questao resposta multipla q47_14 *****

IF  (q47_14_1_final = 1 | q47_14_2_final=1 | q47_14_3_final=1) Gestao=1.
EXECUTE.


IF  (q47_14_1_final = 2 | q47_14_2_final=2 | q47_14_3_final=2) PAEFI=1.
EXECUTE .


IF  (q47_14_1_final = 3 | q47_14_2_final=3 | q47_14_3_final=3) MSE=1.
EXECUTE .


IF  (q47_14_1_final = 4 | q47_14_2_final=4 | q47_14_3_final=4) Abordagem=1.
EXECUTE .


IF  (q47_14_1_final = 5 | q47_14_2_final=5 | q47_14_3_final=5) Outros=1.
EXECUTE.

Variable labels 
Gestao 'Atividades de Gest�o - mencionada, no minimo, 1 vez'
PAEFI 'PAEFI - mencionado, no m�nimo, 1 vez'
MSE 'MSE - mencionado, no m�nimo, 1 vez'
Abordagem 'Abordagem social - mencionada, no m�nimo, 1 vez'
Outros 'Outras atividades - mencionadas, no m�nimo, 1 vez'.



********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggregate.
AGGREGATE
  /OUTFILE='aggregate'
  /BREAK=NU_IDENTIFICADOR
  /D47_14_1bin_Gest�o_sum=SUM(D47_14_1bin_Gest�o)
  /D47_14_1bin_PAEFI_sum=SUM(D47_14_1bin_PAEFI)
  /D47_14_1bin_MSE_sum=SUM(D47_14_1bin_MSE)
  /D47_14_1bin_Abordagem_sum=SUM(D47_14_1bin_Abordagem)
  /D47_14_1bin_Outros_sum=SUM(D47_14_1bin_Outros)
  /D47_14_2bin_Gest�o_sum=SUM(D47_14_2bin_Gest�o)
  /D47_14_2bin_PAEFI_sum=SUM(D47_14_2bin_PAEFI)
  /D47_14_2bin_MSE_sum=SUM(D47_14_2bin_MSE)
  /D47_14_2bin_Abordagem_sum=SUM(D47_14_2bin_Abordagem)
  /D47_14_2bin_Outros_sum=SUM(D47_14_2bin_Outros)
  /D47_14_3bin_Gest�o_sum=SUM(D47_14_3bin_Gest�o)
  /D47_14_3bin_PAEFI_sum=SUM(D47_14_3bin_PAEFI)
  /D47_14_3bin_MSE_sum=SUM(D47_14_3bin_MSE)
  /D47_14_3bin_Abordagem_sum=SUM(D47_14_3bin_Abordagem)
  /D47_14_3bin_Outros_sum=SUM(D47_14_3bin_Outros)
  /nu_trabalhadores=N.
EXECUTE.



VARIABLE LABELS
  D47_14_1bin_Gest�o_sum 'D47_14_1bin_Gest�o - Principal servi�o/atividade'
  D47_14_1bin_PAEFI_sum 'D47_14_1bin_PAEFI - Principal servi�o/atividade'
  D47_14_1bin_MSE_sum 'D47_14_1bin_MSE - Principal servi�o/atividade'
  D47_14_1bin_Abordagem_sum 'D47_14_1bin_Abordagem - Principal servi�o/atividade'
  D47_14_1bin_Outros_sum 'D47_14_2bin_Outros - Principal servi�o/atividade'
  D47_14_2bin_Gest�o_sum 'D47_14_2bin_Gest�o - Segundo principal servi�o/atividade'
  D47_14_2bin_PAEFI_sum 'D47_14_2bin_PAEFI - Segundo principal servi�o/atividade'
  D47_14_2bin_MSE_sum 'D47_14_2bin_MSE - Segundo principal servi�o/atividade'
  D47_14_2bin_Abordagem_sum 'D47_14_2bin_Abordagem- Segundo servi�o/atividade'
  D47_14_2bin_Outros_sum 'D47_14_2bin_Outros - Principal servi�o/atividade'
  D47_14_3bin_Gest�o_sum 'D47_14_3bin_Gest�o - Terceiro principal servi�o/atividade'
  D47_14_3bin_PAEFI_sum 'D47_14_3bin_PAEFI - Terceiro principal servi�o/atividade'
  D47_14_3bin_MSE_sum 'D47_14_3bin_MSE - Terceiro principal servi�o/atividade'
  D47_14_3bin_Abordagem_sum 'D47_14_3bin_Abordagem - Terceiro principal servi�o/atividade'
  D47_14_3bin_Outros_sum 'D47_14_3bin_Outros - Principal servi�o/atividade'
  nu_trabalhadores'N�mero de trabalhadores no CREAS'.
EXECUTE.

**** VARIAVEIS 

 VARIABLE LABELS
 q47_14_1_final 'Servi�os/Atividade a qual o profissional est� vinculado - Principal servi�o/atividade'
 q47_14_2_final 'Servi�os/Atividade a qual o profissional est� vinculado - Segundo principal servi�o/atividade'
 q47_14_3_final 'Servi�os/Atividade a qual o profissional est� vinculado - Terceiro principal servi�o/atividade'.

 VALUE LABELS q47_14_1_final 
1    'Atividades de gest�o (administrativo)'
2    "Servi�o de Prote��o de Aten��o Especializada a Fam�lias e Indiv�duos - PAEFI"
3    "Servi�o de Medida Socioeducativa (Liberdade Assistida ou Presta��o de Servi�o � Comunidade)"
4    "Servi�o de Abordagem Social"
5   "Outros".

 VALUE LABELS q47_14_2_final 
1    'Atividades de gest�o (administrativo)'
2    "Servi�o de Prote��o de Aten��o Especializada a Fam�lias e Indiv�duos - PAEFI"
3    "Servi�o de Medida Socioeducativa (Liberdade Assistida ou Presta��o de Servi�o � Comunidade)"
4    "Servi�o de Abordagem Social"
5   "Outros".


 VALUE LABELS q47_14_3_final 
1    'Atividades de gest�o (administrativo)'
2    "Servi�o de Prote��o de Aten��o Especializada a Fam�lias e Indiv�duos - PAEFI"
3    "Servi�o de Medida Socioeducativa (Liberdade Assistida ou Presta��o de Servi�o � Comunidade)"
4    "Servi�o de Abordagem Social"
5  "Outros".



*****TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=q47_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_10 q47_11 q47_12
  /ORDER=ANALYSIS.


***BASE DO RH - ver arquivo 04_Derivadas_Tabelas_CREAS_RH****** 

**** VARI�VEIS DERIVADAS****


FREQUENCIES VARIABLES=D47_8bin1_sum D47_8bin2_sum D47_8bin3_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D47_9bin1_sum D47_9bin2_sum D47_9bin3_sum D47_9bin4_sum D47_9bin5_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D47_10bin1_sum D47_10bin2_sum D47_10bin3_sum D47_10bin4_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= nu_trabalhadores
  /ORDER=ANALYSIS.

MEANS TABLES=D47_8bin1_sum D47_8bin2_sum D47_8bin3_sum nu_trabalhadores BY Regi�o Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D47_9bin1_sum D47_9bin2_sum D47_9bin3_sum D47_9bin4_sum D47_9bin5_sum nu_trabalhadores BY Regi�o Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D47_10bin1_sum D47_10bin2_sum D47_10bin3_sum D47_10bin4_sum nu_trabalhadores BY Regi�o Porte_pop2010
  /CELLS SUM.
 
MEANS TABLES=nu_trabalhadores BY Regi�o Porte_pop2010
  /CELLS SUM.








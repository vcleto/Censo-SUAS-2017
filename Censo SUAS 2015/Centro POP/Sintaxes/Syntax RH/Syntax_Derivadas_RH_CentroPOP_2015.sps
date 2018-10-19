**************************************************************************************************************************************
**** Syntax Derivadas RH - Centro POP - Censo 2015
**************************************************************************************************************************************



****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel q39_2 (referente � data de nascimento)*
de formato string para o formato "date" *****

***Importar o arquivo RH e transformar a vari�vel data de nascimento*



*COMPUTE D39_2=number(q39_2_rec, DATE10).
*VARIABLE LABELS D39_2 'q39_2_Data de nascimento'.
*VARIABLE LEVEL  D39_2 (SCALE).
*FORMATS D39_2 (DATE11).
*VARIABLE WIDTH  D39_2(11).
*EXECUTE.


**C�lculo da idade em anos de cada trabalhador*****


COMPUTE  D39_2=DATEDIFF(13670899200, q39_2 ,"years").
format D39_2 (F2.0).
EXECUTE.

VARIABLE LABELS D39_2 'Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

***********************************************************************************************************
**Faixas de idade******************

RECODE D39_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D39_2categoria.
VARIABLE LABELS  D39_2categoria  'D39_2_Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  D39_2categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

*******************************Faixas de idades com limite superior de 70 anos; Para aqueles maiores de 70 anos ser� aplicado "missing"

RECODE D39_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 70=4) INTO D39_2categoria.
VARIABLE LABELS  D39_2categoria  'D39_2_Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  D39_2categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

************Escolaridade

RECODE q39_6 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO D39_6.
VARIABLE LABELS D39_6 'D39_6_N�veis de escolaridade'.
EXECUTE.

VALUE LABELS D39_6
0 'N�vel fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.
execute.

*****************Tipo de v�nculo



RECODE q39_8 (292=3) (139=2) (138=1) (else=4) INTO D39_8.
VARIABLE LABELS   D39_8 'D39_8_Tipo de v�nculo'.

VALUE LABELS D39_8
1 'Servidor Estatut�rio'
2 'Empregado P�blico (CLT)'
3 'Comissionado'
4 'Outros v�nculos n�o permanentes'.
EXECUTE.

****vari�veis bin�rias escolaridade***


RECODE D39_6 (0=1) INTO D39_6bin1.
VARIABLE LABELS  D39_6bin1 'D39_6bin1_N�vel fundamental - trabalhadores que possuem at� o n�vel m�dio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D39_6bin1
1 'N�vel fundamental'.
EXECUTE.

RECODE D39_6 (1=1) INTO D39_6bin2.
VARIABLE LABELS  D39_6bin2 'D39_6bin2_N�vel m�dio - trabalhadores com ensino superior incompleto e ensino m�dio completo'.
EXECUTE.

VALUE LABELS  D39_6bin2
1 'N�vel M�dio'.
EXECUTE.

RECODE D39_6 (2=1) INTO D39_6bin3.
VARIABLE LABELS  D39_6bin3 'D39_6bin3_N�vel superior - inclui trabalhadores graduados, com especializa��o, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D39_6bin3
1 'N�vel Superior'.
EXECUTE.



****vari�veis bin�rias profiss�o****


RECODE q39_7 (275=1) INTO D39_7bin1.
VARIABLE LABELS  D39_7bin1 'D39_7bin1_Pedagogo'.
EXECUTE.

VALUE LABELS D39_7bin1
1 'Pedagogo'.
EXECUTE.

RECODE q39_7 (273=1) INTO D39_7bin2.
VARIABLE LABELS  D39_7bin2 'D39_7bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  D39_7bin2
1 'Assistente Social'.
EXECUTE.

RECODE q39_7 (234=1) INTO D39_7bin3.
VARIABLE LABELS  D39_7bin3 'D39_7bin3_Antrop�logo'.
EXECUTE.

VALUE LABELS  D39_7bin3
1 'Antrop�logo'.
EXECUTE.

RECODE q39_7 (232=1) INTO D39_7bin4.
VARIABLE LABELS  D39_7bin4 'D39_7bin4_Advogado'.
EXECUTE.

VALUE LABELS  D39_7bin4
1 'Advogado'.
EXECUTE.

RECODE q39_7 (274=1) INTO D39_7bin5.
VARIABLE LABELS  D39_7bin5 'D39_7bin5_Psic�logo'.
EXECUTE.

VALUE LABELS  D39_7bin5
1 'Psic�logo'.
EXECUTE.


**** vari�veis bin�rias - tipo de v�nculo****


RECODE  D39_8 (1=1) INTO D39_8bin1.
VARIABLE LABELS   D39_8bin1 'D39_8bin1_Servidor Estatut�rio'.

VALUE LABELS  D39_8bin1
1 'Servidor Estatut�rio'.
EXECUTE.

RECODE D39_8  (2=1) INTO D39_8bin2.
VARIABLE LABELS  D39_8bin2 ' D39_8bin2_Empregado P�blico (CLT)'.

VALUE LABELS  D39_8bin2
1 'Empregado P�blico (CLT)'.
EXECUTE.

RECODE D39_8 (3=1) INTO D39_8bin3.
VARIABLE LABELS D39_8bin3 'D39_8bin3_Comissionado'.

VALUE LABELS  D39_8bin3
1 'Comissionado'.
EXECUTE.

RECODE D39_8 (4=1) INTO D39_8bin4.
VARIABLE LABELS D39_8bin4 'D39_8bin4_Outros v�nculos n�o permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios; Servidor Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente'.

VALUE LABELS  D39_8bin4
1 'Outros v�nculos n�o permanentes'.
EXECUTE.

********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggregCentroPOP.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /D39_6bin1_sum=SUM(D39_6bin1)
  /D39_6bin2_sum=SUM(D39_6bin2)
  /D39_6bin3_sum=SUM(D39_6bin3)
  /D39_7bin1_sum=SUM(D39_7bin1) 
  /D39_7bin2_sum=SUM(D39_7bin2) 
  /D39_7bin3_sum=SUM(D39_7bin3) 
  /D39_7bin4_sum=SUM(D39_7bin4) 
  /D39_7bin5_sum=SUM(D39_7bin5) 
  /D39_8bin1_sum=SUM(D39_8bin1) 
  /D39_8bin2_sum=SUM(D39_8bin2) 
  /D39_8bin3_sum=SUM(D39_8bin3) 
  /D39_8bin4_sum=SUM(D39_8bin4)
  /nu_trabalhadores=N
.
EXECUTE.


VARIABLE LABELS
 D39_6bin1_sum 'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 /D39_6bin2_sum'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 /D39_6bin3_sum'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
 /D39_7bin1_sum'N�mero de Pedagogos'
 /D39_7bin2_sum'N�mero de Assistentes Sociais'
 /D39_7bin3_sum'N�mero de Antrop�logos'
 /D39_7bin4_sum'N�mero de Advogados'
 /D39_7bin5_sum'N�mero de Psic�logos'
 /D39_8bin1_sum'N�mero de Servidores Estatut�rios'
 /D39_8bin2_sum'N�mero de Empregados P�blicos(CLT)'
 /D39_8bin3_sum'N�mero de Comissionados'
 /D39_8bin4_sum'N�mero de profissionais com outros v�nculos n�o permanentes'
 /nu_trabalhadores'N�mero de trabalhdores no Centro POP'
.
EXECUTE.


**** RECODE MISSING TO ZERO ****


RECODE D39_6bin1_sum D39_6bin2_sum D39_6bin3_sum D39_7bin1_sum D39_7bin2_sum D39_7bin3_sum 
    D39_7bin4_sum D39_7bin5_sum D39_8bin1_sum D39_8bin2_sum D39_8bin3_sum D39_8bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D39_6bin1_sum 'D39_6bin1_N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 D39_6bin2_sum'D39_6bin2_N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 D39_6bin3_sum'D39_6bin3_N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D39_7bin1_sum'D39_7bin1_sum_N�mero de Pedagogos'
 D39_7bin2_sum'D39_7bin2_sum_N�mero de Assistentes Sociais'
 D39_7bin3_sum'D39_7bin3_sum_N�mero de Antrop�logos'
 D39_7bin4_sum'D39_7bin4_sum_N�mero de Advogados'
 D39_7bin5_sum'D39_7bin5_sum_N�mero de Psic�logos'.
EXECUTE.

 VARIABLE LABELS
 D39_8bin1_sum'D39_8bin1_N�mero de Servidores Estatut�rios'
 D39_8bin2_sum'D39_8bin2_N�mero de Empregados P�blicos(CLT)'
 D39_8bin3_sum'D39_8bin3_N�mero de Comissionados'
 D39_8bin4_sum 'D39_8bin4_N�mero de profissionais com outros v�nculos n�o permanentes(inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Servi�os; Volunt�rios;Tempor�rio; Sem v�nculo; Terceirizado e Outro v�nculo n�o permanente)'.
EXECUTE.
VARIABLE LABELS
nu_trabalhadores 'N�mero de trabalhadores no Centro POP'.
EXECUTE.



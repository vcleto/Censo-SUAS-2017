
***** Cria��o id_unidade_final ****

COMPUTE id_unidade_interm=10000+id_acolhimentotextcodigo_ibgetext.

compute id_unidade_final=municipio*10**(trunc(lg10(id_unidade_interm))+1) + id_unidade_interm.

**********recode nivel de escolaridade (fundamental, m�dio e superior) **********

RECODE q36_4 (0 thru 2=0) (3 thru 5=1) (6 thru 9=2) INTO d36_4.
VARIABLE LABELS  d36_4 'N�veis de escolaridade'.
EXECUTE.

VALUE LABELS d36_4
0 'N�vel fundamental'
1 'N�vel M�dio'
2 'N�vel Superior'.


**********recode nivel de escolaridade bin�rias**********

RECODE d36_4 (0=1) INTO d36_4bin1.
VARIABLE LABELS  d36_4bin1 'N�vel fundamental'.
EXECUTE.

RECODE d36_4 (1=1) INTO d36_4bin2.
VARIABLE LABELS  d36_4bin2 'N�vel m�dio'.
EXECUTE.

RECODE d36_4 (2=1) INTO d36_4bin3.
VARIABLE LABELS  d36_4bin3 'N�vel superior'.
EXECUTE.

VALUE LABELS d36_4bin1
1 'N�vel fundamental'.

VALUE LABELS  d36_4bin2
1 'N�vel M�dio'.

VALUE LABELS  d36_4bin3
1 'N�vel Superior'.


**********recode profiss�es bin�rias**********

RECODE q36_5 (4=1) INTO d36_5bin1.
VARIABLE LABELS  d36_5bin1 'Pedagogo'.
EXECUTE.

RECODE q36_5 (1=1) INTO d36_5bin2.
VARIABLE LABELS  d36_5bin2 'Assistente Social'.
EXECUTE.

RECODE q36_5 (5=1) INTO d36_5bin3.
VARIABLE LABELS   d36_5bin3 'Advogado'.
EXECUTE.

RECODE q36_5 (2=1) INTO d36_5bin4.
VARIABLE LABELS  d36_5bin4 'Psic�logo'.
EXECUTE.

VALUE LABELS d36_5bin1
1 'Pedagogo'.

VALUE LABELS d36_5bin2
1 'Assistente Social'.

VALUE LABELS d36_5bin3
1 'Advogado'.

VALUE LABELS  d36_5bin4
1 'Psic�logo'.


**********recode tipo de vinculo bin�rias**********

RECODE  q36_6 (1=1) INTO d36_6bin1.
VARIABLE LABELS   d36_6bin1 'Servidor Estatut�rio'.

RECODE q36_6 (2=1) INTO d36_6bin2.
VARIABLE LABELS d36_6bin2 'Cargo p�blico comissionado'.

RECODE q36_6  (3=1) INTO d36_6bin3.
VARIABLE LABELS  d36_6bin3 'Empregado P�blico (CLT)'.

RECODE q36_6 (4=1) INTO d36_6bin4.
VARIABLE LABELS d36_6bin4 'Servidor P�blico Tempor�rio'.

RECODE q36_6 (99=1) INTO d36_6bin5.
VARIABLE LABELS d36_6bin5 'Outros v�nculos n�o permanentes'.

RECODE q36_6 (5=1) INTO d36_6bin6.
VARIABLE LABELS d36_6bin6 'Volunt�rio'.

RECODE q36_6 (6=1) INTO d36_6bin7.
VARIABLE LABELS d36_6bin7 'Estagi�rio'.

VALUE LABELS  d36_6bin1
1 'Servidor Estatut�rio'.

VALUE LABELS  d36_6bin2
1 'Cargo p�blico comissionado'.

VALUE LABELS  d36_6bin3
1 'Empregado P�blico (CLT)'.

VALUE LABELS  d36_6bin4
1 'Servidor P�blico Tempor�rio'.

VALUE LABELS   d36_6bin5
1 'Outros v�nculos n�o permanentes'.

VALUE LABELS   d36_6bin6
1 'Volunt�rio'.

VALUE LABELS   d36_6bin7
1 'Estagi�rio'.

****************************************************corrigindo inconsist�ncia na idade e entre escolaridade e profiss�o ***********************************************

****recode profiss�o com base na escolaridade*****

DO IF (q36_4 <= 5).
RECODE (q36_5=SYSMIS).
END IF.
EXECUTE.

********************AGGREGATE VARI�VEIS BIN�RIAS**************************

**** RECODE MISSING TO ZERO ****

RECODE   d36_4bin1 d36_4bin2 d36_4bin3 d36_5bin1  d36_5bin2 d36_5bin3 d36_5bin4
 d36_6bin1 d36_6bin2 d36_6bin3 d36_6bin4 d36_6bin5 d36_6bin6 d36_6bin7 (SYSMIS=0).
EXECUTE.


AGGREGATE
  /OUTFILE='D:\Acolhimento\Base de Dados_Acolhimento_2012\aggr.sav'
  /BREAK=id_unidade_final
  /d36_4bin1_sum=SUM(d36_4bin1) 
  /d36_4bin2_sum=SUM(d36_4bin2) 
  /d36_4bin3_sum=SUM(d36_4bin3) 
  /d36_5bin1_sum=SUM(d36_5bin1) 
  /d36_5bin2_sum=SUM(d36_5bin2) 
  /d36_5bin3_sum=SUM(d36_5bin3) 
  /d36_5bin4_sum=SUM(d36_5bin4) 
  /d36_6bin1_sum=SUM(d36_6bin1) 
  /d36_6bin2_sum=SUM(d36_6bin2) 
  /d36_6bin3_sum=SUM(d36_6bin3) 
  /d36_6bin4_sum=SUM(d36_6bin4) 
  /d36_6bin5_sum=SUM(d36_6bin5) 
  /d36_6bin6_sum=SUM(d36_6bin6) 
  /d36_6bin7_sum=SUM(d36_6bin7)
  /N_BREAK=N.

VARIABLE LABELS
 /d36_4bin1_sum 'N�mero de trabalhadores de N�vel fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino m�dio incompleto)'
 /d36_4bin2_sum 'N�mero de trabalhadores de N�vel m�dio (inclui trabalhadores com ensino superior incompleto)'
 /d36_4bin3_sum 'N�mero de trabalhadores de N�vel superior (inclui trabalhadores com especializa��o, mestrado e doutorado)'
 /d36_5bin1_sum 'N�mero de Pedagogos'
 /d36_5bin2_sum 'N�mero de Assistentes Sociais'
 /d36_5bin3_sum 'N�mero de Advogados'
 /d36_5bin4_sum 'N�mero de Psic�logos'
 /d36_6bin1_sum 'N�mero de Servidores Estatut�rios'
 /d36_6bin2_sum  'N�mero de Comissionados' 
 /d36_6bin3_sum 'N�mero de Empregados P�blicos(CLT)'
 /d36_6bin4_sum 'N�mero de de Servidores P�blicos Tempor�rios'
 /d36_6bin5_sum 'N�mero de profissionais com outros v�nculos n�o permanentes'
 /d36_6bin6_sum 'N�mero de volunt�rios'
 /d36_6bin7_sum 'N�mero de estagi�rios'
 /nu_trabalhadores 'N�mero de trabalhadores na unidade de acolhimento'
.
EXECUTE.





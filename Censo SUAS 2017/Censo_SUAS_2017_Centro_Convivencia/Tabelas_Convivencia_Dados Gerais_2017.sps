* Encoding: windows-1252.


**************************************************************************************************************
**************************************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO DADOS GERAIS ***************
**************************************************************************************************************
**************************************************************************************************************



FREQUENCIES VARIABLES=Regi�o Porte_pop2010 uf
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q4
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regi�o q2 DISPLAY=LABEL
  /TABLE Regi�o [C] BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regi�o [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q2_Quantidade de unidades por natureza e regi�o'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 q2 DISPLAY=LABEL
  /TABLE Porte_pop2010 BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q2_Quantidade de unidades por natureza e porte'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q2 DISPLAY=LABEL
  /TABLE UF [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] BY q2 [C]
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q2_Quantidade de unidades por natureza e UF'.

******SAIU 2016****
FREQUENCIES VARIABLES=q3
  /ORDER=ANALYSIS.

********SAIU 2016*******
MULT RESPONSE GROUPS=$mr_4
'q4_A entidade recebe outras formas de apoio do poder p�blico municipal? Caso sim indique quais'
(q4_0 q4_1 q4_2 q4_3 q4_4 q4_5 q4_6 q4_7 q4_8 q4_9 q4_10 q4_99(1))
/FREQUENCIES=$mr_4.

***SAIU 2016****
FREQUENCIES VARIABLES=q5
  /ORDER=ANALYSIS.



FREQUENCIES VARIABLES=D5_horas_por_semana_categoria
  /ORDER=ANALYSIS.

*******SAIU 2016*******
FREQUENCIES VARIABLES=q7
  /ORDER=ANALYSIS
CTABLES
  /VLABELS VARIABLES=q7 q2 DISPLAY=LABEL
  /TABLE q7 BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q7 q2 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES
  /TITLES TITLE='q7_Situa��o do im�vel onde se licaliza a unidade/servi�o por natureza'.


FREQUENCIES VARIABLES=q9
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_10
'q10_No local de funcionamento desta unidade/servi�o s�o prestados outros servi�os/programas da Assist�ncia Social?' 
(q10_1 q10_2 q10_3 q10_4 q10_5 q10_6 q10_7 q10_8 q10_99(1))
/FREQUENCIES=$mr_10.


FREQUENCIES VARIABLES=q11
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_12
'q12_No local de funcionamento desta unidade/servi�o s�o prestados servi�os/atividades de outras pol�ticas p�blicas (sa�de, educa��o, esporte, entre outros)?' 
(q12_0 q12_1 q12_2 q12_3 q12_4 q12_5 q12_99 (1))
/FREQUENCIES=$mr_12.

FREQUENCIES VARIABLES=q13
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_14 
'q14_Especifique o tipo de unidade com a qual este Centro de Conviv�ncia compartilha seu im�vel'
(q14_1 q14_2 q14_3 q14_4 q14_5 q14_6 q14_7 q14_8 q14_9 q14_10 q14_11 q14_12 q14_99(1))
/FREQUENCIES=$mr_14.


***SAIU 2016***************************************************************
MULT RESPONSE GROUPS=$mr_14 
'q14_Especifique quais espa�os do im�vel s�o compartilhados entre o Centro de Conviv�ncia e a outra unidade'
(q14_1 q14_2 q14_3 q14_4 q14_5 q14_6 q14_7 q14_8 q14_9 q14_10(1))
/FREQUENCIES=$mr_14.



FREQUENCIES VARIABLES=d21_1_sl_atend_categoria d21_2_total_salas_adm_e_atend_categoria
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=d21_1_sl_atend_categoria q2 DISPLAY=LABEL
  /TABLE d21_1_sl_atend_categoria [C] BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=d21_1_sl_atend_categoria [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='d21_Quantidade de salas de atendimento por natureza'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=d21_2_total_salas_adm_e_atend_categoria q2 DISPLAY=LABEL
  /TABLE d21_2_total_salas_adm_e_atend_categoria [C] BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=d21_2_total_salas_adm_e_atend_categoria [1, 2, 3, 4, 5, OTHERNM] 
    EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='d21_Quantidade total de salas por natureza'.

FREQUENCIES VARIABLES=d21_6
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


********SAIU 2016********************************************************
CTABLES
  /VLABELS VARIABLES=q21_7 q15_8 q15_9 q15_10 q15_11 q15_12 q15_13 
    DISPLAY=LABEL
  /TABLE q15_7 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_8 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q15_9 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_10 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_11 
    [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_12 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_13 [COUNT 
    F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q15_7 q15_8 q15_9 q15_10 q15_11 q15_12 q15_13 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES TITLE='q15_Espa�o f�sico utilizado pelo SCFV'.    

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q22_1 q22_2 q22_3 q22_4 DISPLAY=LABEL
  /TABLE q22_1 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q22_2 [C][COUNT F40.0, COLPCT.COUNT
    PCT40.1] + q22_3 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q22_4 [C][COUNT F40.0, COLPCT.COUNT
    PCT40.1]
  /CATEGORIES VARIABLES=q22_1 q22_2 q22_3 q22_4 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q22_Condi��es de acessibilidade'.


*****************SAIU 2016********************************************************
MULT RESPONSE GROUPS=$mr_17
'q17_Indique os equipamentos e materiais dispon�veis, em perfeito funcionamento, para o desenvolvimento do SCFV nesta unidade'
(d17_telefone q17_1 q17_2 q17_3 q17_4 q17_5 q17_6 q17_7 q17_8 q17_9 d17_veiculo q17_10 q17_11 q17_12 q17_13 q17_14 q17_15(1))
/FREQUENCIES=$mr_17.

********************SAIU 2016**********************************************************
FREQUENCIES VARIABLES=d18_1 d18_2
  /ORDER=ANALYSIS.

******************************SAIU 2016********************************
FREQUENCIES VARIABLES=d19_1 d19_2
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q6_1 q6_2 q6_3 q6_4 q6_5 q6_6 DISPLAY=LABEL
  /TABLE q6_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q6_2 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q6_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q6_4 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q6_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q6_6 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q6_1 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_2 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_3 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_4 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_5 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_6 [1, 0] EMPTY=INCLUDE
 /TITLES TITLE= 'q6_Quantidade de unidades que ofertam diretamente '+
'Servi�o de Conviv�ncia e Fortalecimento de V�nculos por faixa et�ria'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q6_1 q6_2 q6_3 q6_4 q6_5 q6_6 q2 
    DISPLAY=LABEL
  /TABLE q6_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q6_2 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q6_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q6_4 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q6_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q6_6 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] BY q2 [C]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q6_1 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_2 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_3 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_4 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_5 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6_6 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q2 [0, 1, OTHERNM] EMPTY=INCLUDE
  /TITLES TITLE= 'q6_Quantidade de unidades que ofertam diretamente '+
'Servi�o de Conviv�ncia e Fortalecimento de V�nculos por faixa et�ria e natureza da unidade'.


MEANS TABLES=q19 BY  Regi�o Porte_pop2010
  /CELLS SUM MEAN.

*************************SAIU 2016************************************
MEANS TABLES=q22 BY  Regi�o Porte_pop2010
  /CELLS SUM MEAN.

*************************SAIU 2016********************************************
FREQUENCIES VARIABLES=q23
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q20
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_16
'q16_Indique quais atividades abaixo s�o promovidas sistematicamente pela Unidade em rela��o ao Servi�o de Conviv�ncia'
(q16_1 q16_2 q16_3 q16_4 q16_5 q16_6 q16_7 q16_8 q16_0(1))
/FREQUENCIES=$mr_16.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q16_1 q16_2 q16_3 q16_4 q16_5 q16_6 q16_7 q16_8 q16_0 q2 
    DISPLAY=LABEL
  /TABLE q16_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_2 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q16_3 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_4 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_5 
    [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_6 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_7 [COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q16_8 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_0 [COUNT F40.0, 
    ROWPCT.COUNT PCT40.1] BY q2
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q16_1 q16_2 q16_3 q16_4 q16_5 q16_6 q16_7 q16_8 q16_0 [1, 0, OTHERNM] 
    EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q16_Atividades promovidas pela unidade em rela��o ao SCFV por natureza'.



FREQUENCIES VARIABLES=q8
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q8 q2 DISPLAY=LABEL
  /TABLE q8 BY q2 [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q8 q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q8_Unidade referenciada a um CRAS por natureza'.

MULT RESPONSE GROUPS=$mr_17
'q17_S�o desenvolvidas atividades com fam�liares/respons�veis dos participantes dos grupos do SCFV'
(q17_1 q17_2 q17_3 q17_4 q17_0(1))
/FREQUENCIES=$mr_17.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17_1 q17_2 q17_3 q17_4 q17_0 q2 DISPLAY=LABEL
  /TABLE q17_1 + q17_2 + q17_3 + q17_4 + q17_0 BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q17_1 q17_2 q17_3 q17_4 q17_0 q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='Atividades desenvolvidas com familiares/respons�veis dos participantes dos grupos do SCFV'.


********************************************************SAIU 2016*************************************************************************
MULT RESPONSE GROUPS=$mr_28
'q28_Quais atividades s�o realizadas com familiares/respons�veis dos participantes dos grupos do SCFV nesta unidade'
(q28_1 q28_2 q28_3 q28_4(1))
/FREQUENCIES=$mr_28
CTABLES
  /VLABELS VARIABLES=q28_1 q28_2 q28_3 q28_4 q2 DISPLAY=LABEL
  /TABLE q28_1 + q28_2 + q28_3 + q28_4 BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q28_1 q28_2 q28_3 q28_4 q2 ORDER=A KEY=VALUE EMPTY=INCLUDE  
  /TITLES TITLE='Atividades desenvolvidas com familares/respons�veis dos participantes dos grupos do SCFV nesta unidade'.


FREQUENCIES VARIABLES=q15
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_18
'q18_Em 2016, esta unidade atendeu, no SCFV, pessoas de comunidade e/ou povos tradicionais'
(q18_0 q18_1 q18_2 q18_3 q18_4 q18_5 q18_99(1))
/FREQUENCIES=$mr_18.


******************************************************RH******************************************************************************************************************************************

FREQUENCIES VARIABLES=d23_9bin1_sum d23_9bin2_sum d23_9bin3_sum d23_10bin1_sum d23_10bin2_sum 
    d23_10bin3_sum d23_10bin4_sum d23_10bin5_sum d23_11bin1_sum d23_11bin2_sum d23_11bin3_sum 
    d23_11bin4_sum 
  /ORDER=ANALYSIS.

******************************************************************************************************************
******************************************************************************************************************
*****************TABELAS PARA SEREM RODADAS NA BASE DE DADOS GERAIS****************
******************************************************************************************************************
******************************************************************************************************************

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d23_9bin1_sum d23_9bin2_sum d23_9bin3_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d23_9bin1_sum [SUM] + d23_9bin2_sum [SUM] + d23_9bin3_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e porte do munic�pio'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regi�o d23_9bin1_sum d23_9bin2_sum d23_9bin3_sum DISPLAY=LABEL
  /TABLE Regi�o [C] BY d23_9bin1_sum [SUM][COLPCT.SUM] + d23_9bin2_sum [SUM][COLPCT.SUM] + d23_9bin3_sum [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Regi�o ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e regi�o'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF d23_9bin1_sum d23_9bin2_sum d23_9bin3_sum DISPLAY=LABEL
  /TABLE UF [C] BY d23_9bin1_sum [S][SUM] + d23_9bin2_sum [S][SUM] + d23_9bin3_sum [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d23_11bin1_sum d23_11bin2_sum d23_11bin3_sum d23_11bin4_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d23_11bin1_sum [SUM] + d23_11bin2_sum [SUM] + d23_11bin3_sum [SUM] + 
    d23_11bin4_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de v�nculo e porte do munic�pio'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regi�o d23_11bin1_sum d23_11bin2_sum d23_11bin3_sum d23_11bin4_sum DISPLAY=LABEL
  /TABLE Regi�o [C] BY d23_11bin1_sum [SUM] + d23_11bin2_sum [SUM] + d23_11bin3_sum [SUM] + 
    d23_11bin4_sum [SUM]
  /CATEGORIES VARIABLES=Regi�o ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de v�nculo e regi�o'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF d23_11bin1_sum d23_11bin2_sum d23_11bin3_sum d23_11bin4_sum 
    DISPLAY=LABEL
  /TABLE UF [C] BY d23_11bin1_sum [S][SUM] + d23_11bin2_sum [S][SUM] + d23_11bin3_sum 
    [S][SUM] + d23_11bin4_sum [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de v�nculo e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regi�o d23_10bin1_sum d23_10bin2_sum d23_10bin3_sum d23_10bin4_sum d23_10bin5_sum 
    DISPLAY=LABEL
  /TABLE Regi�o [C] BY d23_10bin1_sum [SUM] + d23_10bin2_sum [SUM] + d23_10bin3_sum [SUM] + 
    d23_10bin4_sum [SUM] + d23_10bin5_sum [SUM]
  /CATEGORIES VARIABLES=Regi�o ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profiss�o e regi�o'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF d23_10bin1_sum d23_10bin2_sum d23_10bin3_sum d23_10bin4_sum 
    d23_10bin5_sum DISPLAY=LABEL
  /TABLE UF [C] BY d23_10bin1_sum [S][SUM] + d23_10bin2_sum [S][SUM] + d23_10bin3_sum 
    [S][SUM] + d23_10bin4_sum [S][SUM] + d23_10bin5_sum [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profiss�o e UF'.


****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/XLS  DOCUMENTFILE='D:\Nucleo_Monitoramento\Censo SUAS\2016_Censo_SUAS\_Bases Censo SUAS 2016 - Tratamento\Conviv�ncia\Tabelas\TABELAS_dados gerais_rh'  OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.



****COMANDO PARA EXPORTAR AS TABELAS PARA O WORD****

* Export Output.
OUTPUT EXPORT
  /CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING
  /DOC  DOCUMENTFILE='D:\Nucleo_Monitoramento\Censo SUAS\2016_Censo_SUAS\_Bases Censo SUAS 2016 - Tratamento\Conviv�ncia\Tabelas'
     NOTESCAPTIONS=YES  WIDETABLES=WRAP
     PAGESIZE=MM(209.96999999999997, 296.96999999999997)  TOPMARGIN=MM(10.4)  
    BOTTOMMARGIN=MM(35.400000000000034)
     LEFTMARGIN=MM(10.4)  RIGHTMARGIN=MM(35.399999999999977).










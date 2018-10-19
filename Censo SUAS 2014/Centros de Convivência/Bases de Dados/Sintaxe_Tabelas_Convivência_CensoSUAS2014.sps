
FREQUENCIES VARIABLES=Regi�o Porte_pop2010 uf
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D2_horas_por_semana_categoria
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES=Regi�o BY q3
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

FREQUENCIES VARIABLES=q5
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_6 'Outras formas de apoio que a unidade recebe do poder p�blico' (q6_1 q6_2 q6_3 q6_4 q6_5 q6_6 q6_7 q6_8 q6_9 q6_10 q6_11 q6_12(1))
/FREQUENCIES=$mr_6.

FREQUENCIES VARIABLES=q7
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES= q3 BY q8
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.


MULT RESPONSE GROUPS=$mr_9 'Esta unidade oferta diretamente servi�os/atividades de outras pol�ticas p�blicas (sa�de, educa��o, esporte, entre outros?)' (q9_1 q9_2 q9_3 q9_4 q9_5 (1))
/FREQUENCIES=$mr_9.

MULT RESPONSE GROUPS=$mr_10 'Esta unidade oferta diretamente servi�os/atividades socioassistenciais' (q10_1 q10_2 q10_3 q10_4 q10_5 q10_6 q10_7 (1))
/FREQUENCIES=$mr_10.


CROSSTABS
  /TABLES= q3 BY q11
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES= q3 BY D12a_sl_atend_categoria
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.


FREQUENCIES VARIABLES=D12b_total_salas_adm_e_atend_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D12f
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q12g q12h q12i q12j DISPLAY=LABEL
  /TABLE q12g [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q12h [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
 q12i [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q12j [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q12g q12h q12i q12j [1, 0, OTHERNM] EMPTY=INCLUDE
/TITLES
 TITLE= 'Demais espa�os f�sicos despon�veis na unidade'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q13_1 q13_2 q13_3 q13_4 DISPLAY=LABEL
  /TABLE q13_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q13_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q13_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q13_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q13_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q13_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q13_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q13_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'Condi��es de acessibilidade para pessoas com defici�ncia e pessoas idosas'.

MULT RESPONSE GROUPS=$mr_14 'Equipamentos e materiais dispon�veis para o desenvolvimento dos servi�os no CRAS' (D14_telefone q14_1 q14_2 q14_3 q14_4 q14_5 q14_6 q14_7 q14_8 q14_9 
q14_10 q14_11 D14_veiculo q14_12 q14_13 q14_14 q14_15 q14_16 q14_17(1))
/FREQUENCIES=$mr_14.           

FREQUENCIES VARIABLES=D15_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D15_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D16_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D16_2
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17a_1 q17b_1 q17c_1 q17d_1 q17e_1 q17f_1 q3 
    DISPLAY=LABEL
  /TABLE q17a_1 [C] + q17b_1 [C] + q17c_1 [C] + q17d_1 [C] + q17e_1 [C] + q17f_1 [C] BY q3 
    [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q17a_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17b_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17c_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17d_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17e_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17f_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE
/TITLES
 TITLE= 'q17_Quantidade de unidades que ofertam diretamente Servi�o de Conviv�ncia e Fortalecimento de V�nculos por faixa et�ria e natureza da unidade'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17a_2 q17b_2 q17c_2 q17d_2 q17e_2 q17f_2 q17g DISPLAY=LABEL
  /TABLE q17a_2 [SUM, MEAN] + q17b_2 [SUM, MEAN] + q17c_2 [SUM, MEAN] + q17d_2 [SUM, MEAN] + q17e_2 
    [SUM, MEAN] + q17f_2 [SUM, MEAN] + q17g [SUM, MEAN]
/TITLES
 TITLE= 'q17_Quantidade de usu�rios do Servi�o de Conviv�ncia e Fortalecimento de V�nculos, por faixa et�ria?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regi�o q3 q17g DISPLAY=LABEL
  /TABLE Regi�o BY q3 > q17g [SUM, MEAN]
  /CATEGORIES VARIABLES=Regi�o [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE
/TITLES
 TITLE= 'q17_Quantidade de usu�rios que ofertam diretamente Servi�o de Conviv�ncia e Fortalecimento de V�nculos por faixa et�ria e natureza da unidade'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17a_2 q17b_2 q17c_2 q17d_2 q17e_2 q17f_2 q17g Regi�o 
    DISPLAY=LABEL
  /TABLE q17a_2 [S][SUM, MEAN] + q17b_2 [S][SUM, MEAN] + q17c_2 [S][SUM, MEAN] + q17d_2 [S][SUM, 
    MEAN] + q17e_2 [S][SUM, MEAN] + q17f_2 [S][SUM, MEAN] + q17g [S][SUM, MEAN] BY Regi�o [C]
  /CATEGORIES VARIABLES=Regi�o ORDER=A KEY=VALUE EMPTY=INCLUDE
/TITLES
 TITLE= 'q17_Quantidade de usu�rios do Servi�o de Conviv�ncia e Fortalecimento de V�nculos, por faixa et�ria e regi�o?'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17a_2 q17b_2 q17c_2 q17d_2 q17e_2 q17f_2 q17g Porte_pop2010 
    DISPLAY=LABEL
  /TABLE q17a_2 [S][SUM, MEAN] + q17b_2 [S][SUM, MEAN] + q17c_2 [S][SUM, MEAN] + q17d_2 [S][SUM, 
    MEAN] + q17e_2 [S][SUM, MEAN] + q17f_2 [S][SUM, MEAN] + q17g [S][SUM, MEAN] BY Porte_pop2010
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE
/TITLES
 TITLE= 'q17_Quantidade de usu�rios do Servi�o de Conviv�ncia e Fortalecimento de V�nculos, por faixa et�ria e porte do munic�pio?'.


MEANS TABLES=q18 BY  Regi�o Porte_pop2010
  /CELLS SUM MEAN.

MEANS TABLES=q19 BY  Regi�o Porte_pop2010
  /CELLS SUM MEAN.

FREQUENCIES VARIABLES=q20
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D21a
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q21b
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D21c
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q21d
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q22
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_23 'q23_Quantidade de unidades que atendem, no SCFV, pessoas nas seguintes situa��es priorit�rias' (q23_1 q23_2 q23_3 q23_4 q23_5 q23_6 q23_7 q23_8 q23_9 q23_10 q23_11 q23_12  (1))
/FREQUENCIES=$mr_23.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q24_1 q24_2 q24_3 q24_4 q24_5 q24_6 q24_7 q3 
    DISPLAY=LABEL
  /TABLE q24_1 [C] + q24_2 [C] + q24_3 [C] + q24_4 [C] + q24_5 [C] + q24_6 [C] + q24_7 [C] BY q3 
    [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q24_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q24_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q24_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q24_4 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q24_5 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q24_6 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q24_7 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE
/TITLES
 TITLE= 'q24_Quantidade de unidades  que declararam promover sistematicamente as seguintes atividades, segundo a natureza da unidade'.

CROSSTABS
  /TABLES= q3 BY q25
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q26_1 q26_2 q26_3 q26_4 q26_5 q3 
    DISPLAY=LABEL
  /TABLE q26_1 [C] + q26_2 [C] + q26_3 [C] + q26_4 [C] + q26_5 [C] [C] BY q3 
    [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q26_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q26_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q26_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q26_4 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q26_5 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE
/TITLES
 TITLE= 'q26_Quantidade de unidades que desenvolvem atividades com familiares/respons�veis dos participantes dos grupos de SCFV, segundo a natureza da unidade'.


MULT RESPONSE GROUPS=$mr_27 'q27_S�o desenvolividas atividades com familiares/respons�veis dos participantes dos grupos de SCFV?' (q27_1 q27_2 q27_3 q27_4 q27_5 (1))
/FREQUENCIES=$mr_27.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q28_1 q28_2 q28_3 q28_4
    DISPLAY=LABEL
  /TABLE q28_1 [C] + q28_2 [C] + q28_3 [C] + q28_4 [C] BY q3 
    [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q28_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q28_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q28_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q28_4 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE
/TITLES
 TITLE= 'q28_Quantidade de unidades que possuem inscri��o nos seguintes Conselhos Municipais, segundo a natureza da unidade'.

CROSSTABS
  /TABLES= q3 BY q29
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

MULT RESPONSE GROUPS=$mr_30 'Em 2014, esta unidade atendeu, no SCFV, pessoas de comunidades e/ou povos tradicionais?' (q30_1 q30_2 q30_3 q30_4 q30_5 q30_6 q30_7(1))
/FREQUENCIES=$mr_30.


ctables
/VLABELS VARIABLES=q31a_1 q31b_1 q31c_1 q31d_1 q31e_1 q31f_1 q31g_1 DISPLAY=LABEL
  /TABLE q31a_1 [SUM] + q31b_1 [SUM] + q31c_1 [SUM] + q31d_1 [SUM] + q31e_1 [SUM] + q31f_1 [SUM] + q31g_1 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino fundamental, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q31a_2 q31b_2 q31c_2 q31d_2 q31e_2 q31f_2 q31g_2 DISPLAY=LABEL
  /TABLE q31a_2 [SUM] + q31b_2 [SUM] + q31c_2 [SUM] + q31d_2 [SUM] + q31e_2 [SUM] + q31f_2 [SUM] + q31g_2 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino m�dio, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q31a_3 q31b_3 q31c_3 q31d_3 q31e_3 q31f_3 q31g_3 DISPLAY=LABEL
  /TABLE q31a_3 [SUM] + q31b_3 [SUM] + q31c_3 [SUM] + q31d_3 [SUM] + q31e_3 [SUM] + q31f_3 [SUM] + q31g_3 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino superior, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q31a_4 q31b_4 q31c_4 q31d_4 q31e_4 q31f_4 q31g_4 DISPLAY=LABEL
  /TABLE q31a_4 [SUM] + q31b_4 [SUM] + q31c_4 [SUM] + q31d_4 [SUM] + q31e_4 [SUM] + q31f_4 [SUM] + q31g_4 [SUM]
  /TITLES
    TITLE='Total de trabalhadores, por tipo de v�nculo'.

CTABLES
  /VLABELS VARIABLES=q32a q32b q32c q32d q32e q32f q32g q32h q32i q32j q32k q32l DISPLAY=LABEL
  /TABLE q32a [SUM] + q32b [SUM] + q32c [SUM] + q32d [SUM] + q32e [SUM] + q32f [SUM] + q32g [SUM] + 
    q32h [SUM] + q32i [SUM] + q32j [SUM] + q32k [SUM].
   TITLE = 'Total de trabalhadores de n�vel superior por �rea de forma��o'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q31a_4 q31b_4 q31c_4 q31d_4 q31e_4 q31f_4
    DISPLAY=LABEL
  /TABLE q31a_4 [SUM] + q31b_4 [SUM] + q31c_4 [SUM] + q31d_4 [SUM] + q31e_4 [SUM] + 
    q31f_4 [SUM] BY q3 [C]
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q31_Quantidade de trabalhadores segundo escolaridade e natureza da unidade'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q31g_1 q31g_2 q31g_3 q31g_4 
    DISPLAY=LABEL
  /TABLE q31g_1 [SUM] + q31g_2 [SUM] + q31g_3 [SUM] + q31g_4 [SUM] BY q3 [C]
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q31_Quantidade de trabalhadores segundo escolaridade e natureza da unidade'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17g q31g_4 q3 DISPLAY=LABEL
  /TABLE q17g [MEAN] + q31g_4 [MEAN] BY q3 [C]
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='M�dia de usu�rios e m�dia de trabalhadores por unidade, segundo a natureza da unidade'.



****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/XLS  DOCUMENTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2014_Censo_SUAS\Bases de Dados - Tratamento\Centros de Conviv�ncia.xlsx'  OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.



****COMANDO PARA EXPORTAR AS TABELAS PARA O WORD****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/DOC  DOCUMENTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2014_Censo_SUAS\Bases de Dados - Tratamento\Centros de Conviv�ncia.doc'  OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.

* Export Output.
OUTPUT EXPORT
  /CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING
  /DOC  DOCUMENTFILE='\\mds0368701\Nucleo_Monitoramento\Censo SUAS\2013_Censo_SUAS\Bases de '+
    'Dados\CRAS\Tabelas\Tabelas_CRAS_censo2014'
     NOTESCAPTIONS=YES  WIDETABLES=WRAP
     PAGESIZE=MM(209.96999999999997, 296.96999999999997)  TOPMARGIN=MM(10.4)  
    BOTTOMMARGIN=MM(35.400000000000034)
     LEFTMARGIN=MM(10.4)  RIGHTMARGIN=MM(35.399999999999977).












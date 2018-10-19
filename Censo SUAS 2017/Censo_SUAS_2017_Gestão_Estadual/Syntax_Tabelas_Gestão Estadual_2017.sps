* Encoding: windows-1252.
FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_2 'A secretaria ou setor da assist�ncia social est� associada ou subordinada a alguma das �reas abaixo?' (q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (1))
/FREQUENCIES=$mr_2.

FREQUENCIES VARIABLES=q3_1 q3_2 q3_3 q3_4 q3_5 q3_6 q3_7 q3_8 q3_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q4
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q5 DISPLAY=LABEL
  /TABLE UF BY q5 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
    TITLE='Quantidade de escrit�rios regionais (ou similares) da Assist�ncia Social no Estado por UF'.


FREQUENCIES VARIABLES=q6 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q7 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q8 
/ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q9_1_1 q9_1_2 q9_1_3 q9_1_4 q9_2_1 q9_2_2 q9_2_3 q9_2_4 q9_3_1 q9_3_2 q9_3_3 q9_3_4 q9_4_1 q9_4_2 q9_4_3 q9_4_4 q9_5_1 q9_5_2 q9_5_3 q9_5_4 q9_6_1 q9_6_2 q9_6_3 q9_6_4 q9_7_1 q9_7_2 q9_7_3
q9_7_4 q9_8_1 q9_8_2 q9_8_3 q9_8_4 q9_9_1 q9_9_2 q9_9_3 q9_9_4 q9_10_1 q9_10_2 q9_10_3 q9_10_4 DISPLAY=LABEL
  /TABLE q9_1_1 [S][SUM] + q9_1_2 [S][SUM] + q9_1_3 [S][SUM] + q9_1_4 [S][SUM] + q9_2_1 [S][SUM] +  q9_2_2 [S][SUM] + q9_2_3 [S][SUM] + q9_2_4 [S][SUM] + q9_3_1 [S][SUM] + q9_3_2 [S][SUM] 
  + q9_3_3 [S][SUM] + q9_3_4 [S][SUM]  + q9_4_1 [S][SUM] + q9_4_2 [S][SUM]  + q9_4_3 [S][SUM] + q9_4_4 [S][SUM]  + q9_5_1 [S][SUM] + q9_5_2 [S][SUM]  + q9_5_3 [S][SUM] + q9_5_4 [S][SUM]  + 
q9_6_1 [S][SUM] + q9_6_2 [S][SUM]  + q9_6_3 [S][SUM] + q9_6_4 [S][SUM] +  q9_7_1 [S][SUM] + q9_7_2 [S][SUM]  + q9_7_3 [S][SUM] + q9_7_4 [S][SUM]  +q9_8_1 [S][SUM] + q9_8_2 [S][SUM]  + q9_8_3 [S][SUM] + q9_8_4 [S][SUM]
+  q9_10_1 [S][SUM] + q9_10_2 [S][SUM]  + q9_10_3 [S][SUM] + q9_10_4 [S][SUM]  
/TITLES
    TITLE='Quantidade de profissionais exclusivos e compartilhados que exercem as atividades no �rg�o gestor, segundo tipo de atividade realizada pelo profissional'.

CTABLES
  /VLABELS VARIABLES=q9_1_1 q9_1_2 q9_1_3 q9_1_4 q9_2_1 q9_2_2 q9_2_3 q9_2_4 q9_3_1 q9_3_2 q9_3_3 q9_3_4 q9_4_1 q9_4_2 q9_4_3 q9_4_4 q9_5_1 q9_5_2 q9_5_3 q9_5_4 DISPLAY=LABEL
  /TABLE q9_1_1 [S][SUM] + q9_1_2 [S][SUM] + q9_1_3 [S][SUM] + q9_1_4 [S][SUM] + q9_2_1 [S][SUM] +  q9_2_2 [S][SUM] + q9_2_3 [S][SUM] + q9_2_4 [S][SUM] + q9_3_1 [S][SUM] + q9_3_2 [S][SUM] 
  + q9_3_3 [S][SUM] + q9_3_4 [S][SUM]  + q9_4_1 [S][SUM] + q9_4_2 [S][SUM]  + q9_4_3 [S][SUM] + q9_4_4 [S][SUM]  + q9_5_1 [S][SUM] + q9_5_2 [S][SUM]  + q9_5_3 [S][SUM] + q9_5_4 [S][SUM] 
/TITLES
    TITLE='Quantidade de profissionais exclusivos e compartilhados que exercem as atividades no �rg�o gestor em �reas ligadas � gest�o'.

CTABLES
  /VLABELS VARIABLES=q9_6_1 q9_6_2 q9_6_3 q9_6_4 q9_7_1 q9_7_2 q9_7_3
q9_7_4 q9_8_1 q9_8_2 q9_8_3 q9_8_4 q9_9_1 q9_9_2 q9_9_3 q9_9_4 q9_10_1 q9_10_2 q9_10_3 q9_10_4 DISPLAY=LABEL
  /TABLE  
q9_6_1 [S][SUM] + q9_6_2 [S][SUM]  + q9_6_3 [S][SUM] + q9_6_4 [S][SUM] +  q9_7_1 [S][SUM] + q9_7_2 [S][SUM]  + q9_7_3 [S][SUM] + q9_7_4 [S][SUM]  +q9_8_1 [S][SUM] + q9_8_2 [S][SUM]  + q9_8_3 [S][SUM] + q9_8_4 [S][SUM]
+  q9_10_1 [S][SUM] + q9_10_2 [S][SUM]  + q9_10_3 [S][SUM] + q9_10_4 [S][SUM]  
/TITLES
    TITLE='Quantidade de profissionais exclusivos e compartilhados que exercem as atividades no �rg�o gestor nas �reas de servi�os e benef�cios'.

CTABLES
  /VLABELS VARIABLES=q9_1_1 q9_1_2 q9_2_1 q9_2_2 q9_3_1 q9_3_2 q9_4_1 q9_4_2 q9_5_1 q9_5_2 q9_6_1 q9_6_2 q9_7_1 q9_7_2 q9_8_1 q9_8_2 q9_9_1 q9_9_2 q9_10_1 q9_10_2 DISPLAY=LABEL
  /TABLE q9_1_1 [S][SUM] + q9_1_2 [S][SUM] + q9_2_1 [S][SUM] + q9_2_2 [S][SUM] + q9_3_1 [S][SUM] + q9_3_2 [S][SUM] 
   + q9_4_1 [S][SUM] + q9_4_2 [S][SUM]  + q9_5_1 [S][SUM] + q9_5_2 [S][SUM]  + q9_6_1 [S][SUM] + q9_6_2 [S][SUM]  +  q9_7_1 [S][SUM] + q9_7_2 [S][SUM]  +q9_8_1 [S][SUM] + q9_8_2 [S][SUM]  
+  q9_10_1 [S][SUM] + q9_10_2 [S][SUM]  
/TITLES
    TITLE='Quantidade de profissionais exclusivos e compartilhados de n�vel superior que exercem as atividades no �rg�o gestor, segundo tipo de atividade realizada pelo profissional'.

CTABLES
  /VLABELS VARIABLES= q9_1_3 q9_1_4 q9_2_3 q9_2_4 q9_3_3 q9_3_4 q9_4_3 q9_4_4 q9_5_3 q9_5_4 q9_6_3 q9_6_4 q9_7_3
q9_7_4 q9_8_3 q9_8_4 q9_9_3 q9_9_4 q9_10_3 q9_10_4 DISPLAY=LABEL
  /TABLE  q9_1_3 [S][SUM] + q9_1_4 [S][SUM] + q9_2_3 [S][SUM] + q9_2_4 [S][SUM] +
  q9_3_3 [S][SUM] + q9_3_4 [S][SUM]  + q9_4_3 [S][SUM] + q9_4_4 [S][SUM]  + q9_5_3 [S][SUM] + q9_5_4 [S][SUM]  + q9_6_3 [S][SUM] + q9_6_4 [S][SUM] + q9_7_3 [S][SUM] + q9_7_4 [S][SUM]  + q9_8_3 [S][SUM] + q9_8_4 [S][SUM]
+  q9_10_3 [S][SUM] + q9_10_4 [S][SUM]  
/TITLES
    TITLE='Quantidade de profissionais exclusivos e compartilhados de n�vel m�dio que exercem as atividades no �rg�o gestor, segundo tipo de atividade realizada pelo profissional'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q10_1_4 q10_2_4 q10_3_4 q10_4_4 q10_5_4 DISPLAY=LABEL
  /TABLE UF BY q10_1_4 [S][SUM] + q10_2_4 [S][SUM] + q10_3_4 [S][SUM] + q10_4_4 [S][SUM] + q10_5_4 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assist�ncia Social, por tipo de v�nculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q10_5_1 q10_5_2 q10_5_3 q10_5_4 DISPLAY=LABEL
  /TABLE UF BY q10_5_1 [SUM] + q10_5_2 [SUM] + q10_5_3 [SUM] + q10_5_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assist�ncia Social, por escolaridade e UF'.

CTABLES
  /VLABELS VARIABLES=q11_1_1 q11_1_2 q11_1_3 q11_1_4 q11_2_1 q11_2_2 q11_2_3 q11_2_4 q11_3_1 q11_3_2 q11_3_3 q11_3_4 q11_4_1 q11_4_2 q11_4_3 q11_4_4 q11_5_1 q11_5_2 q11_5_3 q11_5_4  DISPLAY=LABEL
  /TABLE q11_1_1 [S][SUM] + q11_1_2 [S][SUM] + q11_1_3 [S][SUM] + q11_1_4 [S][SUM] + q11_2_1 [S][SUM] +  q11_2_2 [S][SUM] + q11_2_3 [S][SUM] + q11_2_4 [S][SUM] + q11_3_1 [S][SUM] + q11_3_2 [S][SUM] 
  + q11_3_3 [S][SUM] + q11_3_4 [S][SUM]  + q11_4_1 [S][SUM] + q11_4_2 [S][SUM]  + q11_4_3 [S][SUM] + q11_4_4 [S][SUM]  + q11_5_1 [S][SUM] + q11_5_2 [S][SUM]  + q11_5_3 [S][SUM] + q11_5_4 [S][SUM]
/TITLES
    TITLE='Quantidade TOTAL de trabalhadores da Secretaria Estadual de Assist�ncia Social (Sede + Servi�os), por v�nculo e escolaridade'.

CTABLES
  /VLABELS VARIABLES=q11_1_1 q11_1_2 q11_1_3 q11_1_4 q11_2_1 q11_2_2 q11_2_3 q11_2_4 q11_3_1 q11_3_2 q11_3_3 q11_3_4 q11_4_1 q11_4_2 q11_4_3 q11_4_4 q11_5_1 q11_5_2 q11_5_3 q11_5_4  DISPLAY=LABEL
  /TABLE q11_1_1 [S][SUM] + q11_1_2 [S][SUM] + q11_1_3 [S][SUM] + q11_1_4 [S][SUM] + q11_2_1 [S][SUM] +  q11_2_2 [S][SUM] + q11_2_3 [S][SUM] + q11_2_4 [S][SUM] + q11_3_1 [S][SUM] + q11_3_2 [S][SUM] 
  + q11_3_3 [S][SUM] + q11_3_4 [S][SUM]  + q11_4_1 [S][SUM] + q11_4_2 [S][SUM]  + q11_4_3 [S][SUM] + q11_4_4 [S][SUM]  + q11_5_1 [S][SUM] + q11_5_2 [S][SUM]  + q11_5_3 [S][SUM] + q11_5_4 [S][SUM]
/TITLES
    TITLE='Quantidade TOTAL de trabalhadores da Secretaria Estadual de Assist�ncia Social (Sede + Servi�os), por v�nculo e escolaridade'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q11_1_4 q11_2_4 q11_3_4 q11_4_4 q11_5_4 DISPLAY=LABEL
  /TABLE UF [C] BY q11_1_4 [SUM] + q11_2_4 [SUM] + q11_3_4 [SUM] + q11_4_4 [SUM] + q11_5_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
/TITLES
    TITLE='Quantidade de trabalhadores da Secretaria Estadual de Assist�ncia Social (sede e servi�os), por v�nculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q11_5_1 q11_5_2 q11_5_3 q11_5_4 DISPLAY=LABEL
  /TABLE UF [C] BY q11_5_1 [SUM] + q11_5_2 [SUM] + q11_5_3 [SUM] + q11_5_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
/TITLES
    TITLE='Quantidade de trabalhadores da Secretaria Estadual de Assist�ncia Social (sede e servi�os), por escolaridade e UF'.


CTABLES
  /VLABELS VARIABLES=q12_1 q12_2 q12_3 q12_4 q12_5 q12_6 q12_7 q12_8 q12_9 q12_10 q12_11 q12_12 q12_13 q12_14 q12_15 q12_16 q12_17 q12_18
    DISPLAY=LABEL
  /TABLE q12_1  [SUM] + q12_2  [SUM] + q12_3  [SUM] + q12_4 [SUM] + q12_5  [SUM] + q12_6 [SUM] + q12_7  [SUM] + 
    q12_8  [SUM] + q12_9  [SUM] + q12_10 [SUM] +q12_11  [SUM] + q12_12  [SUM] + q12_13  [SUM] + q12_14  [SUM] + q12_15  [SUM] + q12_16 [SUM] + q12_17  [SUM] + q12_18 [SUM]
  /TITLES
    TITLE='Quantidade de profissionais, de n�vel superior, segundo a �rea de forma��o'.
execute.

FREQUENCIES VARIABLES=q13 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q14 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q15 
/ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q16_1_1 q16_2_1 DISPLAY=LABEL
  /TABLE q16_1_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_2_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q16_1_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q16_2_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
    /TITLES
    TITLE='Realiza��o de concurso p�blico em 2016 para contrata��o de trabalhadores, por n�vel de escolaridade'.


CTABLES
  /VLABELS VARIABLES=q16_1_2 q16_2_2 DISPLAY=LABEL
  /TABLE q16_1_2 [SUM] + q16_2_2 [SUM] 
  /TITLES
    TITLE='Quantidade de vagas ofertadas no concurso p�blico de 2016, por n�vel de escolaridade'.


CTABLES
  /VLABELS VARIABLES=q16_1_5 q16_2_5 
    DISPLAY=LABEL
  /TABLE q16_1_5 [SUM] + q16_2_5 [SUM] 
  /TITLES
    TITLE='Quantidade de posses no concurso p�blico de 2016, por n�vel de escolaridade'.


FREQUENCIES VARIABLES=q17
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q18
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


****

FREQUENCIES VARIABLES=q20_1 q20_2
  /FORMAT=NOTABLE
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN SUM
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES= q20_1
    DISPLAY=LABEL
  /TABLE q20_1 [S][SUM]
  /TITLES
    TITLE='q20_1_ Valor alocado referente aos recursos pr�prios do estado (exceto repasses e transfer�ncias a munic�pios) em 2016 - Total BRASIL'.

CTABLES
  /VLABELS VARIABLES= q20_2
    DISPLAY=LABEL
  /TABLE q20_2 [S][SUM]
  /TITLES
    TITLE='q20_2_Valor da despesa realizada com recursos pr�prios do estado em 2016  - Total BRASIL'.

CTABLES
  /VLABELS VARIABLES=UF q20_1 DISPLAY=LABEL
  /TABLE UF [C] BY q20_1 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE=' q20_1_Valor alocado referente aos recursos pr�prios do estado (exceto repasses e transfer�ncias a munic�pios) em 2016 por UF'.


CTABLES
  /VLABELS VARIABLES=UF q20_2 DISPLAY=LABEL
  /TABLE UF [C] BY  q20_2 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q20_2_Valor da despesa realizada com recursos pr�prios do estado em 2016 por UF'.


MULT RESPONSE GROUPS=$mr_21 'q21_A Secretaria Estadual de Assist�ncia Social executa diretamente algum servi�o socioassistencial?' (q21_1 q21_2 q21_3 q21_1_0 q21_2_1 q21_2_2 q21_2_3 q21_2_4 q21_2_5 
q21_2_0 q21_3_1 q21_3_2 q21_3_3 q21_3_4 q21_3_0 (1))
/FREQUENCIES=$mr_21.


MULT RESPONSE GROUPS=$mr_22 'q22_A Secretaria Estadual de Assist�ncia Social possui conv�nios com entidades para presta��o de servi�os socioassistenciais?' (q22_0 q22_1 q22_2 q22_3 (1))
/FREQUENCIES=$mr_22.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q23 DISPLAY=LABEL
  /TABLE UF [C] BY q23 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade total de entidades que recebem recurso da Secretaria Estadual de '+
    'Assist�ncia Social por conv�nio, por UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q24_1 q24_2 q24_3 DISPLAY=LABEL
  /TABLE q24_1 [S][SUM] + q24_2 [S][SUM] + q24_3 [S][SUM]
  /TITLES
    TITLE='Das entidades que recebem recurso da Secretaria por conv�nio, indique a quantidade '+
    'por n�vel de prote��o do servi�o ofertado'.


FREQUENCIES VARIABLES=q25
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_26 'Caso sim, quais s�o os benef�cios Eventuais concedidos?' (q26_1 q26_2 q26_3 q26_99 (1))
/FREQUENCIES=$mr_26.


FREQUENCIES VARIABLES=q27
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF q28 DISPLAY=LABEL
  /TABLE UF [C] BY q28 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='N�mero de benefici�rios nos Programas pr�prios de Transfer�ncia de Renda no m�s de Agosto de 2017 por Estado'.


CTABLES
  /VLABELS VARIABLES=UF q29 DISPLAY=LABEL
  /TABLE UF [C] BY q29 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Valor total transferido pelo Estado para os benefici�rios no m�s de Agosto de 2017 por Estado'.


FREQUENCIES VARIABLES=q30
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_31 'Caso oferte Servi�o de Prote��o e Atendimento Especializado a Fam�lias e Indiv�duos (PAEFI) de car�ter REGIONAL, como �, atualmente, a forma de execu��o destas unidades?' (q31_1 q31_2 (1))
/FREQUENCIES=$mr_31.

CTABLES
  /VLABELS VARIABLES=UF q31_1 DISPLAY=LABEL
  /TABLE UF [C] BY q31_1 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de unidades que fazem a execu��o direta do servi�o regionalizado de PAEFI pelo governo estadual por meio de CREAS (Modelo I), por UF'.

CTABLES
  /VLABELS VARIABLES=UF q31_2 DISPLAY=LABEL
  /TABLE UF [C] BY q31_2 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de unidades que fazem repasse de recursos do estado para CREAS municipal regionalizado (Modelo II), por UF'.

MULT RESPONSE GROUPS=$mr_32 'As a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os  CREAS municipais de car�ter regional (Modelo II) incluem:' (q32_1 q32_2 q32_3 q32_4 q32_5 q32_6 q32_7 q32_8 q32_99 (1))
/FREQUENCIES=$mr_32.


FREQUENCIES VARIABLES=q32_99_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q33
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_34 'Quais servi�os de alta complexidade de car�ter regional s�o ofertados no Estado:' (q34_1 q34_2 q34_3 q34_4 q34_5 q34_6 q34_7 q34_8 q34_9 (1))
/FREQUENCIES=$mr_34.

MULT RESPONSE GROUPS=$mr_35 'Caso oferte Unidades de Acolhimento para crian�as e adolescentes e/ou jovens de car�ter REGIONAL, como �, atualmente, a forma de execu��o destas unidades?' (q35_1
q35_2
q35_3
q35_4
 (1))
/FREQUENCIES=$mr_35.

CTABLES
  /VLABELS VARIABLES=UF q35_1 DISPLAY=LABEL
  /TABLE UF [C] BY q35_1 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='1: Execu��o direta do servi�o pelo governo estadual, por UF'.

CTABLES
  /VLABELS VARIABLES=UF q35_2 DISPLAY=LABEL
  /TABLE UF [C] BY q35_2 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q35.2_ Repasse direto do estado para entidade da rede privada - Quantidade de Unidade, por UF'.

CTABLES
  /VLABELS VARIABLES=UF q35_3 DISPLAY=LABEL
  /TABLE UF [C] BY q35_3 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q35_3_Repasse de recursos do estado para os munic�pios-sede, por UF'.

CTABLES
  /VLABELS VARIABLES=UF q35_4 DISPLAY=LABEL
  /TABLE UF [C] BY q35_4 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q35_4_Cons�rcio P�blico, por UF'.



CTABLES
  /VLABELS VARIABLES=q35_1_1 q35_2_1 q35_3_1 q35_4_1 DISPLAY=LABEL
  /TABLE q35_1_1 [S][SUM] + q35_2_1 [S][SUM] + q35_3_1 [S][SUM]  + q35_4_1 [S][SUM]
  /TITLES
    TITLE='Quantidade de unidades que fazem a oferta de servi�os regionalizados de acolhimento para crian�as e adolescentes e/ou jovens '+
    'por forma de execu��o destas unidades'

FREQUENCIES VARIABLES=q36
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_37 'O apoio t�cnico aos munic�pios inclui:' (q37_1 q37_2 q37_3 q37_4 q37_5 q37_6 q37_99 (1))
/FREQUENCIES=$mr_37.

FREQUENCIES VARIABLES=q37_99_1
  /ORDER=ANALYSIS.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF Quant_municipios q38 DISPLAY=LABEL
  /TABLE UF [C] BY Quant_municipios [SUM] + q38 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER 
  /TITLES
    TITLE='q38_Quantidade de munic�pios do Estado que receberam visitas t�cnicas da Secretaria '+
    'Estadual de Assist�ncia Social no ano de 2016' ''.

FREQUENCIES VARIABLES=q39
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q40 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q41 q41_1
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q42
/ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_43 'O cofinanciamento realizado � destinado a:' (q43_1 q43_2 q43_3 q43_4 q43_5 (1))
/FREQUENCIES=$mr_43.

FREQUENCIES VARIABLES=q44
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q45
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q46_1_1 q46_1_2 q46_1_3 q46_2_1 q46_2_2 q46_2_3 q46_3_1 q46_3_2 q46_3_3 q46_4_1 q46_4_2 q46_4_3 DISPLAY=LABEL
  /TABLE q46_1_1 [S][SUM] + q46_1_2 [S][SUM] + q46_1_3 [S][SUM] + q46_2_1 [S][SUM] + q46_2_2 [S][SUM] + q46_2_3 [S][SUM] + q46_3_1 [S][SUM] + q46_3_2 [S][SUM] + q46_3_3 [S][SUM] + q46_4_1 [S][SUM]
 + q46_4_2 [S][SUM] + q46_4_3 [S][SUM]  
  /TITLES
    TITLE='q46_Quantidade total de munic�pios cofinanciados pelo Estado, destinado a Servi�os Socioassistenciais, por tipo de cofinanciamento e tipo de servi�o - Total BRASIL'.


**q46_1 por UF

CTABLES
  /VLABELS VARIABLES=UF q46_1_1 q46_1_2 q46_1_3 DISPLAY=LABEL
  /TABLE UF [C] BY q46_1_1 [S][SUM] + q46_1_2 [S][SUM] + q46_1_3 [S][SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q46_1_Quantidade de munic�pios que recebem cofinanciamento do Estado, por tipo de cofinanciamento e UF'.


**q46_2  por UF
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q46_2_1 q46_2_2 q46_2_3 DISPLAY=LABEL
  /TABLE UF [C] BY q46_2_1 [S][SUM] + q46_2_2 [S][SUM] + q46_2_3 [S][SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q46_2_Quantidade de munic�pios que recebem cofinanciamento do Estado, para servi�os de Prote��o Social B�sica, por tipo de cofinanciamento e UF'.


**q46_3  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q46_3_1 q46_3_2 q46_3_3 DISPLAY=LABEL
  /TABLE UF [C] BY q46_3_1 [S][SUM] + q46_3_2 [S][SUM] + q46_3_3 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q46_3_Quantidade de munic�pios que recebem cofinanciamento do Estado, para servi�os de Prote��o Social Especial de M�dia Complexidade, por tipo de cofinanciamento e UF'.


**q46_4  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q46_4_1 q46_4_2 q46_4_3 DISPLAY=LABEL
  /TABLE UF [C] BY q46_4_1 [S][SUM] + q46_4_2 [S][SUM] + q46_4_3 [S][SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q46_4_Quantidade de munic�pios que recebem cofinanciamento do Estado, para servi�os de Prote��o Social Especial de Alta Complexidade, por tipo de cofinanciamento e UF'.



**q47_1 total Brasil por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q47_1 q47_2 q47_3 DISPLAY=LABEL
  /TABLE UF [C] BY q47_1 [S][SUM] + q47_2 [S][SUM] + q47_3 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q47_Quantidade de munic�pios cofinanciados pelo Estado, destinado a Benef�cios Eventuais, por tipo de cofinanciamento e UF'.


*****
q48_1
q48_2


CTABLES
  /VLABELS VARIABLES=q48_1 q48_2 DISPLAY=LABEL
  /TABLE q48_1 [S][SUM] + q48_2 [S][SUM]
  /TITLES
    TITLE='q48_Total de recursos pr�prios repassados aos munic�pios em 2016'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q48_1 q48_2 DISPLAY=LABEL
  /TABLE UF [C] BY q48_1 [S][SUM] + q48_2 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q48_Total de recursos pr�prios repassados aos munic�pios em 2016 por UF'.


CTABLES
  /VLABELS VARIABLES= q49_1_1 q49_2_1 q49_3_1 q49_4_1 q49_5_1 q49_6_1 q49_1_2 q49_2_2 q49_3_2 q49_4_2 q49_5_2 q49_6_2  DISPLAY=LABEL
  /TABLE q49_1_1 [S][SUM] + q49_2_1 [S][SUM] + q49_3_1 [S][SUM] + q49_4_1 [S][SUM] + q49_5_1 [S][SUM] + q49_6_1 [S][SUM] + q49_1_2 [S][SUM] + q49_2_2 [S][SUM] + q49_3_2 [S][SUM] + q49_4_2 [S][SUM] + q49_5_2 [S][SUM] + q49_6_2 [S][SUM]  
    /TITLES
    TITLE='Indique qual a composi��o da CIB de acordo com a representa��o do porte dos munic�pios e representa��o estadual'.


FREQUENCIES VARIABLES=q50 q51 q52 q53
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q54 
/ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q55 DISPLAY=LABEL
  /TABLE UF [C] BY q55 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuni�es a CIB realizou no ano de 2016?'.


* Custom Tables.

CTABLES
  /VLABELS VARIABLES=UF q56 DISPLAY=LABEL
  /TABLE UF [C] BY q56 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuni�es descentralizadas a CIB realizou no ano de 2016?'.


FREQUENCIES VARIABLES=q57 q58
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q59_1_1 q59_2_1 q59_3_1 q59_4_1
/ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q59_1_2 q59_2_2 q59_3_2 q59_4_2 DISPLAY=LABEL
  /TABLE q59_1_2 [S][SUM] + q59_2_2 [S][SUM] + q59_3_2 [S][SUM] + q59_4_2 [S][SUM] 
  /TITLES
    TITLE='N�mero de conselheiros capacitados em 2016'.


FREQUENCIES VARIABLES=q62_1
  /ORDER=ANALYSIS.



****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****

OUTPUT EXPORT
  /XLS DOCUMENTFILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2017_Censo_SUAS\2017_Base de Dados\Gest�o Estadual/tabelas_CENSO SUAS 2017_GE.xls'.


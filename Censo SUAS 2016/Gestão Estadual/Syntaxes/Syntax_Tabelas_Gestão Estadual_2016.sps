FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_2 'A secretaria ou setor da assist�ncia social est� associada ou subordinada a alguma das �reas abaixo?' (q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (1))
/FREQUENCIES=$mr_2.

FREQUENCIES VARIABLES=q3
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q4 DISPLAY=LABEL
  /TABLE UF BY q4 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
    TITLE='Quantidade de escrit�rios regionais (ou similares) da Assist�ncia Social no Estado por UF'.


FREQUENCIES VARIABLES=q5 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q6 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q7 
/ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q8_1_1 q8_1_2 q8_1_3 q8_1_4 q8_2_1 q8_2_2 q8_2_3 q8_2_4 q8_3_1 q8_3_2 q8_3_3 q8_3_4 q8_4_1 q8_4_2 q8_4_3 q8_4_4 q8_5_1 q8_5_2 q8_5_3 q8_5_4  DISPLAY=LABEL
  /TABLE q8_1_1 [S][SUM] + q8_1_2 [S][SUM] + q8_1_3 [S][SUM] + q8_1_4 [S][SUM] + q8_2_1 [S][SUM] +  q8_2_2 [S][SUM] + q8_2_3 [S][SUM] + q8_2_4 [S][SUM] + q8_3_1 [S][SUM] + q8_3_2 [S][SUM] 
  + q8_3_3 [S][SUM] + q8_3_4 [S][SUM]  + q8_4_1 [S][SUM] + q8_4_2 [S][SUM]  + q8_4_3 [S][SUM] + q8_4_4 [S][SUM]  + q8_5_1 [S][SUM] + q8_5_2 [S][SUM]  + q8_5_3 [S][SUM] + q8_5_4 [S][SUM]  
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assist�ncia Social, por v�nculo e escolaridade'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q8_1_4 q8_2_4 q8_3_4 q8_4_4 q8_5_4 DISPLAY=LABEL
  /TABLE UF BY q8_1_4 [S][SUM] + q8_2_4 [S][SUM] + q8_3_4 [S][SUM] + q8_4_4 [S][SUM] + q8_5_4 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assist�ncia Social, por tipo de v�nculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q8_5_1 q8_5_2 q8_5_3 q8_5_4 DISPLAY=LABEL
  /TABLE UF BY q8_5_1 [SUM] + q8_5_2 [SUM] + q8_5_3 [SUM] + q8_5_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assist�ncia Social, por escolaridade e UF'.

CTABLES
  /VLABELS VARIABLES=q9_1_1 q9_1_2 q9_1_3 q9_1_4 q9_2_1 q9_2_2 q9_2_3 q9_2_4 q9_3_1 q9_3_2 q9_3_3 q9_3_4 q9_4_1 q9_4_2 q9_4_3 q9_4_4 q9_5_1 q9_5_2 q9_5_3 q9_5_4  DISPLAY=LABEL
  /TABLE q9_1_1 [S][SUM] + q9_1_2 [S][SUM] + q9_1_3 [S][SUM] + q9_1_4 [S][SUM] + q9_2_1 [S][SUM] +  q9_2_2 [S][SUM] + q9_2_3 [S][SUM] + q9_2_4 [S][SUM] + q9_3_1 [S][SUM] + q9_3_2 [S][SUM] 
  + q9_3_3 [S][SUM] + q9_3_4 [S][SUM]  + q9_4_1 [S][SUM] + q9_4_2 [S][SUM]  + q9_4_3 [S][SUM] + q9_4_4 [S][SUM]  + q9_5_1 [S][SUM] + q9_5_2 [S][SUM]  + q9_5_3 [S][SUM] + q9_5_4 [S][SUM]
/TITLES
    TITLE='Quantidade TOTAL de trabalhadores da Secretaria Estadual de Assist�ncia Social (Sede + Servi�os), por v�nculo e escolaridade'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q9_1_4 q9_2_4 q9_3_4 q9_4_4 q9_5_4 DISPLAY=LABEL
  /TABLE UF [C] BY q9_1_4 [SUM] + q9_2_4 [SUM] + q9_3_4 [SUM] + q9_4_4 [SUM] + q9_5_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
/TITLES
    TITLE='Quantidade de trabalhadores da Secretaria Estadual de Assist�ncia Social (sede e servi�os), por v�nculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q9_5_1 q9_5_2 q9_5_3 q9_5_4 DISPLAY=LABEL
  /TABLE UF [C] BY q9_5_1 [SUM] + q9_5_2 [SUM] + q9_5_3 [SUM] + q9_5_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
/TITLES
/TITLES
    TITLE='Quantidade de trabalhadores da Secretaria Estadual de Assist�ncia Social (sede e servi�os), por escolaridade e UF'.


CTABLES
  /VLABELS VARIABLES=q10_1 q10_2 q10_3 q10_4 q10_5 q10_6 q10_7 q10_8 q10_9 q10_10 q10_11 q10_12 q10_13 q10_14 q10_15 q10_16 q10_17 q10_18
    DISPLAY=LABEL
  /TABLE q10_1  [SUM] + q10_2  [SUM] + q10_3  [SUM] + q10_4 [SUM] + q10_5  [SUM] + q10_6 [SUM] + q10_7  [SUM] + 
    q10_8  [SUM] + q10_9  [SUM] + q10_10 [SUM] +q10_11  [SUM] + q10_12  [SUM] + q10_13  [SUM] + q10_14  [SUM] + q10_15  [SUM] + q10_16 [SUM] + q10_17  [SUM] + q10_18 [SUM]
  /TITLES
    TITLE='Quantidade de profissionais, de n�vel superior, segundo a �rea de forma��o'.
execute.


CTABLES
  /VLABELS VARIABLES=q11_1_1 q11_2_1 DISPLAY=LABEL
  /TABLE q11_1_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q11_2_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q11_1_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q11_2_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
    /TITLES
    TITLE='Realiza��o de concurso p�blico em 2015 para contrata��o de trabalhadores, por n�vel de escolaridade'.


CTABLES
  /VLABELS VARIABLES=q11_1_2 q11_2_2 DISPLAY=LABEL
  /TABLE q11_1_2 [SUM] + q11_2_2 [SUM] 
  /TITLES
    TITLE='Quantidade de vagas ofertadas no concurso p�blico de 2015, por n�vel de escolaridade'.


CTABLES
  /VLABELS VARIABLES=q11_1_5 q11_2_5 
    DISPLAY=LABEL
  /TABLE q11_1_5 [SUM] + q11_2_5 [SUM] 
  /TITLES
    TITLE='Quantidade de posses no concurso p�blico de 2015, por n�vel de escolaridade'.


FREQUENCIES VARIABLES=q12
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q13_1 q13_2 q13_3 DISPLAY=LABEL
  /TABLE UF [C] BY q13_1 [S][SUM] + q13_2 [S][SUM] + q13_3 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Caso sim, informe a quantidade de profissionais exclusivos da �rea de Vigil�ncia '+
    'Socioassist�ncial'.

FREQUENCIES VARIABLES=q14  
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q15  
/ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q16  
/ORDER=ANALYSIS.


****

FREQUENCIES VARIABLES=q17_1 q17_2
  /FORMAT=NOTABLE
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN SUM
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES= q17_1
    DISPLAY=LABEL
  /TABLE q17_1 [S][SUM]
  /TITLES
    TITLE='q17_1_ Valor alocado referente aos recursos pr�prios do estado (exceto repasses e transfer�ncias a munic�pios) em 2015 - Total BRASIL'.

CTABLES
  /VLABELS VARIABLES= q17_2
    DISPLAY=LABEL
  /TABLE q17_2 [S][SUM]
  /TITLES
    TITLE='q17_2_Valor da despesa realizada com recursos pr�prios do estado em 2015  - Total BRASIL'.

CTABLES
  /VLABELS VARIABLES=UF q17_1 DISPLAY=LABEL
  /TABLE UF [C] BY q17_1 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE=' q17_1_Valor alocado referente aos recursos pr�prios do estado (exceto repasses e transfer�ncias a munic�pios) em 2015 por UF'.


CTABLES
  /VLABELS VARIABLES=UF q17_2 DISPLAY=LABEL
  /TABLE UF [C] BY  q17_2 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q17_2_Valor da despesa realizada com recursos pr�prios do estado em 2015 por UF'.



MULT RESPONSE GROUPS=$mr_18 'q18_A Secretaria Estadual de Assist�ncia Social executa diretamente algum servi�o socioassistencial?' (q18_1_1 q18_2_1 q18_3_1(1))
/FREQUENCIES=$mr_18.


MULT RESPONSE GROUPS=$mr_19 'q19_A Secretaria Estadual de Assist�ncia Social possui conv�nios com entidades para presta��o de servi�os socioassistenciais?' (q19_0 q19_1 q19_2 q19_3(1))
/FREQUENCIES=$mr_19.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q20 DISPLAY=LABEL
  /TABLE UF [C] BY q20 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade total de entidades que recebem recurso da Secretaria Estadual de '+
    'Assist�ncia Social atrav�s de conv�nio, por UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q21_1 q21_2 q21_3 DISPLAY=LABEL
  /TABLE q21_1 [S][SUM] + q21_2 [S][SUM] + q21_3 [S][SUM]
  /TITLES
    TITLE='Das entidades que recebem recurso da Secretaria por conv�nio, indique a quantidade '+
    'por n�vel de prote��o do servi�o ofertado'.


FREQUENCIES VARIABLES=q22
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_23 'Caso sim, quais s�o os benef�cios Eventuais concedidos?' (q23_1 q23_2 q23_3 q23_99(1))
/FREQUENCIES=$mr_23.


FREQUENCIES VARIABLES=q24
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF q25 DISPLAY=LABEL
  /TABLE UF [C] BY q25 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='N�mero de benefici�rios nos Programas pr�prios de Transfer�ncia de Renda no m�s de Agosto de 2016 por Estado'.


CTABLES
  /VLABELS VARIABLES=UF q26 DISPLAY=LABEL
  /TABLE UF [C] BY q26 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Valor total transferido pelo Estado para os benefici�rios no m�s de Agosto de 2016 por Estado'.


FREQUENCIES VARIABLES=q27
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_28 'O apoio t�cnico aos munic�pios inclui:' (q28_1 q28_2 q28_3 q28_4 q28_5 q28_6 q28_99(1))
/FREQUENCIES=$mr_28.


FREQUENCIES VARIABLES=q28_especif
  /ORDER=ANALYSIS.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF Quant_municipios q29 DISPLAY=LABEL
  /TABLE UF [C] BY Quant_municipios [SUM] + q29 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER 
  /TITLES
    TITLE='q29_Quantidade de munic�pios do Estado que receberam visitas t�cnicas da Secretaria '+
    'Estadual de Assist�ncia Social no ano de 2015' ''.


FREQUENCIES VARIABLES=q30 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q32 q32_qual
/ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q33
/ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_34 'O cofinanciamento realizado � destinado a:' (q34_1 q34_2 q34_3 q34_4 q34_5(1))
/FREQUENCIES=$mr_34.

FREQUENCIES VARIABLES=q35
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q36
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


***q37

CTABLES
  /VLABELS VARIABLES=q37_1_1 q37_1_2 q37_1_3 q37_2_1 q37_2_2 q37_2_3 q37_3_1 q37_3_2 q37_3_3 q37_4_1 q37_4_2 q37_4_3 DISPLAY=LABEL
  /TABLE q37_1_1 [S][SUM] + q37_1_2 [S][SUM] + q37_1_3 [S][SUM] + q37_2_1 [S][SUM] + q37_2_2 [S][SUM] + q37_2_3 [S][SUM] + q37_3_1 [S][SUM] + q37_3_2 [S][SUM] + q37_3_3 [S][SUM] + q37_4_1 [S][SUM] + q37_4_2 [S][SUM] + q37_4_3 [S][SUM]  
  /TITLES
    TITLE='q37_Quantidade total de munic�pios cofinanciados pelo Estado, destinado a Servi�os Socioassistenciais, por tipo de cofinanciamento e tipo de servi�o - Total BRASIL'.


**q37_1 por UF

CTABLES
  /VLABELS VARIABLES=UF q37_1_1 q37_1_2 q37_1_3 DISPLAY=LABEL
  /TABLE UF [C] BY q37_1_1 [S][SUM] + q37_1_2 [S][SUM] + q37_1_3 [S][SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q37_1_Quantidade de munic�pios que recebem cofinanciamento do Estado, por tipo de cofinanciamento e UF'.


**q37_2  por UF
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q37_2_1 q37_2_2 q37_2_3 DISPLAY=LABEL
  /TABLE UF [C] BY q37_2_1 [S][SUM] + q37_2_2 [S][SUM] + q37_2_3 [S][SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q37_2_Quantidade de munic�pios que recebem cofinanciamento do Estado, para servi�os de Prote��o Social B�sica, por tipo de cofinanciamento e UF'.


**q37_3  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q37_3_1 q37_3_2 q37_3_3 DISPLAY=LABEL
  /TABLE UF [C] BY q37_3_1 [S][SUM] + q37_3_2 [S][SUM] + q37_3_3 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q37_3_Quantidade de munic�pios que recebem cofinanciamento do Estado, para servi�os de Prote��o Social Especial de M�dia Complexidade, por tipo de cofinanciamento e UF'.


**q37_4  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q37_4_1 q37_4_2 q37_4_3 DISPLAY=LABEL
  /TABLE UF [C] BY q37_4_1 [S][SUM] + q37_4_2 [S][SUM] + q37_4_3 [S][SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q37_4_Quantidade de munic�pios que recebem cofinanciamento do Estado, para servi�os de Prote��o Social Especial de Alta Complexidade, por tipo de cofinanciamento e UF'.



**q38_1 total Brasil por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q38_1_1 q38_1_2 q38_1_3 DISPLAY=LABEL
  /TABLE UF [C] BY q38_1_1 [S][SUM] + q38_1_2 [S][SUM] + q38_1_3 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q38_1_Quantidade de munic�pios cofinanciados pelo Estado, destinado a Benef�cios Eventuais, por tipo de cofinanciamento e UF'.


*****
q39_1
q39_2


CTABLES
  /VLABELS VARIABLES=q39_1 q39_2 DISPLAY=LABEL
  /TABLE q39_1 [S][SUM] + q39_2 [S][SUM]
  /TITLES
    TITLE='q39_Total de recursos pr�prios repassados aos munic�pios em 2015'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q39_1 q39_2 DISPLAY=LABEL
  /TABLE UF [C] BY q39_1 [S][SUM] + q39_2 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q39_Total de recursos pr�prios repassados aos munic�pios em 2015 por UF'.


CTABLES
  /VLABELS VARIABLES= q40_1_1 q40_2_1 q40_3_1 q40_4_1 q40_5_1 q40_6_1 q40_1_2 q40_2_2 q40_3_2 q40_4_2 q40_5_2 q40_6_2  DISPLAY=LABEL
  /TABLE q40_1_1 [S][SUM] + q40_2_1 [S][SUM] + q40_3_1 [S][SUM] + q40_4_1 [S][SUM] + q40_5_1 [S][SUM] + q40_6_1 [S][SUM] + q40_1_2 [S][SUM] + q40_2_2 [S][SUM] + q40_3_2 [S][SUM] + q40_4_2 [S][SUM] + q40_5_2 [S][SUM] + q40_6_2 [S][SUM]  
    /TITLES
    TITLE='Indique qual a composi��o da CIB de acordo com a representa��o do porte dos munic�pios e representa��o estadual'.


FREQUENCIES VARIABLES=q41 q42 q43 q44
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q45 
/ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q46 DISPLAY=LABEL
  /TABLE UF [C] BY q46 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuni�es a CIB realizou no ano de 2015?'.


* Custom Tables.

CTABLES
  /VLABELS VARIABLES=UF q47 DISPLAY=LABEL
  /TABLE UF [C] BY q47 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuni�es descentralizadas a CIB realizou no ano de 2015?'.


FREQUENCIES VARIABLES=q48 q49
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q50_1_1 q50_2_1 q50_3_1 q50_4_1
/ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q50_1_2 q50_2_2 q50_3_2 q50_4_2 DISPLAY=LABEL
  /TABLE q50_1_2 [S][SUM] + q50_2_2 [S][SUM] + q50_3_2 [S][SUM] + q50_4_2 [S][SUM] 
  /TITLES
    TITLE='N�mero de conselheiros capacitados em 2014'.


FREQUENCIES VARIABLES=representante_Vigilancia
  /ORDER=ANALYSIS.



****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****



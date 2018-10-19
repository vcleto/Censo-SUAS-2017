


FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q2  'Secretaria ou setor ao qual a assist�ncia social est� associada ou submetida'(q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_8(1))
  /FREQUENCIES=$q2.
EXECUTE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q3a q3b q3c q3d q3e q3f q3g q3h q3i q3j 
    DISPLAY=LABEL
  /TABLE q3a [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3b [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q3c [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3d [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3e 
    [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3f [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3g [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q3h [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3i [C][COUNT F40.0, 
    ROWPCT.COUNT PCT40.1] + q3j [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q3a [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3b [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3c [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3d [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3e [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3f [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3g [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3h [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3i [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3j [1, 2, 3, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='�reas constitu�das como subdivis�es administrativas (departamentos, coordena��es) na estrutura formal do �rg�o gestor'.


FREQUENCIES VARIABLES=q4
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q6
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q7
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q8
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q9a_1 q9a_2 q9b_1 q9b_2 q9c_1 q9c_2 q9d_1 q9d_2 q9e_1 q9e_2 
    DISPLAY=LABEL
  /TABLE q9a_1 [C][COUNT F40.0] + q9a_2 [C][COUNT F40.0] + q9b_1 [C][COUNT F40.0] + q9b_2 [C][COUNT 
    F40.0] + q9c_1 [C][COUNT F40.0] + q9c_2 [C][COUNT F40.0] + q9d_1 [C][COUNT F40.0] + q9d_2 [C][COUNT 
    F40.0] + q9e_1 [C][COUNT F40.0] + q9e_2 [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q9a_1 q9a_2 q9b_1 q9b_2 q9c_1 q9c_2 q9d_1 q9d_2 q9e_1 q9e_2 [1, 0, OTHERNM] 
    EMPTY=INCLUDE.

FREQUENCIES VARIABLES=q10
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q11_1 q11_2 DISPLAY=LABEL
  /TABLE q11_1 [S][SUM] + q11_2 [S][SUM].

FREQUENCIES VARIABLES=q12
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q14
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

**derivada quest�o 15**

FREQUENCIES VARIABLES=D15
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q16
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q17
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q18
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q20
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q21 'Temas sobre os quais os munic�pios receberam orienta��es e apoio t�cnico no decorrer da(s) visita(s) t�cnica(s) realizada(s) pelo estado', (q21_1 q21_2 q21_3 q21_4 q21_5 q21_6 q21_7 q21_8 q21_9 q21_10 q21_11 
    q21_12 q21_13 q21_14 q21_15 q21_16 q21_17 q21_18 q21_19 (1))
  /FREQUENCIES=$q21.

FREQUENCIES VARIABLES=q22
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q23
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q24
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q25
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q26
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q28
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q29
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q30
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q32
  /FORMAT=NOTABLE
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q33
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q34
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q35
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q36
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q37a_1 q37a_2 q37a_3 q37a_4 q37b_1 q37b_2 q37b_3 q37b_4 q37c_1 q37c_2 q37c_3 
    q37c_4 q37d_1 q37d_2 q37d_3 q37d_4 q37e_1 q37e_2 q37e_3 q37e_4 
    DISPLAY=LABEL
  /TABLE q37a_1 [S][SUM] + q37a_2 [S][SUM] + q37a_3 [S][SUM] + q37a_4 [S][SUM] + q37b_1 [S][SUM] + 
    q37b_2 [S][SUM] + q37b_3 [S][SUM] + q37b_4 [S][SUM] + q37c_1 [S][SUM] + q37c_2 [S][SUM] + q37c_3 
    [S][SUM] + q37c_4 [S][SUM] + q37d_1 [S][SUM] + q37d_2 [S][SUM] + q37d_3 [S][SUM] + q37d_4 [S][SUM] 
    + q37e_1 [S][SUM] + q37e_2 [S][SUM] + q37e_3 [S][SUM] + q37e_4 [S][SUM]
  /TITLES
    TITLE='Quantidade de trabalhadores lotados na sede do �rg�o Gestor (e nas administra��es '+
    'regionais, caso existam) de acordo com v�culo e escolaridade'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q38a_1 q38a_2 q38a_3 q38a_4 q38b_1 q38b_2 q38b_3 q38b_4 q38c_1 q38c_2 q38c_3 
    q38c_4 q38d_1 q38d_2 q38d_3 q38d_4 q38e_1 q38e_2 q38e_3 q38e_4 
    DISPLAY=LABEL
  /TABLE q38a_1 [S][SUM] + q38a_2 [S][SUM] + q38a_3 [S][SUM] + q38a_4 [S][SUM] + q38b_1 [S][SUM] + 
    q38b_2 [S][SUM] + q38b_3 [S][SUM] + q38b_4 [S][SUM] + q38c_1 [S][SUM] + q38c_2 [S][SUM] + q38c_3 
    [S][SUM] + q38c_4 [S][SUM] + q38d_1 [S][SUM] + q38d_2 [S][SUM] + q38d_3 [S][SUM] + q38d_4 [S][SUM] 
    + q38e_1 [S][SUM] + q38e_2 [S][SUM] + q38e_3 [S][SUM] + q38e_4 [S][SUM]
  /TITLES
    TITLE='Quantidade total de trabalhadores da Secretaria Municipal de Assist�ncia Social (considerando inclusive os trabalhadores '+
'lotados nas unidades p�licas que ofertam servi�os socioassistenciais)'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q39a q39b q39c q39d q39e q39f q39g q39h q39i q39j q39k 
    DISPLAY=LABEL
  /TABLE q39a [SUM] + q39b [SUM] + q39c [SUM] + q39d [SUM] + q39e [SUM] + q39f [SUM] + q39g [SUM] + 
    q39h [SUM] + q39i [SUM] + q39j [SUM] + q39k [SUM]
  /TITLES
    TITLE='Quantidade de profissionais, de n�vel superior, segundo �reas de forma��o'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q40_1 q40_2 q40_3 q40_4 q40_5 DISPLAY=LABEL
  /TABLE q40_1 [SUM] + q40_2 [SUM] + q40_3 [SUM] + q40_4 [SUM] + q40_5 [SUM]
  /TITLES
    TITLE='Total de trabalhadores da Secretaria Municipal de Assist�ncia Social que possuem '+
    'defici�ncia'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q41a_1 q41b_1 q41c_1 q41d_1 q41e_1 q41f_1 q41g_1 q41h_1 q41i_1 q41j_1 q41k_1 
    q41l_1 q41m_1 q41n_1 
    DISPLAY=LABEL
  /TABLE q41a_1 [SUM] + q41b_1 [SUM] + q41c_1 [SUM] + q41d_1 [SUM] + q41e_1 [SUM] + q41f_1 [SUM] + 
    q41g_1 [SUM] + q41h_1 [SUM] + q41i_1 [SUM] + q41j_1 [SUM] + q41k_1 [SUM] + q41l_1 [SUM] + q41m_1 
    [SUM] + q41n_1 [SUM]
  /TITLES
    TITLE='Quantidade total de trabalhadores de n�vel m�dio da Assist�ncia Social, segundo a fun��o de apoio Gest�o'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q41a_2 q41b_2 q41c_2 q41d_2 q41e_2 q41f_2 q41g_2 q41h_2 q41i_2 q41j_2 q41k_2 
    q41l_2 q41m_2 q41n_2 
    DISPLAY=LABEL
  /TABLE q41a_2 [SUM] + q41b_2 [SUM] + q41c_2 [SUM] + q41d_2 [SUM] + q41e_2 [SUM] + q41f_2 [SUM] + 
    q41g_2 [SUM] + q41h_2 [SUM] + q41i_2 [SUM] + q41j_2 [SUM] + q41k_2 [SUM] + q41l_2 [SUM] + q41m_2 
    [SUM] + q41n_2 [SUM]
  /TITLES
    TITLE='Quantidade de trabalhadores de n�vel m�dio, lotados na �rea de Gest�o na sede do �rg�o Gestor, segundo a fun��o de apoio � Gest�o'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q41a_3 q41b_3 q41c_3 q41d_3 q41e_3 q41f_3 q41g_3 q41h_3 q41i_3 q41j_3 q41k_3 
    q41l_3 q41m_3 q41n_3 
    DISPLAY=LABEL
  /TABLE q41a_3 [SUM] + q41b_3 [SUM] + q41c_3 [SUM] + q41d_3 [SUM] + q41e_3 [SUM] + q41f_3 [SUM] + 
    q41g_3 [SUM] + q41h_3 [SUM] + q41i_3 [SUM] + q41j_3 [SUM] + q41k_3 [SUM] + q41l_3 [SUM] + q41m_3 
    [SUM] + q41n_3 [SUM]
  /TITLES
    TITLE='Quantidade de trabalhadores de n�vel m�dio, lotados na �rea de Gest�o das Unidades P�blicas de Assist�ncia Social, segundo a fun��o de apoio � Gest�o'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q42a_1 q42b_1 q42c_1 q42d_1 q42e_1 q42f_1
    DISPLAY=LABEL
  /TABLE q42a_1 [SUM] + q42b_1 [SUM] + q42c_1 [SUM] + q42d_1 [SUM] + q42e_1 [SUM] + q42f_1 [SUM] 
  /TITLES
    TITLE='Quantidade total de trabalhadores de n�vel m�dio da Assist�ncia Social, segundo a fun��o de apoio �s atividades t�cnicas'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q42a_2 q42b_2 q42c_2 q42d_2 q42e_2 q42f_2
    DISPLAY=LABEL
  /TABLE q42a_2 [SUM] + q42b_2 [SUM] + q42c_2 [SUM] + q42d_2 [SUM] + q42e_2 [SUM] + q42f_2 [SUM] 
  /TITLES
    TITLE='Quantidade total de trabalhadores de n�vel m�dio, lotados na sede do �rg�o Gestor, segundo a fun��o de apoio �s atividades t�cnicas'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q42a_3 q42b_3 q42c_3 q42d_3 q42e_3 q42f_3
    DISPLAY=LABEL
  /TABLE q42a_3 [SUM] + q42b_3 [SUM] + q42c_3 [SUM] + q42d_3 [SUM] + q42e_3 [SUM] + q42f_3 [SUM] 
  /TITLES
    TITLE='Quantidade total de trabalhadores de n�vel m�dio, lotados nas Unidades P�blicas de Assist�ncia Social, segundo a fun��o de apoio �s atividades t�cnicas'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43a_1 q43b_1 DISPLAY=LABEL
  /TABLE q43a_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q43b_1 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q43a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q43b_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE='Quantidade de munic�pios que realizaram concurso p�blico, no ano de 2011, para contrata��o de trabalhdores (n�vel superior ou m�dio)'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43a_2 q43b_2 DISPLAY=LABEL
  /TABLE q43a_2 [S][SUM] + q43b_2 [S][SUM]
  /TITLES
    TITLE='Quantidade de vagas ofertadas pelos concursos para a contrata��o de trabalhadores '+
    '(nivel superior ou m�dio), realizados pelos munic�pios no ano de 2011'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43a_4 q43b_4 DISPLAY=LABEL
  /TABLE q43a_4 [SUM] + q43b_4 [SUM]
  /TITLES
    TITLE='Quantidade de trabalhadores que tomaram posse em fun��o dos concursos realizados '+
    'pelos munic�pios, no ano de 2011, para a contrata��o de trabalhadores (nivel superior ou m�dio)'.


FREQUENCIES VARIABLES=q44
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q45 'Ente(s) federado(s) que promoveu(eram) cursos presenciais de capacita��o para os trabalhadores da Assist�ncia Social dos munic�pios', (q45_1 q45_2 q45_3 (1))
  /FREQUENCIES=$q45.

FREQUENCIES VARIABLES=q46
  /FORMAT=NOTABLE
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q48 'Ente(s) federado(s) que promoveu(eram) cursos � dist�ncia (EAD) de capacita��o para os trabalhadores da Assist�ncia Social dos munic�pios', (q48_1 q48_2 q48_3 (1))
  /FREQUENCIES=$q48.

FREQUENCIES VARIABLES=q49
  /FORMAT=NOTABLE
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q50 'Carga hor�ria dos cursos de capacita��o realizados pelos trabalhadores da Assist�ncia Social no muc�pio', (q50_1 q50_2 q50_3 q50_4 q50_5 q50_6(1))
  /FREQUENCIES=$q50.

MULT RESPONSE GROUPS=$q51 '�reas tem�ticas dos cursos de capacita��o realizados pelos trabalhadores da Assist�ncia Social do munic�pio', (q51_1 q51_2 q51_3 q51_4 q51_5 q51_6 q51_7 q51_8 q51_9 q51_10 q51_11 
    q51_12 q51_13 q51_14 q51_15 q51_16 q51_17 q51_18 q51_19 (1))
  /FREQUENCIES=$q51.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q52a_1 q52a_2 DISPLAY=LABEL
  /TABLE q52a_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52a_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52a_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o e Atendimento Integral � Fam�lia - PAIF'.    

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q52b_1 q52b_2 q52b_3 q52b_4 q52b_5 DISPLAY=LABEL
  /TABLE q52b_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52b_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52b_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52b_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52b_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52b_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52b_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52b_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52b_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52b_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para '+
    'crian�as de 0 a 6 anos'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q52c_1 q52c_2 q52c_3 q52c_4 q52c_5 DISPLAY=LABEL
  /TABLE q52c_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52c_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52c_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52c_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52c_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52c_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52c_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52c_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52c_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52c_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para '+
    'crian�as de 6 a 15 anos'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q52d_1 q52d_2 q52d_3 q52d_4 q52d_5 DISPLAY=LABEL
  /TABLE q52d_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52d_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52d_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52d_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52d_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52d_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52d_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52d_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52d_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52d_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para '+
    'crian�as de 15 a 17 anos'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q52e_1 q52e_2 q52e_3 q52e_4 q52e_5 DISPLAY=LABEL
  /TABLE q52e_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52e_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52e_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52e_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52e_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52e_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52e_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52e_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52e_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52e_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para '+
    'idosos'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q52f_1 q52f_2 q52f_3 q52f_4 q52f_5 DISPLAY=LABEL
  /TABLE q52f_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52f_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52f_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52f_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52f_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52f_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52f_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52f_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52f_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52f_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o Social B�sica no domic�lio para pessoas com defici�ncia e idosas'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q52g_1 q52g_2 q52g_3 q52g_4 q52g_5 DISPLAY=LABEL
  /TABLE q52g_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52g_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52g_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52g_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52g_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52g_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52g_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52g_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52g_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52g_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado Programas ou Projetos de Capacita��o e Inclus�o Produtiva'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q52h_1 q52h_2 q52h_3 q52h_4 q52h_5 DISPLAY=LABEL
  /TABLE q52h_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52h_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52h_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52h_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q52h_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52h_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52h_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52h_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52h_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52h_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado Programas ou Projetos de Inclus�o Digital'.
  
  
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53a_1 q53a_2 DISPLAY=LABEL
  /TABLE q53a_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53a_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q53a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53a_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o e Atendimento Especializado a Fam�lias e Indiv�duos - PAEFI/CREAS'.  

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53b_1 q53b_2 q53b_3 q53b_4 q53b_5 DISPLAY=LABEL
  /TABLE q53b_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53b_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53b_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53b_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53b_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q53b_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53b_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53b_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53b_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53b_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o Especializado para pessoas em situa��o de rua'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53c_1 q53c_2 q53c_3 q53c_4 q53c_5 DISPLAY=LABEL
  /TABLE q53c_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53c_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53c_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53c_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53c_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q53c_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53c_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53c_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53c_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53c_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o de Prote��o Especial para pessoas com defici�ncia, idosas e suas fam�lias'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53d_1 q53d_2 q53d_3 q53d_4 q53d_5 DISPLAY=LABEL
  /TABLE q53d_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53d_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53d_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53d_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53d_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q53d_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53d_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53d_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53d_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53d_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o de Prote��o Social a Adolescentes e Cumprimento de Medida Socioeducativa e de Liberdade Assistida (LA) e de Presta��o de Servi�os � Comunidade (PSC)'.


* Custom Tab* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53e_1 q53e_2 q53e_3 q53e_4 q53e_5 DISPLAY=LABEL
  /TABLE q53e_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53e_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53e_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53e_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53e_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q53e_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53e_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53e_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53e_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53e_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o Especializado em abordagem social'.


*FREQUENCIES VARIABLES=q54a_1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

*FREQUENCIES VARIABLES=q54b_1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

*FREQUENCIES VARIABLES=q54c_1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

*FREQUENCIES VARIABLES=q54d_1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

*FREQUENCIES VARIABLES=q54e_1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

*FREQUENCIES VARIABLES=q54f_1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

*FREQUENCIES VARIABLES=q54g_1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

*FREQUENCIES VARIABLES=q54h_1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q54a_1 q54a_2 q54a_3 q54a_4 q54a_5 DISPLAY=LABEL
  /TABLE BY q54a_1 [COUNT F40.0] + q54a_2 [SUM] + q54a_3 [SUM] + q54a_4 [SUM] + q54a_5 [SUM]
  /CATEGORIES VARIABLES=q54a_1 ORDER=D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Oferta e caracter�sticas das Unidades de Acolhimento Institucional para cria�as e '+
    'adolescentes'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q54b_1 q54b_2 q54b_3 q54b_4 q54b_5 DISPLAY=LABEL
  /TABLE BY q54b_1 [COUNT F40.0] + q54b_2 [SUM] + q54b_3 [SUM] + q54b_4 [SUM] + q54b_5 [SUM]
  /CATEGORIES VARIABLES=q54b_1 ORDER=D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Oferta e caracter�sticas das Unidades de Acolhimento Institucional para cria�as idosos'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q54c_1 q54c_2 q54c_3 q54c_4  q54c_5 DISPLAY=LABEL
  /TABLE BY q54c_1 [COUNT F40.0] + q54c_2 [SUM] + q54c_3 [SUM] + q54c_4 [SUM] + q54c_5 [SUM]
  /CATEGORIES VARIABLES=q54c_1 ORDER=D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Oferta e caracter�sticas das Unidades de Acolhimento Institucional para pessoas em situa��o de rua'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q54d_1 q54d_2 q54d_3 q54d_4 q54d_5 DISPLAY=LABEL
  /TABLE BY q54d_1 [COUNT F40.0] + q54d_2 [SUM] + q54d_3 [SUM] + q54d_4 [SUM] + q54d_5 [SUM]
  /CATEGORIES VARIABLES=q54d_1 ORDER=D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Oferta e caracter�sticas das Unidades de Acolhimento Institucional para pessoas com defici�ncia'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q54e_1 q54e_2 q54e_3 q54e_4 q54e_5 DISPLAY=LABEL
  /TABLE BY q54e_1 [COUNT F40.0] + q54e_2 [SUM] + q54e_3 [SUM] + q54e_4 [SUM] + q54e_5 [SUM]
  /CATEGORIES VARIABLES=q54e_1 ORDER=D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Oferta e caracter�sticas das Unidades de Acolhimento Institucional para mulheres v�timas de viol�ncia'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q54f_1 q54f_2 q54f_3 q54f_4 q54f_5 DISPLAY=LABEL
  /TABLE BY q54f_1 [COUNT F40.0] + q54f_2 [SUM] + q54f_3 [SUM] + q54f_4 [SUM] + q54f_5 [SUM]
  /CATEGORIES VARIABLES=q54f_1 ORDER=D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Oferta e caracter�sticas das Unidades de Acolhimento em Rep�blica para jovens (maiores de 18 anos)'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q54g_1 q54g_2 q54g_3 q54g_4 q54g_5 DISPLAY=LABEL
  /TABLE BY q54g_1 [COUNT F40.0] + q54g_2 [SUM] + q54g_3 [SUM] + q54g_4 [SUM] + q54g_5 [SUM]
  /CATEGORIES VARIABLES=q54g_1 ORDER=D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Oferta e caracter�sticas das Unidades de Acolhimento em Rep�blica para adultos em processo de sa�da das ruas'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q54h_1 q54h_2 q54h_3 q54h_4 q54h_5 DISPLAY=LABEL
  /TABLE BY q54h_1 [COUNT F40.0] + q54h_2 [SUM] + q54h_3 [SUM] + q54h_4 [SUM] + q54h_5 [SUM]
  /CATEGORIES VARIABLES=q54h_1 ORDER=D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Oferta e caracter�sticas das Unidades de Acolhimento em Rep�blica para idosos'.


****tabelas vari�veis derivadas quest�o 54****

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=D54_crianca_1 D54_idoso_1 D54_rua_1 D54_deficiencia_1 D54_mulher_1 D54_jovem_1 
    DISPLAY=LABEL
  /TABLE D54_crianca_1 [S][SUM] + D54_idoso_1 [S][SUM] + D54_rua_1 [S][SUM] + D54_deficiencia_1 
    [S][SUM] + D54_mulher_1 [S][SUM] + D54_jovem_1 [S][SUM]
  /TITLES
    TITLE='Total de Unidades de Acolhimento Institucional por p�blico - Abrigos e Rep�blicas (p�blicas e conveniadas)'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=D54_crianca_2 D54_idoso_2 D54_rua_2 D54_deficiencia_2 D54_mulher_2 D54_jovem_2 
    DISPLAY=LABEL
  /TABLE D54_crianca_2 [S][SUM] + D54_idoso_2 [S][SUM] + D54_rua_2 [S][SUM] + D54_deficiencia_2 
    [S][SUM] + D54_mulher_2 [S][SUM] + D54_jovem_2 [S][SUM]
  /TITLES
    TITLE='Total de vagas em Unidades de Acolhimento Institucional por p�blico - Abrigos e Rep�blicas (p�blicas e conveniadas)'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=D54_2_total D54_4_total D54_und_total DISPLAY=LABEL
  /TABLE D54_2_total [S][SUM] + D54_4_total [S][SUM] + D54_und_total [S][SUM]
  /TITLES
    TITLE='Total de unidades de Acolhimento Institucional - Abrigos e Rep�blicas (p�blicas e conveniadas)'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=D54_3_total D54_5_total D54_vaga_total DISPLAY=LABEL
  /TABLE D54_3_total [S][SUM] + D54_5_total [S][SUM] + D54_vaga_total [S][SUM]
  /TITLES
    TITLE='Total de vagas em Unidades de Acolhimento Institucional'.


****

FREQUENCIES VARIABLES=q55
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q57
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q58
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q59
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.
 
FREQUENCIES VARIABLES=q61
  /FORMAT=NOTABLE
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q62
  /FORMAT=NOTABLE
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q63
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q64
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q65
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q66
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q67
  /FORMAT=NOTABLE
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q68
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q69 'A��es relativas ao BPC que s�o desenvolvidas pela Assist�ncia Social nos munic�pios', (q69_1 q69_2 q69_3 q69_4 q69_5 q69_6 q69_7 q69_8(1))
  /FREQUENCIES=$q69.

FREQUENCIES VARIABLES=q70
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q71 'Benef�cios Eventuais concedidos pelo �rg�o Gestor municial', (q71_1 q71_2 q71_3 q71_4(1))
  /FREQUENCIES=$q71.

FREQUENCIES VARIABLES=q72
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q73
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q74
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q75_ns
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q75 DISPLAY=LABEL
  /TABLE BY q75 [S][SUM, MINIMUM, MEAN, MAXIMUM, STDDEV].


MULT RESPONSE GROUPS=$q76 'Atividades relacionadas � Vigil�ncia Socioassistencial que s�o realizadas pelos �rg�os Gestores', (q76_1 q76_2 q76_3 q76_4 q76_5 q76_6 q76_7 q76_8 q76_9 q76_10 q76_11 
    q76_12 q76_13 q76_14 q76_15 q76_16 q76_17(1))
  /FREQUENCIES=$q76.

FREQUENCIES VARIABLES=q77
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q78
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q79 'Situa��es de viol�ncia e viola��es de direitos que possuem registro centralizado', (q79_1 q79_2 q79_3 q79_4 q79_5 q79_6 q79_7(1))
  /FREQUENCIES=$q79.

FREQUENCIES VARIABLES=q80
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q81 'Fun��es desempenhadas pelos Sistemas informacionais utilizados para gerenciar a pol�tica de Assist�ncia Social', (q81_1 q81_2 q81_3 q81_4 q81_5 q81_6 q81_7(1))
  /FREQUENCIES=$q81.

FREQUENCIES VARIABLES=q82
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q83
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q84 'As informa��es do diagn�stico socioecon�mico foram utilizadas para qual finalidade', (q84_1 q84_2 q84_3 q84_4 q84_5 q84_6(1))
  /FREQUENCIES=$q84.

FREQUENCIES VARIABLES=q85
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q86
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q88
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q89
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q90
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q92
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q93
  /ORDER=ANALYSIS.






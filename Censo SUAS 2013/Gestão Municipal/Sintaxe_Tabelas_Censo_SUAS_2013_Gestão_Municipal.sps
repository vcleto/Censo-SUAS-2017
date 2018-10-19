FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q2  'Secretaria ou setor ao qual a assist�ncia social est� associada ou submetida'(q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_8(1)) 
  /FREQUENCIES=$q2.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q3a q3b q3c q3d q3e q3f q3g q3h q3i
    DISPLAY=LABEL
  /TABLE q3a [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3b [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q3c [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3d [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3e 
    [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3f [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3g [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q3h [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3i [C][COUNT F40.0, 
    ROWPCT.COUNT PCT40.1]
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
  /TITLES
    TITLE='�reas constitu�das como subdivis�es administrativas (departamentos, coordena��es) na estrutura formal do �rg�o gestor'.


FREQUENCIES VARIABLES=q4
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q5  'Locais onde � realizado o cadastramento e/ou atualiza��o cadastral do munic�pio'(q5_1 q5_2 q5_3 q5_4 q5_5 q5_6 q5_7 q5_8(1)) 
  /FREQUENCIES=$q5.

FREQUENCIES VARIABLES=q6
  /FORMAT=NOTABLE
  /STATISTICS=SUM MEAN MINIMUM MAXIMUM
  /ORDER=ANALYSIS.
execute.


CTABLES
  /VLABELS VARIABLES=q7a_1 q7b_1 q7c_1 q7d_1 q7e_1
    DISPLAY=LABEL
  /TABLE q7a_1 [SUM] + q7b_1 [SUM] + q7c_1 [SUM] + q7d_1 [SUM] + q7e_1 [SUM]
  /TITLES
    TITLE='Quantidade total de trabalhadores dedicados exclusivamente �s atividades de cadastramento, segundo a fun��o de apoio'.

ctables
/VLABELS VARIABLES=q7a_2 q7b_2 q7c_2 q7d_2 q7e_2
    DISPLAY=LABEL
  /TABLE q7a_2 [SUM] + q7b_2 [SUM] + q7c_2 [SUM] + q7d_2 [SUM] + q7e_2 [SUM]
  /TITLES
    TITLE='Quantidade total de trabalhadores de n�vel fundamental dedicados exclusivamente �s atividades de cadastramento, segundo a fun��o de apoio'.

ctables
/VLABELS VARIABLES=q7a_3 q7b_3 q7c_3 q7d_3 q7e_3
    DISPLAY=LABEL
  /TABLE q7a_3 [SUM] + q7b_3 [SUM] + q7c_3 [SUM] + q7d_3 [SUM] + q7e_3 [SUM]
  /TITLES
    TITLE='Quantidade total de trabalhadores de n�vel m�dio completo dedicados exclusivamente �s atividades de cadastramento, segundo a fun��o de apoio'.

ctables
/VLABELS VARIABLES=q7a_4 q7b_4 q7c_4 q7d_4 q7e_4
    DISPLAY=LABEL
  /TABLE q7a_4 [SUM] + q7b_4 [SUM] + q7c_4 [SUM] + q7d_4 [SUM] + q7e_4 [SUM]
  /TITLES
    TITLE='Quantidade total de trabalhadores de n�vel superior completo dedicados exclusivamente �s atividades de cadastramento, segundo a fun��o de apoio'.

ctables
/VLABELS VARIABLES=q7a_5 q7b_5 q7c_5 q7d_5 q7e_5
    DISPLAY=LABEL
  /TABLE q7a_5 [SUM] + q7b_5 [SUM] + q7c_5 [SUM] + q7d_5 [SUM] + q7e_5 [SUM]
  /TITLES
    TITLE='N�o sabe informar a quantidade total de trabalhadores dedicados exclusivamente �s atividades de cadastramento, segundo a fun��o de apoio'.

FREQUENCIES VARIABLES=q8_a
  /FORMAT=NOTABLE
  /STATISTICS=SUM MEAN MINIMUM MAXIMUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q8_b
  /FORMAT=NOTABLE
  /STATISTICS=SUM MEAN MINIMUM MAXIMUM
  /ORDER=ANALYSIS.

FREQUENCIES variables=q9
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q10
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q11
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q12
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q13
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= q14
  /FORMAT=NOTABLE
  /STATISTICS= MINIMUM MAXIMUM MODE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$q15  'Conte�do previsto na Lei Municipal de regulamenta��o do SUAS'(q15_1 q15_2 q15_3 q15_4 q15_5 q15_6 q15_7 q15_8 q15_9 q15_10 q15_11 q15_12 q15_13(1)) 
  /FREQUENCIES=$q15.

FREQUENCIES variables=q16
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q17
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q18
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q19
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q20  'Temas sobre os quais o munic�pio recebeu orienta��es e apoio t�cnico nas referidas visitas'
(q20_1 q20_2 q20_3 q20_4 q20_5 q20_6 q20_7 q20_8 q20_9 q20_10 q20_11 q20_12 q20_13 q20_14 q20_15 q20_16 q20_17 q20_18 q20_19 q20_20(1)) 
  /FREQUENCIES=$q20.

FREQUENCIES variables=q21
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q22
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q23
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q24
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q25
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q26
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q27
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q28
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q29
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q30
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31
  /FORMAT=NOTABLE
  /STATISTICS=SUM MEAN MINIMUM MAXIMUM
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q32  'Utiliza��o do recurso do IGD-SUAS'
(q32_1 q32_2 q32_3 q32_4 q32_5 q32_6 q32_7 q32_8 q32_9 q32_10 q32_11 q32_12 q32_13 q32_14 q32_15 q32_16(1)) 
  /FREQUENCIES=$q32.
execute.

FREQUENCIES variables=q33
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q34
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q35
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q36  'Estimativa de recursos or�ament�rios municipais definida no Plano Plurianual (PPA)'
(q36_1 q36_2 q36_3 q36_4 q36_5 q36_6 q36_7 q36_8 q36_9 q36_10 (1)) 
  /FREQUENCIES=$q36.


FREQUENCIES variables=q37
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q38
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q39
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q40
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

ctables
/VLABELS VARIABLES=q41a_1 q41b_1 q41c_1 q41d_1 q41e_1
    DISPLAY=LABEL
  /TABLE q41a_1 [SUM] + q41b_1 [SUM] + q41c_1 [SUM] + q41d_1 [SUM] + q41e_1 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino fundamental lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q41a_2 q41b_2 q41c_2 q41d_2 q41e_2
    DISPLAY=LABEL
  /TABLE q41a_2 [SUM] + q41b_2 [SUM] + q41c_2 [SUM] + q41d_2 [SUM] + q41e_2 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino m�dio lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q41a_3 q41b_3 q41c_3 q41d_3 q41e_3
    DISPLAY=LABEL
  /TABLE q41a_3 [SUM] + q41b_3 [SUM] + q41c_3 [SUM] + q41d_3 [SUM] + q41e_3 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino superior lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q41a_4 q41b_4 q41c_4 q41d_4 q41e_4
    DISPLAY=LABEL
  /TABLE q41a_4 [SUM] + q41b_4 [SUM] + q41c_4 [SUM] + q41d_4 [SUM] + q41e_4 [SUM]
  /TITLES
    TITLE='Total de trabalhadores lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q42a_1 q42b_1 q42c_1 q42d_1 q42e_1
    DISPLAY=LABEL
  /TABLE q42a_1 [SUM] + q42b_1 [SUM] + q42c_1 [SUM] + q42d_1 [SUM] + q42e_1 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino fundamental lotados nas unidades p�blicas que ofertam servi�os socioassistenciais, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q42a_2 q42b_2 q42c_2 q42d_2 q42e_2
    DISPLAY=LABEL
  /TABLE q42a_2 [SUM] + q42b_2 [SUM] + q42c_2 [SUM] + q42d_2 [SUM] + q42e_2 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino m�dio lotados nas unidades p�blicas que ofertam servi�os socioassistenciais, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q42a_3 q42b_3 q42c_3 q42d_3 q42e_3
    DISPLAY=LABEL
  /TABLE q42a_3 [SUM] + q42b_3 [SUM] + q42c_3 [SUM] + q42d_3 [SUM] + q42e_3 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino superior lotados nas unidades p�blicas que ofertam servi�os socioassistenciais, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q42a_4 q42b_4 q42c_4 q42d_4 q42e_4
    DISPLAY=LABEL
  /TABLE q42a_4 [SUM] + q42b_4 [SUM] + q42c_4 [SUM] + q42d_4 [SUM] + q42e_4 [SUM]
  /TITLES
    TITLE='Total trabalhadores lotados nas unidades p�blicas que ofertam servi�os socioassistenciais, por tipo de v�nculo'.

CTABLES
  /VLABELS VARIABLES=q43a q43b q43c q43d q43e q43f q43g q43h q43i q43j q43k q43l q43m 
    DISPLAY=LABEL
  /TABLE q43a [SUM] + q43b [SUM] + q43c [SUM] + q43d [SUM] + q43e [SUM] + q43f [SUM] + q43g [SUM] + 
    q43h [SUM] + q43i [SUM] + q43j [SUM] + q43k [SUM].
   TITLE = 'Total de trabalhadores de n�vel superior por �rea de forma��o'.
 
 CTABLES
  /VLABELS VARIABLES=q44a_1 q44b_1 DISPLAY=LABEL
  /TABLE q44a_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q44b_1 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q44a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q44b_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE='Quantidade de munic�pios que realizaram concurso p�blico em 2013 para contrata��o de trabalhadores por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q44a_2 q44b_2 DISPLAY=LABEL
  /TABLE q44a_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q44b_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
 /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES  VARIABLES=q44a_2 [1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q44b_2 [1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE='Quantidade de munic�pios que realizaram concurso p�blico em 2013 para contrata��o de trabalhadores por etapa atual do processo e escolaridade'.

CTABLES
  /VLABELS VARIABLES=q45a_1 q45b_1 DISPLAY=LABEL
  /TABLE q45a_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q45b_1 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q45a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q45b_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE='Quantidade de munic�pios que realizaram concurso p�blico em 2012 para contrata��o de trabalhadores por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q45a_2 q45b_2 DISPLAY=LABEL
  /TABLE q45a_2 [S][SUM] + q45b_2 [S][SUM]
  /TITLES
    TITLE='Quantidade de vagas ofertadas pelos concursos para a contrata��o de trabalhadores por escolaridade, realizados pelos munic�pios no ano de 2012'.

CTABLES
  /VLABELS VARIABLES=q45a_4 q45b_4 DISPLAY=LABEL
  /TABLE q45a_4 [SUM] + q45b_4 [SUM]
  /TITLES
    TITLE='Quantidade de trabalhadores que tomaram posse em fun��o dos concursos realizados por escolaridadepelos munic�pios, no ano de 2012'.

FREQUENCIES variables=q46
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q47  'Promo��o de cursos presenciais de capacita��o realizados pelos trabalhadores da Assis�ncia Social do munic�pio, por ente(s) federado(s)'
(q47_1 q47_2 q47_3 (1)) 
  /FREQUENCIES=$q47.

FREQUENCIES VARIABLES=q48
  /FORMAT=NOTABLE
  /STATISTICS=SUM MEAN MINIMUM MAXIMUM
  /ORDER=ANALYSIS.

FREQUENCIES variables=q49
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q50  'Promo��o de cursos � dist�ncia (EAD) de capacita��o realizados pelos trabalhadores da Assis�ncia Social do munic�pio, por ente(s) federado(s)'
(q50_1 q50_2 q50_3 (1)) 
  /FREQUENCIES=$q50.

FREQUENCIES VARIABLES=q51
  /FORMAT=NOTABLE
  /STATISTICS=SUM MEAN MINIMUM MAXIMUM
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q52  '�rea tem�ticas dos cursos de capacita��o realizados pelos trabalhadores da Assist�ncia Social '
(q52_1 q52_2 q52_3 q52_4 q52_5 q52_6 q52_7 q52_8 q52_9 q52_10 q52_11 q52_12 q52_13 q52_14 q52_15 q52_16 q52_17 q52_18 q52_19(1)) 
  /FREQUENCIES=$q52.


CTABLES
  /VLABELS VARIABLES=q53a_1 q53a_2 DISPLAY=LABEL
  /TABLE q53a_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53a_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q53a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53a_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o e Atendimento Integral � Fam�lia - PAIF'.  

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
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para crian�as de 0 a 6 anos'.

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
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para crian�as de 6 a 15 anos'.


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
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para crian�as de 15 a 17 anos'.

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
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para idosos'.

CTABLES
  /VLABELS VARIABLES=q53f_1 q53f_2 q53f_3 q53f_4 q53f_5 DISPLAY=LABEL
  /TABLE q53f_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53f_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53f_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q53f_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q53f_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q53f_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53f_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53f_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53f_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q53f_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o Social B�sica no domic�lio para pessoas com defici�ncia e idosas'.

CTABLES
  /VLABELS VARIABLES=q54a_1 q54a_2 DISPLAY=LABEL
  /TABLE q54a_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54a_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q54a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54a_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o e Atendimento Especializado a Fam�lias e Indiv�duos - PAEFI/CREAS'.  

CTABLES
  /VLABELS VARIABLES=q54b_1 q54b_2 q54b_3 q54b_4 q54b_5 DISPLAY=LABEL
  /TABLE q54b_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54b_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q54b_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54b_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q54b_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q54b_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54b_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54b_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54b_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54b_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o Especializado para pessoas em situa��o de rua'.

CTABLES
  /VLABELS VARIABLES=q54c_1 q54c_2 q54c_3 q54c_4 q54c_5 DISPLAY=LABEL
  /TABLE q54c_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54c_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q54c_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54c_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q54c_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q54c_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54c_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54c_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54c_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54c_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o de Prote��o Especial para pessoas com defici�ncia, idosas e suas fam�lias'.

CTABLES
  /VLABELS VARIABLES=q54d_1 q54d_2 q54d_3 q54d_4 q54d_5 DISPLAY=LABEL
  /TABLE q54d_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54d_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q54d_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54d_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q54d_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q54d_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54d_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54d_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54d_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54d_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o de Prote��o Social a Adolescentes e Cumprimento de Medida Socioeducativa e de Liberdade Assistida (LA) e de Presta��o de Servi�os � Comunidade (PSC)'.

CTABLES
  /VLABELS VARIABLES=q54e_1 q54e_2 q54e_3 q54e_4 q54e_5 DISPLAY=LABEL
  /TABLE q54e_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54e_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q54e_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q54e_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q54e_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q54e_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54e_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54e_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54e_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q54e_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o Especializado em abordagem social'.

CTABLES
  /VLABELS VARIABLES=q55a q55b_1  q55c_1 DISPLAY=LABEL
  /TABLE q55a [S][SUM] + q55b_1 [S][SUM] + q55c_1 [S][SUM]
  /TITLES
    TITLE='Total de Unidades P�blicas da Rede de Prote��o Social B�sica'.

CTABLES
  /VLABELS VARIABLES=q55b_2  q55c_2 DISPLAY=LABEL
  /TABLE q55b_2 [S][SUM] + q55c_2 [S][SUM]
  /TITLES
    TITLE='Total de Unidades N�o Governamentais Conveniadas da Rede de Prote��o Social B�sica'.

CTABLES
  /VLABELS VARIABLES= q55d q55e_1 q55f_1 q55g_1 q55h_1 DISPLAY=LABEL
  /TABLE q55d [S][SUM] + q55e_1 [S][SUM] + q55f_1 [S][SUM] + q55g_1 [S][SUM] + q55h_1[S][SUM]
  /TITLES
    TITLE='Total de Unidades P�blicas da Rede de Prote��o Social Especial de M�dia Complexidade'.

CTABLES
  /VLABELS VARIABLES= q55e_2 q55f_2 q55g_2 q55h_2 DISPLAY=LABEL
  /TABLE q55e_2 [S][SUM] + q55f_2 [S][SUM] + q55g_2 [S][SUM] + q55h_2[S][SUM]
  /TITLES
    TITLE='Total de Unidades N�o Governamentais Conveniadas da Rede de Prote��o Social Especial de M�dia Complexidade'.

CTABLES
  /VLABELS VARIABLES= q55i_1 q55j_1 q55l_1 q55m_1 q55n_1 q55o_1 q55p_1 DISPLAY=LABEL
  /TABLE q55i_1 [S][SUM] + q55j_1 [S][SUM] + q55l_1 [S][SUM] + q55m_1 [S][SUM] + q55n_1 [S][SUM] + q55o_1 [S][SUM] + q55p_1 [S][SUM]
  /TITLES
    TITLE='Total de Unidades P�blicas da Rede de Prote��o Social Especial de Alta Complexidade'.

CTABLES
  /VLABELS VARIABLES= q55i_2 q55j_2 q55l_2 q55m_2 q55n_2 q55o_2 q55p_2 DISPLAY=LABEL
  /TABLE q55i_2 [S][SUM] + q55j_2 [S][SUM] + q55l_2 [S][SUM] + q55m_2 [S][SUM] + q55n_2 [S][SUM] + q55o_2 [S][SUM] + q55p_2 [S][SUM]
  /TITLES
    TITLE='Total de Unidades N�o Governamentais Conveniadas da Rede de Prote��o Social Especial de Alta Complexidade'.

FREQUENCIES variables=q56
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q57  'Atividades de gest�o, monitoramento e supervis�o realizadas pelo �rg�o gestor da Assist�ncia Social nos caso de acolhimento de crian�as e adolescentes'
(q57_1 q57_2 q57_3 q57_4 q57_5  q57_6 q57_7 q57_8 q57_9 q57_10 q57_11 (1)) 
  /FREQUENCIES=$q57.

FREQUENCIES variables=q58
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q59
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q60
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q61
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q62
 /FORMAT=notable
/statistics= sum mean minimum maximum
  /ORDER=ANALYSIS.

FREQUENCIES variables=q63
 /FORMAT=notable
/statistics= sum mean minimum maximum
  /ORDER=ANALYSIS.

FREQUENCIES variables=q64
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q65
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q66
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q67
  /FORMAT=NOTABLE
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES variables=q68
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q69  'A��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
(q69_0 q69_1 q69_2 q69_3 q69_4 q69_5  q69_6 q69_7 q69_8 q69_9 q69_10 q69_11 q69_12 (1)) 
  /FREQUENCIES=$q69.

MULT RESPONSE GROUPS=$q70  'A��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
(q70_1 q70_2 q70_3 q70_4 q70_5 q70_6 q70_7 q70_8 q70_9 q70_10 q70_11 q70_12 q70_13 q70_14 q70_15 q70_16(1)) 
  /FREQUENCIES=$q70.

FREQUENCIES variables=q71
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q72
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q73
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q74
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q75  'A��es relativas ao Benef�cio de Presta��o Continuada (BPC) s�o desenvolvidas pela Assist�ncia Social no munic�pio'
(q75_1 q75_2 q75_3 q75_4 q75_5 q75_6 q75_7 q75_8 (1)) 
  /FREQUENCIES=$q75.

CTABLES
  /VLABELS VARIABLES= q76a_1 q76b_1 q76c_1 q76d_1 DISPLAY=LABEL
  /TABLE q76a_1 [S][SUM] + q76b_1 [S][SUM] + q76c_1 [S][SUM] + q76d_1 [S][SUM]
  /TITLES
    TITLE='Total de munic�pios que concedem o Benef�cio Eventual'.

CTABLES
  /VLABELS VARIABLES= q76a_2 q76b_2 q76c_2 q76d_2 DISPLAY=LABEL
  /TABLE q76a_2 [S][SUM] + q76b_2 [S][SUM] + q76c_2 [S][SUM] + q76d_2 [S][SUM]
  /TITLES
    TITLE='Total de munic�pios que possuem Benef�cio Eventual regulamentado'.

CTABLES
  /VLABELS VARIABLES=q76a_3 q76b_3 q76c_3 q76d_3 DISPLAY=LABEL
  /TABLE q76a_3 [C][COUNT F40.0] + q76b_3 [C][COUNT F40.0] + q76c_3 [C][COUNT F40.0] + q76d_3 
    [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q76a_3 q76b_3 q76c_3 q76d_3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Instrumento que regulamenta o Benef�cio Eventual'.

CTABLES
  /VLABELS VARIABLES=q76a_4 q76b_4 q76c_4 q76d_4 DISPLAY=LABEL
  /TABLE q76a_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +  q76b_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q76c_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q76d_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q76a_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q76b_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q76c_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q76d_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
   /TITLES
    TITLE='Local onde o Benef�cio Eventual � concedido'.

FREQUENCIES variables=q77
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q78
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q79
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q80
  /FORMAT=NOTABLE
  /STATISTICS=SUM MEAN MINIMUM MAXIMUM
  /ORDER=ANALYSIS.

FREQUENCIES variables=q81
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q82
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q83
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q84  'Atividades relacionadas � Vigil�ncia Socioassistencial realizadas pelo �rg�o gestor'
(q84_1 q84_2 q84_3 q84_4 q84_5 q84_6 q84_7 q84_8 q84_9 q84_10 q84_11 q84_12 q84_13 q84_14 q84_15 q84_16 q84_17 q84_18 q84_19 q84_20(1)) 
  /FREQUENCIES=$q84.

FREQUENCIES variables=q85
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q86
  /FORMAT=NOTABLE
  /STATISTICS=SUM MEAN MINIMUM MAXIMUM
  /ORDER=ANALYSIS.

FREQUENCIES variables=q87
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q88
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q89
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES= q90_1 q90_2 q90_3 DISPLAY=LABEL
  /TABLE q90_1 [S][SUM] +q90_2 [S][SUM] + q90_3 [S][SUM]
  /TITLES
    TITLE='Quantidade de profissionais exclusivos da �rea de Vigil�ncia Socioassistencial'.

FREQUENCIES variables=q91
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q92  'Atividades permitidas pelos sistemas de informa��o pr�prio'
(q92_1 q92_2 q92_3 q92_4 q92_5 q92_6 q92_7(1)) 
  /FREQUENCIES=$q92.

FREQUENCIES variables=q93
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q94
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q95  'Utiliza��o das informa��es do diagn�stico socioecon�mico, caso o munic�pio tenha realizado'
(q95_1 q95_2 q95_3 q95_4 q95_5 q95_6(1)) 
  /FREQUENCIES=$q95.

FREQUENCIES variables=q96
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q97
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q98a_1 q98b_1 q98c_1 q98d_1 q98e_1 q98f_1 q98g_1 q98h_1 q98i_1 q98j_1 q98k_1 q98l_1 q98m_1 q98n_1 q98o_1 q98p_1 q98q_1 q98r_1 q98s_1 q98t_1 q98u_1 q98w_1 q98x_1 DISPLAY=LABEL
  /TABLE q98a_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +  q98b_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98c_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + 
q98d_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98e_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98f_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + 
q98g_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98h_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98i_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98j_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98k_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98l_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98m_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98n_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98o_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]+
q98p_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98q_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98r_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98s_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98t_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98u_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98v_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98w_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98x_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98y_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
/CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q98a_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98b_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98c_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q98d_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98e_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98f_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98g_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q98h_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/CATEGORIES VARIABLES=q98i_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98j_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98k_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q98l_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98m_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98n_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98o_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q98p_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/CATEGORIES VARIABLES=q98q_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98r_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98s_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q98t_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98u_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98v_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q98w_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q98x_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q98y_1 [0,1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
   /TITLES
    TITLE='A��es desenvolvidas pela gest�o municipal'.

CTABLES
 /VLABELS VARIABLES= q98a_2 q98b_2 q98c_2 q98d_2 q98e_2 q98f_2 q98g_2 q98h_2 q98i_2 q98j_2 q98k_2 q98l_2 q98m_2 q98n_2 q98o_2 q98p_2 q98q_2 q98r_2 q98s_2 q98t_2 q98u_2 q98w_2 q98x_2 DISPLAY=LABEL
 /TABLE q98a_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +  q98b_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98c_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + 
q98d_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98e_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98f_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + 
q98g_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98h_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98i_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98j_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98k_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98l_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98m_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98n_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98o_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]+
q98p_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98q_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98r_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98s_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98t_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98u_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +
q98v_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98w_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q98x_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
/CLABELS ROWLABELS=OPPOSITE
 /CATEGORIES VARIABLES=q98a_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98b_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98c_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES= q98d_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98e_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98f_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98g_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES= q98h_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/CATEGORIES VARIABLES=q98i_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98j_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98k_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES= q98l_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98m_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98n_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98o_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES= q98p_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/CATEGORIES VARIABLES=q98q_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98r_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98s_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES= q98t_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98u_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98v_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q98w_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES= q98x_2 [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 98, 99, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
  TITLE='Parcerias nas a��es desenvolvidas pela gest�o municipal'.

FREQUENCIES variables=q99
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q100a
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q101a
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q103
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q104
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


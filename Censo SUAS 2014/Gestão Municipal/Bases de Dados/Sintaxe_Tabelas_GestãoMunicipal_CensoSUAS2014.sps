********BLOCO 2*******.

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q2  'Secretaria ou setor ao qual a assist�ncia social est� associada ou submetida'(q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_99(1)) 
  /FREQUENCIES=$q2.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q3_1 q3_2 q3_3 q3_4 q3_5 q3_6 q3_7 q3_8 q3_9
    DISPLAY=LABEL
  /TABLE q3_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] 
    + q3_4 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_6 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] 
    + q3_7 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_8 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_9 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q3_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_2 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_3 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_4 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_5 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_6 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_7 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_8 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_9 [0, 1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='�reas constitu�das como subdivis�es administrativas (departamentos, coordena��es) na estrutura do �rg�o gestor'.


FREQUENCIES VARIABLES=q4
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q5  'Locais onde � realizado o cadastramento e/ou atualiza��o cadastral do munic�pio'(q5_1 q5_2 q5_3 q5_4 q5_5 q5_6 q5_7 q5_99(1)) 
  /FREQUENCIES=$q5.

FREQUENCIES VARIABLES=q6
  /ORDER=ANALYSIS.
execute.

FREQUENCIES VARIABLES=q7
  /ORDER=ANALYSIS.
execute.

FREQUENCIES VARIABLES=q8
  /ORDER=ANALYSIS.
execute.

FREQUENCIES VARIABLES=q9
  /ORDER=ANALYSIS.
execute.

FREQUENCIES VARIABLES=q10
  /ORDER=ANALYSIS.
execute.

MULT RESPONSE GROUPS=$q11  'Equipes que utilizam a embarca��o do munic�pio'(q11_1 q11_2 q11_3 q11_4 q11_99(1)) 
  /FREQUENCIES=$q11.

FREQUENCIES VARIABLES=q12
  /ORDER=ANALYSIS.
execute.

MULT RESPONSE GROUPS=$q13  'A lancha/embarca��o no munic�pio � utilizada para atender povos e comunidades tradicionais e /ou grupos espec�ficos' (q13_1 q13_2 q13_3 q13_4 q13_5  q13_6  q13_99 (1)) 
  /FREQUENCIES=$q13.

FREQUENCIES VARIABLES=D15
  /ORDER=ANALYSIS.
execute.

FREQUENCIES VARIABLES=D16
  /ORDER=ANALYSIS.
execute.

********BLOCO 3*******.

FREQUENCIES VARIABLES=q14
  /ORDER=ANALYSIS.
execute.

MULT RESPONSE GROUPS=$q17  'Conte�do previsto na Lei Municipal de regulamenta��o do SUAS'(q17_1 q17_2 q17_3 q17_4 q17_5 q17_6 q17_7 q17_8 q17_9 q17_10 q17_11 q17_12 q17_13  q17_14 q17_15  q17_16  q17_17  q17_18  q17_99(1)) 
  /FREQUENCIES=$q17.

FREQUENCIES variables=q18
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q19
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=D20
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.


FREQUENCIES variables=q21
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.


FREQUENCIES variables=q22
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q23
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q24  'Temas sobre os quais o munic�pio recebeu orienta��es e apoio t�cnico nas referidas visitas'
(q24_1 q24_2 q24_3 q24_4 q24_5 q24_6 q24_7 q24_8 q24_9 q24_10 q24_11 q24_12 q24_13 q24_14 q24_15 q24_16 q24_17 q24_18 q24_19 q24_20  q24_21  q24_99(1)) 
  /FREQUENCIES=$q24.

FREQUENCIES variables=q25
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.


********BLOCO 4*******.


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

ctables
/VLABELS VARIABLES=q30_1 q30_2 q30_3
    DISPLAY=LABEL
  /TABLE q30_1 [SUM] + q30_2 [SUM] + q30_3 [SUM]
  /TITLES
    TITLE='Quantidade de profissionais exclusivos que trabalham no Fundo Municipal de Assist�ncia Social'.

MULT RESPONSE GROUPS=$q31  'O contador respons�vel pelas contas do Fundo Municipal de Assist�ncia Social est�:'
(q31_0 q31_1 q31_2 q31_3 q31_4 q31_5 q31_99(1)) 
  /FREQUENCIES=$q31.
execute.

FREQUENCIES variables=q32
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q33
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q34
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q35  'Utiliza��o do recurso do IGD-SUAS'
(q35_0  q35_1 q35_2 q35_3 q35_4 q35_5 q35_6 q35_7 q35_8 q35_9 q35_10 q35_11 q35_12 q35_13 q35_14 q35_15 q35_99(1)) 
  /FREQUENCIES=$q35.
execute.

FREQUENCIES variables=q36
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q37
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q38  'Principais dificuldades enfrentadas em rela��o � gest�o dos recusros do FMAS'
(q38_0  q38_1 q38_2 q38_3 q38_4 q38_5 q38_6 q38_99(1)) 
  /FREQUENCIES=$q38.

FREQUENCIES variables=q39
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q40
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=D41
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

********BLOCO 5*******.

FREQUENCIES variables=q42
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q43
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q44
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q45
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q46
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

ctables
/VLABELS VARIABLES=q47_1_1 q47_2_1 q47_3_1 q47_4_1 q47_5_1
    DISPLAY=LABEL
  /TABLE q47_1_1 [SUM] + q47_2_1 [SUM] + q47_3_1 [SUM] + q47_4_1 [SUM] + q47_5_1 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino fundamental lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q47_1_2 q47_2_2 q47_3_2 q47_4_2 q47_5_2
    DISPLAY=LABEL
  /TABLE q47_1_2 [SUM] + q47_2_2 [SUM] + q47_3_2 [SUM] + q47_4_2 [SUM] + q47_5_2 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino m�dio lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social, por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q47_1_3 q47_2_3 q47_3_3 q47_4_3 q47_5_3
    DISPLAY=LABEL
  /TABLE q47_1_3 [SUM] + q47_2_3 [SUM] + q47_3_3 [SUM] + q47_4_3 [SUM] + q47_5_3 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino superior lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social, por tipo de v�nculo'.


ctables
/VLABELS VARIABLES=q47_1_4 q47_2_4 q47_3_4 q47_4_4 q47_5_4
    DISPLAY=LABEL
  /TABLE q47_1_4 [SUM] + q47_2_4 [SUM] + q47_3_4 [SUM] + q47_4_4 [SUM] + q47_5_4 [SUM]
  /TITLES
    TITLE='Total de trabalhadores lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social, por tipo de v�nculo'.


ctables
/VLABELS VARIABLES=q48_1_1 q48_2_1 q48_3_1 q48_4_1 q48_5_1
    DISPLAY=LABEL
  /TABLE q48_1_1 [SUM] + q48_2_1 [SUM] + q48_3_1 [SUM] + q48_4_1 [SUM] + q48_5_1 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino fundamental (lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social e nas unidades p�blicas), por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q48_1_2 q48_2_2 q48_3_2 q48_4_2 q48_5_2
    DISPLAY=LABEL
  /TABLE q48_1_2 [SUM] + q48_2_2 [SUM] + q48_3_2 [SUM] + q48_4_2 [SUM] + q48_5_2 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino m�dio (lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social e nas unidades p�blicas), por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q48_1_3 q48_2_3 q48_3_3 q48_4_3 q48_5_3
    DISPLAY=LABEL
  /TABLE q48_1_3 [SUM] + q48_2_3 [SUM] + q48_3_3 [SUM] + q48_4_3 [SUM] + q48_5_3 [SUM]
  /TITLES
    TITLE='Trabalhadores do ensino superior (lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social e nas unidades p�blicas), por tipo de v�nculo'.

ctables
/VLABELS VARIABLES=q48_1_4 q48_2_4 q48_3_4 q48_4_4 q48_5_4
    DISPLAY=LABEL
  /TABLE q48_1_4 [SUM] + q48_2_4 [SUM] + q48_3_4 [SUM] + q48_4_4 [SUM] + q48_5_4 [SUM]
  /TITLES
    TITLE='Total de trabalhadores (lotados na sede do �rg�o Gestor Municipal da Assist�ncia Social e nas unidades p�blicas), por tipo de v�nculo'.

CTABLES
  /VLABELS VARIABLES=q49_a q49_b q49_c q49_d q49_e q49_f q49_g q49_h q49_i q49_j q49_k q49_l q49_m 
    DISPLAY=LABEL
  /TABLE q49_a [SUM] + q49_b [SUM] +q49_c [SUM] + q49_d [SUM] + q49_e [SUM] + q49_f [SUM] + q49_g [SUM] + 
   q49_h [SUM] + q49_i [SUM] + q49_j [SUM] + q49_k [SUM]  + q49_l [SUM]  + q49_m [SUM].
   TITLE = 'Total de trabalhadores de n�vel superior por �rea de forma��o'.

CTABLES
  /VLABELS VARIABLES=q50_1 q50_2 q50_3 q50_4 q50_5 
    DISPLAY=LABEL
  /TABLE q50_1 [SUM] + q50_2 [SUM] +q50_3 [SUM] + q50_4 [SUM] + q50_5  [SUM].
   TITLE = 'Total de profissionais de acordo com a principal �rea de atua��o'.

 
 CTABLES
  /VLABELS VARIABLES=q51_1_1 q51_2_1 DISPLAY=LABEL
  /TABLE q51_1_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q51_2_1 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q51_1_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q51_2_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE='Quantidade de munic�pios que realizaram concurso p�blico em 2014 para contrata��o de trabalhadores, por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q51_1_2 q51_2_2 DISPLAY=LABEL
  /TABLE q51_1_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q51_2_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
 /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES  VARIABLES=q51_1_2 [1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q51_2_2 [1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE='Quantidade de munic�pios que realizaram concurso p�blico em 2014 para contrata��o de trabalhadores, por etapa atual do processo e escolaridade'.


CTABLES
  /VLABELS VARIABLES=q52_1_1 q52_2_1 DISPLAY=LABEL
  /TABLE q52_1_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q52_2_1 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q52_1_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q52_2_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE='Quantidade de munic�pios que realizaram concurso p�blico em 2013 para contrata��o de trabalhadores, por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q52_1_2 q52_2_2 DISPLAY=LABEL
  /TABLE q52_1_2 [S][SUM] + q52_2_2 [S][SUM]
  /TITLES
    TITLE='Quantidade de vagas ofertadas pelos concursos para a contrata��o de trabalhadores por escolaridade, realizados pelos munic�pios no ano de 2013'.

CTABLES
  /VLABELS VARIABLES=q52_1_4 q52_2_4 DISPLAY=LABEL
  /TABLE q52_1_4 [SUM] + q52_2_4 [SUM]
  /TITLES
    TITLE='Quantidade de trabalhadores que tomaram posse em fun��o dos concursos realizados por escolaridade, realizados pelos munic�pios no ano de 2013'.

FREQUENCIES variables=q53
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q54  'Quais entes federados promoveram os cursos presenciais de capacita��o realizados pelos trabalhadores da Assist�ncia Social'
(q54_1 q54_2 q54_3 (1)) 
  /FREQUENCIES=$q54.

FREQUENCIES variables=D55
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q56
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q57  'Quais entes federados promoveram os cursos � dist�ncia EAD de capacita��o para os trabalhadores da Assist�ncia Social'
(q57_1 q57_2 q57_3 (1)) 
  /FREQUENCIES=$q57.

FREQUENCIES variables=D58
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q59  '�rea tem�ticas dos cursos de capacita��o realizados pelos trabalhadores da Assist�ncia Social '
(q59_1 q59_2 q59_3 q59_4 q59_5 q59_6 q59_7 q59_8 q59_9 q59_10 q59_11 q59_12 q59_13 q59_14 q59_15 q59_16 q59_17 q59_18 q59_19  q59_99(1)) 
  /FREQUENCIES=$q59.


********BLOCO 6*******.


CTABLES
  /VLABELS VARIABLES=q60_1_1 q60_1_0 DISPLAY=LABEL
  /TABLE q60_1_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_1_0 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q60_1_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_1_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o e Atendimento Integral � Fam�lia - PAIF'.  

CTABLES
  /VLABELS VARIABLES=q60_2_1 q60_2_2 q60_2_3 q60_2_4 q60_2_0 DISPLAY=LABEL
  /TABLE q60_2_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_2_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_2_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_2_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_2_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q60_2_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_2_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_2_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_2_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_2_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para crian�as de 0 a 6 anos'.

CTABLES
  /VLABELS VARIABLES=q60_3_1 q60_3_2 q60_3_3 q60_3_4 q60_3_0 DISPLAY=LABEL
  /TABLE q60_3_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_3_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_3_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_3_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_3_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q60_3_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_3_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_3_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_3_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_3_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para crian�as de 6 a 15 anos'.


CTABLES
  /VLABELS VARIABLES=q60_4_1 q60_4_2 q60_4_3 q60_4_4 q60_4_0 DISPLAY=LABEL
  /TABLE q60_4_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_4_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_4_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_4_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_4_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q60_4_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_4_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_4_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_4_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_4_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para crian�as de 15 a 17 anos'.

CTABLES
  /VLABELS VARIABLES=q60_5_1 q60_5_2 q60_5_3 q60_5_4 q60_5_0 DISPLAY=LABEL
  /TABLE q60_5_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_5_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_5_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_5_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_5_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q60_5_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_5_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_5_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_5_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_5_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Conviv�ncia e Fortalecimento de v�nculos para idosos'.

CTABLES
  /VLABELS VARIABLES=q60_6_1 q60_6_2 q60_6_3 q60_6_4 q60_6_0 DISPLAY=LABEL
  /TABLE q60_6_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_6_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_6_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q60_6_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q60_6_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q60_6_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_6_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_6_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_6_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q60_6_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o Social B�sica no domic�lio para pessoas com defici�ncia e idosas'.

CTABLES
  /VLABELS VARIABLES=q61_1 q61_2_1  q61_3_1 DISPLAY=LABEL
  /TABLE q61_1 [S][SUM] + q61_2_1 [S][SUM] + q61_3_1 [S][SUM]
  /TITLES
    TITLE='Total de Unidades P�blicas da Rede de Prote��o Social B�sica'.

CTABLES
  /VLABELS VARIABLES=q61_2_2  q61_3_2 DISPLAY=LABEL
  /TABLE q61_2_2 [S][SUM] + q61_3_2 [S][SUM]
  /TITLES
    TITLE='Total de Unidades N�o Governamentais Conveniadas da Rede de Prote��o Social B�sica'.

FREQUENCIES variables=q62
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

********BLOCO 7********.

FREQUENCIES variables=q63
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q64_1_1 q64_1_0 DISPLAY=LABEL
  /TABLE q64_1_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_1_0 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q64_1_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_1_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o de Prote��o e Atendimento Especializado a Fam�lias e Indiv�duos - PAEFI/CREAS'.  

CTABLES
  /VLABELS VARIABLES=q64_2_1 q64_2_2 q64_2_3 q64_2_4 q64_2_0 DISPLAY=LABEL
  /TABLE q64_2_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_2_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q64_2_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_2_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q64_2_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q64_2_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_2_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_2_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_2_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_2_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Unidade em que � ofertado o Servi�o Especializado para pessoas em situa��o de rua'.

CTABLES
  /VLABELS VARIABLES=q64_3_1 q64_3_2 q64_3_3 q64_3_4 q64_3_0 DISPLAY=LABEL
  /TABLE q64_3_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_3_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q64_3_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_3_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q64_3_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q64_3_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_3_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_3_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_3_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_3_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o de Prote��o Especial para pessoas com defici�ncia, idosas e suas fam�lias'.

CTABLES
  /VLABELS VARIABLES=q64_4_1 q64_4_2 q64_4_3 q64_4_4 q64_4_0 DISPLAY=LABEL
  /TABLE q64_4_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_4_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q64_4_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_4_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q64_4_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q64_4_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_4_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_4_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_4_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_4_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o de Prote��o Social a Adolescentes e Cumprimento de Medida Socioeducativa e de Liberdade Assistida (LA) e de Presta��o de Servi�os � Comunidade (PSC)'.

CTABLES
  /VLABELS VARIABLES=q64_5_1 q64_5_2 q64_5_3 q64_5_4 q64_5_0 DISPLAY=LABEL
  /TABLE q64_5_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_5_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q64_5_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q64_5_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q64_5_0 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q64_5_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_5_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_5_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_5_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64_5_0 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Servi�o Especializado em abordagem social'.

CTABLES
  /VLABELS VARIABLES= q65_1_1 q65_2_1 q65_3_1 q65_4_1 q65_5_1 DISPLAY=LABEL
  /TABLE q65_1_1 [S][SUM] + q65_2_1 [S][SUM] + q65_3_1 [S][SUM] + q65_4_1 [S][SUM] + q65_5_1[S][SUM]
  /TITLES
    TITLE='Total de Unidades P�blicas da Rede de Prote��o Social Especial de M�dia Complexidade'.

CTABLES
  /VLABELS VARIABLES= q65_2_2 q65_3_2 q65_4_2 q65_5_2 DISPLAY=LABEL
  /TABLE q65_2_2 [S][SUM] + q65_3_2 [S][SUM] + q65_4_2 [S][SUM] + q65_5_2[S][SUM]
  /TITLES
    TITLE='Total de Unidades N�o Governamentais Conveniadas da Rede de Prote��o Social Especial de M�dia Complexidade'.

MULT RESPONSE GROUPS=$q66  'Como o munic�pio atende quest�es de viola��es de direitos, caso n�o possua CREAS'
(q66_1 q66_2 q66_3 q66_4 q66_99 (1)) 
  /FREQUENCIES=$q66.

FREQUENCIES variables=q67
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q68  'A��es realizadas pela pol�tica de Assist�ncia Social no munic�pio para enfrentamento do Trabalho Infantil'
(q68_0  q68_1 q68_2 q68_3 q68_4 q68_5 q68_6 q68_7 q68_8 q68_9 q68_10 q68_11 q68_12 (1)) 
  /FREQUENCIES=$q68.

*******BLOCO 8********.

FREQUENCIES variables=q69
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES= q70_1_1 q70_2_1 q70_3_1 q70_4_1 q70_5_1 q70_6_1 q70_7_1 DISPLAY=LABEL
  /TABLE q70_1_1 [S][SUM] + q70_2_1 [S][SUM] + q70_3_1 [S][SUM] + q70_4_1 [S][SUM] + q70_5_1 [S][SUM] + q70_6_1 [S][SUM] + q70_7_1 [S][SUM]
  /TITLES
    TITLE='Total de Unidades P�blicas da Rede de Prote��o Social Especial de Alta Complexidade'.

CTABLES
  /VLABELS VARIABLES= q70_1_2 q70_2_2 q70_3_2 q70_4_2 q70_5_2 q70_6_2 q70_7_2 DISPLAY=LABEL
  /TABLE q70_1_2 [S][SUM] + q70_2_2 [S][SUM] + q70_3_2 [S][SUM] + q70_4_2 [S][SUM] + q70_5_2 [S][SUM] + q70_6_2 [S][SUM] + q70_7_2 [S][SUM]
  /TITLES
    TITLE='Total de Unidades N�o Governamentais Conveniadas da Rede de Prote��o Social Especial de Alta Complexidade'.


FREQUENCIES variables=q71
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q72
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=D73
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$q74  'Este programa/servi�o possui inscri��o:'
(q74_1 q74_2 (1)) 
  /FREQUENCIES=$q74.

FREQUENCIES variables=q75_1
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q76
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=D77
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=D78
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q79
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q80  'Atividades de gest�o, monitoramento e supervis�o realizadas pelo �rg�o gsetor da Assist�ncias Social nos acolhimentos de crian�a e adolescentes'
(q80_1 q80_2  q80_3  q80_4  q80_5  q80_6  q80_7  q80_8  q80_9  q80_0(1)) 
  /FREQUENCIES=$q80.

FREQUENCIES variables=q81
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q82
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q83
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q84  'Situa��es de emerg�ncia ou calamidades p�blicas enfrentadas em 2013 e/ou no primeiro semestre de 2014'
(q84_1 q84_2  q84_3  q84_4  q84_5  q84_6  q84_7  q84_8  q84_99(1)) 
  /FREQUENCIES=$q84.

CTABLES
  /VLABELS VARIABLES=q85_1 q85_2 DISPLAY=LABEL
  /TABLE q85_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q85_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q85_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q85_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE='O �rg�o gestor da Assist�ncia Social do munic�pio participou da elabora��o do:'.

FREQUENCIES variables=q86
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=D87
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q88  'Tipos de alojamentos provis�rios ofertados pelo munic�pio para v�timas de desastres e calamidades nos �ltimos 12 meses'
(q88_1 q88_2  q88_3  q88_4  q88_5  q88_99(1)) 
  /FREQUENCIES=$q88.

FREQUENCIES variables=q89
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

*******BLOCO 9*******.

FREQUENCIES variables=q90
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q91  'A��es relativas ao Benef�cio de Presta��o Continuada (BPC) desenvolvidas pela Assist�ncia Social'
(q91_1 q91_2  q91_3  q91_4  q91_5  q91_6  q91_7  q91_8(1)) 
  /FREQUENCIES=$q91.

CTABLES
  /VLABELS VARIABLES= q92_1_1  q92_2_1  q92_3_1  q92_4_1  DISPLAY=LABEL
  /TABLE q92_1_1 [S][SUM] + q92_2_1 [S][SUM] + q92_3_1 [S][SUM] + q92_4_1 [S][SUM]
  /TITLES
    TITLE='Total de munic�pios que concedem o Benef�cio Eventual'.

CTABLES
  /VLABELS VARIABLES= q92_1_2  q92_2_2  q92_3_2  q92_4_2 DISPLAY=LABEL
  /TABLE q92_1_2 [S][SUM] + q92_2_2 [S][SUM] + q92_3_2 [S][SUM] + q92_4_2 [S][SUM]
  /TITLES
    TITLE='Total de munic�pios que possuem Benef�cio Eventual regulamentado'.

CTABLES
  /VLABELS VARIABLES=q92_1_3  q92_2_3  q92_3_3  q92_4_3 DISPLAY=LABEL
  /TABLE q92_1_3 [C][COUNT F40.0] + q92_2_3 [C][COUNT F40.0] + q92_3_3 [C][COUNT F40.0] + q92_4_3 
    [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q92_1_3 q92_2_3 q92_3_3 q92_4_3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Tipos de Instrumentos que regulamentam os Benef�cios Eventuais'.


CTABLES
  /VLABELS VARIABLES=q92_1_5  q92_2_5  q92_3_5  q92_4_5 DISPLAY=LABEL
  /TABLE q92_1_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] +  q92_2_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q92_3_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q92_4_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q92_1_5 [1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q92_2_5 [1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q92_3_5 [1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= q92_4_5 [1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
   /TITLES
    TITLE='Local onde os Benef�cios Eventuais s�o concedidos'.

FREQUENCIES variables=q93
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES variables=q94
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q95
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=D96
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

*******BLOCO 10*******.

FREQUENCIES variables=q97
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q98
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q99
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q100  'Quais atividades relacionadas � Vigil�ncia Socioassistencial s�o realizadas pelo �rg�o Gestor:'
(q100_1 q100_2  q100_3  q100_4  q100_5  q100_6  q100_7  q100_8 q100_9  q100_10  q100_11  q100_12  q100_13  q100_14  q100_15  q100_16  q100_17  q100_18  q100_19  q100_0(1)) 
  /FREQUENCIES=$q100.

FREQUENCIES variables=q101
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=D102
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q103
 /FORMAT=AVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q104
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q105
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

ctables
/VLABELS VARIABLES=q106_1 q106_2 q106_3
    DISPLAY=LABEL
  /TABLE q106_1 [SUM] + q106_2 [SUM] + q106_3 [SUM]
  /TITLES
    TITLE='Quantidade de profissionais exclusivos que trabalham na �rea de Vigil�ncia Socioassistencial'.

FREQUENCIES variables=q107
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q108  'Os sistemas utilizados permitem:'
(q108_1 q108_2  q108_3  q108_4  q108_5  q108_6  q108_99(1)) 
  /FREQUENCIES=$q108.

*******BLOCO 11*******.

FREQUENCIES variables=q109
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES variables=q110
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q111  'Quais oportunidades do mundo do trabalho o munic�pio encaminha, de forma rotineira, os usu�rios da assist�ncia social?'
(q111_1 q111_2  q111_3  q111_4  q111_5  q111_6  q111_7  q111_99 (1)) 
  /FREQUENCIES=$q111.

FREQUENCIES variables=q112
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$q113  'Quem � respons�vel pela execu��o do programa ACESSUAS Trabalho?'
(q113_1 q113_2  q113_3  q113_4  q113_99 (1)) 
  /FREQUENCIES=$q113.

FREQUENCIES variables=q114
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES= q115_1 q115_2 q115_3 DISPLAY=LABEL
  /TABLE q115_1 [S][SUM] + q115_2 [S][SUM] + q115_3 [S][SUM]
  /TITLES
    TITLE='Total de profissionais exclusivos do Programa ACESSUAS Trabalho'.

MULT RESPONSE GROUPS=$q116  'Atividades executadas pela equipe do ACESSUAS Trabalho no seu munic�pio'
(q116_1 q116_2  q116_3  q116_4  q116_5  q116_6  q116_7  q116_8  q116_9  q116_99 (1)) 
  /FREQUENCIES=$q116.

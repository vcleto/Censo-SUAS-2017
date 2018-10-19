******************************************************
*** Tabelas Conselhos - Censo SUAS 2013 ***
******************************************************

FREQUENCIES VARIABLES=D1
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D3
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q4
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D5
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q6a_1 q6a_2 q6a_3 q6a_0 DISPLAY=LABEL
  /TABLE BY q6a_1 [COUNT F40.0] + q6a_2 [COUNT F40.0] + q6a_3 [COUNT F40.0] + q6a_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6a_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6a_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6a_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6a_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6b_1 q6b_2 q6b_3 q6b_0 DISPLAY=LABEL
  /TABLE BY q6b_1 [COUNT F40.0] + q6b_2 [COUNT F40.0] + q6b_3 [COUNT F40.0] + q6b_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6b_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6b_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6b_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6b_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6c_1 q6c_2 q6c_3 q6c_0 DISPLAY=LABEL
  /TABLE BY q6c_1 [COUNT F40.0] + q6c_2 [COUNT F40.0] + q6c_3 [COUNT F40.0] + q6c_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6c_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6c_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6c_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6c_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6d_1 q6d_2 q6d_3 q6d_0 DISPLAY=LABEL
  /TABLE BY q6d_1 [COUNT F40.0] + q6d_2 [COUNT F40.0] + q6d_3 [COUNT F40.0] + q6d_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6d_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6d_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6d_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6d_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6e_1 q6e_2 q6e_3 q6e_0 DISPLAY=LABEL
  /TABLE BY q6e_1 [COUNT F40.0] + q6e_2 [COUNT F40.0] + q6e_3 [COUNT F40.0] + q6e_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6e_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6e_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6e_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6e_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6f_1 q6f_2 q6f_3 q6f_0 DISPLAY=LABEL
  /TABLE BY q6f_1 [COUNT F40.0] + q6f_2 [COUNT F40.0] + q6f_3 [COUNT F40.0] + q6f_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6f_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6f_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6f_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6f_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6g_1 q6g_2 q6g_3 q6g_0 DISPLAY=LABEL
  /TABLE BY q6g_1 [COUNT F40.0] + q6g_2 [COUNT F40.0] + q6g_3 [COUNT F40.0] + q6g_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6g_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6g_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6g_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6g_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6h_1 q6h_2 q6h_3 q6h_0 DISPLAY=LABEL
  /TABLE BY q6h_1 [COUNT F40.0] + q6h_2 [COUNT F40.0] + q6h_3 [COUNT F40.0] + q6h_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6h_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6h_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6h_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6h_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6i_1 q6i_2 q6i_3 q6i_0 DISPLAY=LABEL
  /TABLE BY q6i_1 [COUNT F40.0] + q6i_2 [COUNT F40.0] + q6i_3 [COUNT F40.0] + q6i_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6i_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6i_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6i_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6i_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6j_1 q6j_2 q6j_3 q6j_0 DISPLAY=LABEL
  /TABLE BY q6j_1 [COUNT F40.0] + q6j_2 [COUNT F40.0] + q6j_3 [COUNT F40.0] + q6j_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6j_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6j_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6j_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6j_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6k_1 q6k_2 q6k_3 q6k_0 DISPLAY=LABEL
  /TABLE BY q6k_1 [COUNT F40.0] + q6k_2 [COUNT F40.0] + q6k_3 [COUNT F40.0] + q6k_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6k_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6k_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6k_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6k_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6l_1 q6l_2 q6l_3 q6l_0 DISPLAY=LABEL
  /TABLE BY q6l_1 [COUNT F40.0] + q6l_2 [COUNT F40.0] + q6l_3 [COUNT F40.0] + q6l_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6l_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6l_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6l_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6l_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6m_1 q6m_2 q6m_3 q6m_0 DISPLAY=LABEL
  /TABLE BY q6m_1 [COUNT F40.0] + q6m_2 [COUNT F40.0] + q6m_3 [COUNT F40.0] + q6m_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6m_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6m_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6m_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6m_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6n_1 q6n_2 q6n_3 q6n_0 DISPLAY=LABEL
  /TABLE BY q6n_1 [COUNT F40.0] + q6n_2 [COUNT F40.0] + q6n_3 [COUNT F40.0] + q6n_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6n_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6n_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6n_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6n_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6o_1 q6o_2 q6o_3 q6o_0 DISPLAY=LABEL
  /TABLE BY q6o_1 [COUNT F40.0] + q6o_2 [COUNT F40.0] + q6o_3 [COUNT F40.0] + q6o_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6o_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6o_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6o_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6o_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6p_1 q6p_2 q6p_3 q6p_0 DISPLAY=LABEL
  /TABLE BY q6p_1 [COUNT F40.0] + q6p_2 [COUNT F40.0] + q6p_3 [COUNT F40.0] + q6p_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6p_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6p_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6p_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6p_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6q_1 q6q_2 q6q_3 q6q_0 DISPLAY=LABEL
  /TABLE BY q6q_1 [COUNT F40.0] + q6q_2 [COUNT F40.0] + q6q_3 [COUNT F40.0] + q6q_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6q_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6q_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6q_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6q_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6r_1 q6r_2 q6r_3 q6r_0 DISPLAY=LABEL
  /TABLE BY q6r_1 [COUNT F40.0] + q6r_2 [COUNT F40.0] + q6r_3 [COUNT F40.0] + q6r_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6r_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6r_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6r_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6r_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6s_1 q6s_2 q6s_3 q6s_0 DISPLAY=LABEL
  /TABLE BY q6s_1 [COUNT F40.0] + q6s_2 [COUNT F40.0] + q6s_3 [COUNT F40.0] + q6s_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6s_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6s_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6s_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6s_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

CTABLES
  /VLABELS VARIABLES=q6t_1 q6t_2 q6t_3 q6t_0 DISPLAY=LABEL
  /TABLE BY q6t_1 [COUNT F40.0] + q6t_2 [COUNT F40.0] + q6t_3 [COUNT F40.0] + q6t_0 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=q6t_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6t_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6t_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q6t_0 [1] EMPTY=INCLUDE
 /TITLES
    TITLE='Quais conte�dos est�o previstos nas normativas do Conselho e em que instrumento est� normatizado?'.

FREQUENCIES VARIABLES=q7
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q8
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q9
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q10
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_11 '' (q11_1 q11_2 q11_3 q11_4 q11_5 q11_6 q11_7 q11_8 q11_9 q11_10 q11_11 q11_99 (1))
/FREQUENCIES=$mr_11.

CTABLES
  /VLABELS VARIABLES=q12a q12b DISPLAY=LABEL
  /TABLE q12a [S][SUM] + q12b [S][SUM]
  /TITLES
    TITLE='Salas de uso exclusivo do Conselho'.

CTABLES
  /VLABELS VARIABLES=q12c q12d DISPLAY=LABEL
  /TABLE q12a [S][SUM] + q12d [S][SUM]
  /TITLES
    TITLE='Salas de uso compartilhado do Conselho (quando existir)'.

FREQUENCIES VARIABLES=D12_exclusivas_categoria
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D12_compartilhadas_categoria
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D12_total_salas_categoria
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q12e
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q12f
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q13a q13b q13c q13d DISPLAY=LABEL
  /TABLE q13a [COUNT F40.0] + q13b [COUNT F40.0] + q13c [COUNT F40.0] + q13d [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q13a q13b q13c q13d ORDER=A KEY=VALUE EMPTY=INCLUDE
 /TITLES
    TITLE='Assinale as condi��es de acessibilidade para pessoas com defici�ncia e pessoas idosas que o Conselho possui:'.

MULT RESPONSE GROUPS=$mr_14 '' (q14_1 q14_2 q14_3 q14_4 q14_5 q14_6 q14_7 q14_8 q14_9 q14_10 q14_11 q14_12 q14_14 q14_15 q14_16 (1))
/FREQUENCIES=$mr_14.

CTABLES
  /VLABELS VARIABLES=q15a q15b DISPLAY=LABEL
  /TABLE q15a [S][SUM] + q15b [S][SUM]
  /TITLES
    TITLE='Quantidade de computadores de uso exclusivo do Conselho'.

CTABLES
  /VLABELS VARIABLES=q15c q15d DISPLAY=LABEL
  /TABLE q15c [S][SUM] + q15d [S][SUM]
  /TITLES
    TITLE='Quantidade de computadores de uso exclusivo do Conselho conectados � internet'.

FREQUENCIES VARIABLES=D15_total
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D15_total_net
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q16
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q17_1 q17_2 DISPLAY=LABEL
  /TABLE q17_1 [COUNT F40.0] + q17_2 [COUNT F40.0]
  /SLABELS POSITION=ROW
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q17_1 q17_2 ORDER=A KEY=VALUE EMPTY=EXCLUDE
 /TITLES
    TITLE='Quantos funcion�rios est�o na Secretaria Executiva do Conselho?'.

FREQUENCIES VARIABLES=q18
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q20
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D21_horas_por_semana_categoria
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q22
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D23
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q24
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_25 '' (q25_0 q25_1 q25_2 q25_3 q25_4 q25_5 q25_6 q25_7 (1))
/FREQUENCIES=$mr_25.

FREQUENCIES VARIABLES=q26
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q27
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q28
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_29 '' (q29_1 q29_2 q29_3 q29_4 q29_5 q29_6 q29_7 q29_8 q29_9 q29_10 q29_11 q29_12 q29_13 q29_14 q29_15 q29_16 q29_17 q29_18 q29_19 q29_20 q29_21 q29_22 q29_99 (1))
/FREQUENCIES=$mr_29.

FREQUENCIES VARIABLES=q30
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q32
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q33
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q34
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q35
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q36
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_37 'O Conselho aprecia e emite parecer sobre:' (q37_1 q37_2 q37_3 (1))
/FREQUENCIES=$mr_37.

FREQUENCIES VARIABLES=q38
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q39
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q40
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q41
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q42
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q43
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q45
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q46a q46b q46c q46d q46e q46f DISPLAY=LABEL
  /TABLE q46a [C][COUNT F40.0] + q46b [C][COUNT F40.0] + q46c [C][COUNT F40.0] + q46d [C][COUNT 
    F40.0] + q46e [C][COUNT F40.0] + q46f [C][COUNT F40.0]
  /SLABELS POSITION=ROW
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q46a q46b q46c q46d q46e q46f ORDER=A KEY=VALUE EMPTY=INCLUDE
 /TITLES
    TITLE='Com que frequ�ncia esse Conselho:'.

FREQUENCIES VARIABLES=q47
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q48a q48b q48c DISPLAY=LABEL
  /TABLE q48a [C][COUNT F40.0] + q48b [C][COUNT F40.0] + q48c [C][COUNT F40.0]
  /SLABELS POSITION=ROW
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q48a q48b q48c ORDER=A KEY=VALUE EMPTY=INCLUDE
/TITLES
   TITLE='Considerando a Res. CNAS n� 16/2010 que define os par�metros nacionais para a inscri��o das entidades e organiza��es de assist�ncia social, etc,  nos Conselhos de AS:'.

FREQUENCIES VARIABLES=q49
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q50
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q51_1 q51_2 q51_3 q51_4 q51_99 DISPLAY=LABEL
  /TABLE q51_1 [C][COUNT F40.0] + q51_2 [C][COUNT F40.0] + q51_3 [C][COUNT F40.0] + q51_4 [C][COUNT 
    F40.0] + q51_99 [C][COUNT F40.0]
  /SLABELS POSITION=ROW
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q51_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q51_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q51_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q51_4 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q51_99 [1] EMPTY=INCLUDE
/TITLES
   TITLE='Quem promoveu os cursos presenciais realizados pelos conselheiros no ano de 2013?'.

FREQUENCIES VARIABLES=q52
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q53_1 q53_2 q53_3 q53_4 q53_99 DISPLAY=LABEL
  /TABLE q53_1 [C][COUNT F40.0] + q53_2 [C][COUNT F40.0] + q53_3 [C][COUNT F40.0] + q53_4 [C][COUNT 
    F40.0] + q53_99 [C][COUNT F40.0]
  /SLABELS POSITION=ROW
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q53_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q53_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q53_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q53_4 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q53_99 [1] EMPTY=INCLUDE
/TITLES
   TITLE='Quem promoveu os cursos � dist�ncia realizados pelos conselheiros no ano de 2013?'.

FREQUENCIES VARIABLES=q54
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

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

CTABLES
  /VLABELS VARIABLES=q59_1 q59_2 DISPLAY=LABEL
  /TABLE q59_1 [C][COUNT F40.0] + q59_2 [C][COUNT F40.0]
  /SLABELS POSITION=ROW
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q59_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q59_2 [1] EMPTY=INCLUDE
/TITLES
     TITLE='Para o segmento de usu�rios, quem tem direito a voto no processo de elei��o dos representantes da sociedade civil?'.

MULT RESPONSE GROUPS=$mr_60 'Quais s�o as �reas que comp�em a representa��o governamental:' (q60_1 q60_2 q60_3 q60_4 q60_5 q60_6 q60_7 q60_8 q60_99 (1))
/FREQUENCIES=$mr_60.

MULT RESPONSE GROUPS=$mr_61 'Os representantes de usu�rios ou organiza��es de usu�ros s�o::' (q61_1 q61_2 q61_3 q61_4 q61_5 q61_6 q61_99 (1))
/FREQUENCIES=$mr_61.

FREQUENCIES VARIABLES=q62
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_63 'Quais das comiss�es permanentes est�o funcionando regularmente nesse Conselho:' (q63_1 q63_2 q63_3 q63_4 q63_5 q63_6 q63_7 q63_8 q63_99 (1))
/FREQUENCIES=$mr_63.

FREQUENCIES VARIABLES=q64_1 q64_2
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q65_1 q65_2
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.


**** corre��o do total das quest�es 37 e 38 *****

RENAME VARIABLES
q37a_4	=	q37a_4_velha
q37b_4	=	q37b_4_velha
q37c_4	=	q37c_4_velha
q37d_4	=	q37d_4_velha
q37e_1	=	q37e_1_velha
q37e_2	=	q37e_2_velha
q37e_3	=	q37e_3_velha
q37e_4	=	q37e_4_velha
q38a_4	=	q38a_4_velha
q38b_4	=	q38b_4_velha
q38c_4	=	q38c_4_velha
q38d_4	=	q38d_4_velha
q38e_1	=	q38e_1_velha
q38e_2	=	q38e_2_velha
q38e_3	=	q38e_3_velha
q38e_4	=	q38e_4_velha
.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37a_4=q37a_1+q37a_2+q37a_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37b_4=q37b_1+q37b_2+q37b_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37c_4=q37c_1+q37c_2+q37c_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37d_4=q37d_1+q37d_2+q37d_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37e_1=q37a_1+q37b_1+q37c_1+q37d_1.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37e_2=q37a_2+q37b_2+q37c_2+q37d_2.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37e_3=q37a_3+q37b_3+q37c_3+q37d_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q37e_4=q37a_4+q37b_4+q37c_4+q37d_4.
EXECUTE.


IF  (codigo_ibge <> 530010)  q38a_4=q38a_1+q38a_2+q38a_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38b_4=q38b_1+q38b_2+q38b_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38c_4=q38c_1+q38c_2+q38c_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38d_4=q38d_1+q38d_2+q38d_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38e_1=q38a_1+q38b_1+q38c_1+q38d_1.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38e_2=q38a_2+q38b_2+q38c_2+q38d_2.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38e_3=q38a_3+q38b_3+q38c_3+q38d_3.
EXECUTE.

IF  (codigo_ibge <> 530010)  q38e_4=q38a_4+q38b_4+q38c_4+q38d_4.
EXECUTE.


IF  (codigo_ibge = 530010)  q37a_4=q37a_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37b_4=q37b_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37c_4=q37c_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37d_4=q37d_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37e_1=q37e_1_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37e_2=q37e_2_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37e_3=q37e_3_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q37e_4=q37e_4_velha.
EXECUTE.


IF  (codigo_ibge = 530010)  q38a_4=q38a_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38b_4=q38b_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38c_4=q38c_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38d_4=q38d_4_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38e_1=q38e_1_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38e_2=q38e_2_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38e_3=q38e_3_velha.
EXECUTE.

IF  (codigo_ibge = 530010)  q38e_4=q38e_4_velha.
EXECUTE.

VARIABLE LABELS
q37a_1		'q37a_1_Estatut�rios - Ensino Fundamental'
q37a_2		'q37a_2_Estatut�rios - Ensino M�dio'
q37a_3		'q37a_3_Estatut�rios - Ensino Superior'
q37a_4		'q37a_4_Estatut�rios - Total'
q37b_1		'q37b_1_Celetistas - Ensino Fundamental'
q37b_2		'q37b_2_Celetistas - Ensino M�dio'
q37b_3		'q37b_3_Celetistas - Ensino Superior'
q37b_4		'q37b_4_Celetistas - Total'
q37c_1		'q37c_1_Somente Comissionados - Ensino Fundamental'
q37c_2		'q37c_2_Somente Comissionados - Ensino M�dio'
q37c_3		'q37c_3_Somente Comissionados - Ensino Superior'
q37c_4		'q37c_4_Somente Comissionados - Total'
q37d_1		'q37d_1_Outros V�nculos - Ensino Fundamental'
q37d_2		'q37d_2_Outros V�nculos - Ensino M�dio'
q37d_3		'q37d_3_Outros V�nculos - Ensino Superior'
q37d_4		'q37d_4_Outros V�nculos - Total'
q37e_1		'q37e_1_Total - Ensino Fundamental'
q37e_2		'q37e_2_Total - Ensino M�dio'
q37e_3		'q37e_3_Total - Ensino Superior'
q37e_4		'q37e_4_Total - Total'
q38a_1		'q38a_1_Estatut�rios - Ensino Fundamental'
q38a_2		'q38a_2_Estatut�rios - Ensino M�dio'
q38a_3		'q38a_3_Estatut�rios - Ensino Superior'
q38a_4		'q38a_4_Estatut�rios - Total'
q38b_1		'q38b_1_Celetistas - Ensino Fundamental'
q38b_2		'q38b_2_Celetistas - Ensino M�dio'
q38b_3		'q38b_3_Celetistas - Ensino Superior'
q38b_4		'q38b_4_Celetistas - Total'
q38c_1		'q38c_1_Somente Comissionados - Ensino Fundamental'
q38c_2		'q38c_2_Somente Comissionados - Ensino M�dio'
q38c_3		'q38c_3_Somente Comissionados - Ensino Superior'
q38c_4		'q38c_4_Somente Comissionados - Total'
q38d_1		'q38d_1_Outros V�nculos - Ensino Fundamental'
q38d_2		'q38d_2_Outros V�nculos - Ensino M�dio'
q38d_3		'q38d_3_Outros V�nculos - Ensino Superior'
q38d_4		'q38d_4_Outros V�nculos - Total'
q38e_1		'q38e_1_Total - Ensino Fundamental'
q38e_2		'q38e_2_Total - Ensino M�dio'
q38e_3		'q38e_3_Total - Ensino Superior'
q38e_4		'q38e_4_Total - Total'
.
EXECUTE.

**reordenar manualmente as vari�veis criadas**

*** manter os valores antigos do DF na vari�vel nova ***

***** corre��o do total das quest�es 37 e 38 *****


****** Remo��o de valores exp�rios nas variaveis q37a_1 a q38e_4 ***************

DO IF (((q38e_4 / Pop_Total2010)*100) > 5).
RECODE q37a_1 q37a_2 q37a_3 q37a_4 q37b_1 q37b_2 q37b_3 q37b_4 q37c_1 q37c_2 q37c_3 q37c_4 q37d_1 
    q37d_2 q37d_3 q37d_4 q37e_1 q37e_2 q37e_3 q37e_4 q38a_1 q38a_2 q38a_3 q38a_4 q38b_1 q38b_2 q38b_3 
    q38b_4 q38c_1 q38c_2 q38c_3 q38c_4 q38d_1 q38d_2 q38d_3 q38d_4 q38e_1 q38e_2 q38e_3 q38e_4 
    (ELSE=999998).
END IF.
EXECUTE.

ADD VALUE LABELS  q37a_1, q37a_2, q37a_3, q37a_4, q37b_1, q37b_2, q37b_3, q37b_4, q37c_1, q37c_2, q37c_3, q37c_4, q37d_1, 
    q37d_2, q37d_3, q37d_4, q37e_1, q37e_2, q37e_3, q37e_4, q38a_1, q38a_2, q38a_3, q38a_4, q38b_1, q38b_2, q38b_3, 
    q38b_4, q38c_1, q38c_2, q38c_3, q38c_4, q38d_1, q38d_2, q38d_3, q38d_4, q38e_1, q38e_2, q38e_3, q38e_4, 999998 "Imputado missing devido a valor inconsistente".
EXECUTE.

**** ATEN��O: fazer manualmente a classifica��o do valor 999998 como missing na configura��o das vari�veis 37 e 38*******



****Derivada referente ao ano da lei municipal que regulamenta o SUAS****

RECODE q15 (Lowest thru 1993=1) (1994 thru 1997=2) (1998 thru 2004=3) (2005 thru 2010=4) (2011 thru 
    2012=5) INTO D15.
VARIABLE LABELS  D15 'D15_Ano da Lei Municipal que regulamenta o SUAS'.
EXECUTE.

VALUE LABELS
/D15
1	"At� 1993"
2	"De 1994 a 1997"
3	"De 1998 a 2004"
4	"De 2005 a 2010"
5	"De 2011 a 2012".
EXECUTE.

****recode para calcular derivada D54_2 referente ao total de unidades p�blicas de acolhimento institucional****

COMPUTE q54a_2_recode=q54a_2.
EXECUTE.

COMPUTE q54b_2_recode=q54b_2.
EXECUTE.

COMPUTE q54c_2_recode=q54c_2.
EXECUTE.

COMPUTE q54d_2_recode=q54d_2.
EXECUTE.

COMPUTE q54e_2_recode=q54e_2.
EXECUTE.

COMPUTE q54f_2_recode=q54f_2.
EXECUTE.

COMPUTE q54g_2_recode=q54g_2.
EXECUTE.

COMPUTE q54h_2_recode=q54h_2.
EXECUTE.

VARIABLE LABELS  q54a_2_recode 'quest�o q54a_2 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54b_2_recode 'quest�o q54b_2 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54c_2_recode 'quest�o q54c_2 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54d_2_recode 'quest�o q54d_2 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54e_2_recode 'quest�o q54e_2 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54f_2_recode 'quest�o q54f_2 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54g_2_recode 'quest�o q54g_2 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54h_2_recode 'quest�o q54h_2 substituindo missing por zero'.
EXECUTE.

RECODE q54a_2_recode (SYSMIS=0).
EXECUTE.

RECODE q54b_2_recode (SYSMIS=0).
EXECUTE.

RECODE q54c_2_recode (SYSMIS=0).
EXECUTE.

RECODE q54d_2_recode (SYSMIS=0).
EXECUTE.

RECODE q54e_2_recode (SYSMIS=0).
EXECUTE.

RECODE q54f_2_recode (SYSMIS=0).
EXECUTE.

RECODE q54g_2_recode (SYSMIS=0).
EXECUTE.

RECODE q54h_2_recode (SYSMIS=0).
EXECUTE.

***total de unidades p�blicas de acolhimento institucional - Abrigo e Rep�blicas****

COMPUTE D54_2_total= q54a_2_recode + q54b_2_recode + q54c_2_recode + q54d_2_recode + q54e_2_recode + q54f_2_recode + q54g_2_recode + q54h_2_recode.
EXECUTE.

VARIABLE LABELS
D54_2_total	'D54_2_total_Total de Unidades P�blicas - Abrigos e Rep�blicas'.
EXECUTE.

****Recode para calcular derivada D54_3 referente ao total VAGAS nas Unidades p�blicas de acolhimento institucional****

COMPUTE q54a_3_recode=q54a_3.
EXECUTE.

COMPUTE q54b_3_recode=q54b_3.
EXECUTE.

COMPUTE q54c_3_recode=q54c_3.
EXECUTE.

COMPUTE q54d_3_recode=q54d_3.
EXECUTE.

COMPUTE q54e_3_recode=q54e_3.
EXECUTE.

COMPUTE q54f_3_recode=q54f_3.
EXECUTE.

COMPUTE q54g_3_recode=q54g_3.
EXECUTE.

COMPUTE q54h_3_recode=q54h_3.
EXECUTE.

VARIABLE LABELS  q54a_3_recode 'quest�o q54a_3 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54b_3_recode 'quest�o q54b_3 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54c_3_recode 'quest�o q54c_3 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54d_3_recode 'quest�o q54d_3 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54e_3_recode 'quest�o q54e_3 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54f_3_recode 'quest�o q54f_3 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54g_3_recode 'quest�o q54g_3 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54h_3_recode 'quest�o q54h_3 substituindo missing por zero'.
EXECUTE.

RECODE q54a_3_recode (SYSMIS=0).
EXECUTE.

RECODE q54b_3_recode (SYSMIS=0).
EXECUTE.

RECODE q54c_3_recode (SYSMIS=0).
EXECUTE.

RECODE q54d_3_recode (SYSMIS=0).
EXECUTE.

RECODE q54e_3_recode (SYSMIS=0).
EXECUTE.

RECODE q54f_3_recode (SYSMIS=0).
EXECUTE.

RECODE q54g_3_recode (SYSMIS=0).
EXECUTE.

RECODE q54h_3_recode (SYSMIS=0).
EXECUTE.

***total de VAGAS em unidades p�blicas de acolhimento institucional - Abrigo e Rep�blicas****

COMPUTE D54_3_total= q54a_3_recode + q54b_3_recode + q54c_3_recode + q54d_3_recode + q54e_3_recode + q54f_3_recode + q54g_3_recode + q54h_3_recode.
EXECUTE.

VARIABLE LABELS
D54_3_total	'D54_3_total_Total de vagas em Unidades P�blicas - Abrigos e Rep�blicas'.
EXECUTE.

****recode para calcular derivada D54_4 referente ao total de Unidades Conveniadas de acolhimento institucional****

COMPUTE q54a_4_recode=q54a_4.
EXECUTE.

COMPUTE q54b_4_recode=q54b_4.
EXECUTE.

COMPUTE q54c_4_recode=q54c_4.
EXECUTE.

COMPUTE q54d_4_recode=q54d_4.
EXECUTE.

COMPUTE q54e_4_recode=q54e_4.
EXECUTE.

COMPUTE q54f_4_recode=q54f_4.
EXECUTE.

COMPUTE q54g_4_recode=q54g_4.
EXECUTE.

COMPUTE q54h_4_recode=q54h_4.
EXECUTE.

VARIABLE LABELS  q54a_4_recode 'quest�o q54a_4 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54b_4_recode 'quest�o q54b_4 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54c_4_recode 'quest�o q54c_4 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54d_4_recode 'quest�o q54d_4 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54e_4_recode 'quest�o q54e_4 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54f_4_recode 'quest�o q54f_4 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54g_4_recode 'quest�o q54g_4 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54h_4_recode 'quest�o q54h_4 substituindo missing por zero'.
EXECUTE.

RECODE q54a_4_recode (SYSMIS=0).
EXECUTE.

RECODE q54b_4_recode (SYSMIS=0).
EXECUTE.

RECODE q54c_4_recode (SYSMIS=0).
EXECUTE.

RECODE q54d_4_recode (SYSMIS=0).
EXECUTE.

RECODE q54e_4_recode (SYSMIS=0).
EXECUTE.

RECODE q54f_4_recode (SYSMIS=0).
EXECUTE.

RECODE q54g_4_recode (SYSMIS=0).
EXECUTE.

RECODE q54h_4_recode (SYSMIS=0).
EXECUTE.

***Total de Unidades Unidades Conveniadas de Acolhimento Institucional - Abrigos e Rep�blicas****

COMPUTE D54_4_total= q54a_4_recode + q54b_4_recode + q54c_4_recode + q54d_4_recode + q54e_4_recode + q54f_4_recode + q54g_4_recode + q54h_4_recode.
EXECUTE.

VARIABLE LABELS
D54_4_total	'D54_4_total_Total de Unidades Conveniadas - Abrigos e Rep�blicas'.
EXECUTE.

****recode para calcular derivada D54_5 referente ao total de VAGAS nas Unidades Conveniadas de acolhimento institucional****

COMPUTE q54a_5_recode=q54a_5.
EXECUTE.

COMPUTE q54b_5_recode=q54b_5.
EXECUTE.

COMPUTE q54c_5_recode=q54c_5.
EXECUTE.

COMPUTE q54d_5_recode=q54d_5.
EXECUTE.

COMPUTE q54e_5_recode=q54e_5.
EXECUTE.

COMPUTE q54f_5_recode=q54f_5.
EXECUTE.

COMPUTE q54g_5_recode=q54g_5.
EXECUTE.

COMPUTE q54h_5_recode=q54h_5.
EXECUTE.

VARIABLE LABELS  q54a_5_recode 'quest�o q54a_5 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54b_5_recode 'quest�o q54b_5 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54c_5_recode 'quest�o q54c_5 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54d_5_recode 'quest�o q54d_5 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54e_5_recode 'quest�o q54e_5 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54f_5_recode 'quest�o q54f_5 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54g_5_recode 'quest�o q54g_5 substituindo missing por zero'.
EXECUTE.

VARIABLE LABELS  q54h_5_recode 'quest�o q54h_5 substituindo missing por zero'.
EXECUTE.

RECODE q54a_5_recode (SYSMIS=0).
EXECUTE.

RECODE q54b_5_recode (SYSMIS=0).
EXECUTE.

RECODE q54c_5_recode (SYSMIS=0).
EXECUTE.

RECODE q54d_5_recode (SYSMIS=0).
EXECUTE.

RECODE q54e_5_recode (SYSMIS=0).
EXECUTE.

RECODE q54f_5_recode (SYSMIS=0).
EXECUTE.

RECODE q54g_5_recode (SYSMIS=0).
EXECUTE.

RECODE q54h_5_recode (SYSMIS=0).
EXECUTE.

***Total de VAGAS em Unidades Conveniadas de Acolhimento Institucional - Abrigo e Rep�blicas****

COMPUTE D54_5_total= q54a_5_recode + q54b_5_recode + q54c_5_recode + q54d_5_recode + q54e_5_recode + q54f_5_recode + q54g_5_recode + q54h_5_recode.
EXECUTE.

VARIABLE LABELS
D54_5_total	'D54_5_total_Total de vagas em Unidades Conveniadas - Abrigos e Rep�blicas'.
EXECUTE.


******Total de unidades de Acolhimento - Abrigos e Rep�blicas (p�blica e conveniada)****

COMPUTE D54_und_total=D54_2_total + D54_4_total.

VARIABLE LABELS
D54_und_total	'D54_und_total_Total de Unidades de Acolhimento Institucional - Abrigos e Rep�blicas (p�blicas e conveniadas)'.
EXECUTE.

******Total de VAGAS de Acolhimento - Abrigos e Rep�blicas (p�blica e conveniada)****

COMPUTE D54_vaga_total=D54_3_total + D54_5_total.

VARIABLE LABELS
D54_vaga_total	'D54_vaga_total_Total de vagas em Unidades de Acolhimento Institucional - Abrigos e Rep�blicas (p�blicas e conveniadas)'.
EXECUTE.



***Total de Unidades P�blicas e Conveniadas para CRIAN�AS E ADOLESCENTES****

COMPUTE D54_crianca_1= q54a_2_recode + q54a_4_recode.

VARIABLE LABELS
D54_crianca_1	'D54_crianca_1_Total de unidades p�blicas e conveniadas para crian�as e adolescentes - Abrigos'.
EXECUTE.

***Total de VAGAS em Unidades P�blicas e Conveniadas para CRIAN�AS E ADOLESCENTES****

COMPUTE D54_crianca_2= q54a_3_recode + q54a_5_recode.

VARIABLE LABELS
D54_crianca_2	'D54_crianca_2_Total de vagas em unidades p�blicas e conveniadas para crian�as e adolescentes - Abrigos'.
EXECUTE.

***Total de Unidades P�blicas e Conveniadas para IDOSOS (Abrigos e Rep�blicas)****

COMPUTE D54_idoso_1= q54b_2_recode + q54b_4_recode + q54h_2_recode + q54h_4_recode.

VARIABLE LABELS
D54_idoso_1	'D54_idoso_1_Total de unidades p�blicas e conveniadas para idosos (Abrigos e Rep�blicas)'.
EXECUTE.

***Total de VAGAS em Unidades P�blicas e Conveniadas para IDOSOS****

COMPUTE D54_idoso_2= q54b_3_recode + q54b_5_recode + q54h_3_recode + q54h_5_recode.

VARIABLE LABELS
D54_idoso_2	'D54_idoso_2_Total de vagas em unidades p�blicas e conveniadas para idosos - (Abrigos e Rep�blicas)'.
EXECUTE.

***Total de Unidades P�blicas e Conveniadas para PESSOAS EM SITUA��O DE RUA (Abrigos e Rep�blicas)****

COMPUTE D54_rua_1= q54c_2_recode + q54c_4_recode + q54g_2_recode + q54g_4_recode.

VARIABLE LABELS
D54_rua_1	'D54_rua_1_Total de unidades p�blicas e conveniadas para pessoas em situa��o de rua (Abrigos e Rep�blicas)'.
EXECUTE.

***Total de VAGAS em Unidades P�blicas e Conveniadas para PESSOAS EM SITUA��O DE RUA****

COMPUTE D54_rua_2= q54c_3_recode + q54c_5_recode + q54g_3_recode + q54g_5_recode.

VARIABLE LABELS
D54_rua_2	'D54_rua_2_Total de vagas em unidades p�blicas e conveniadas para pessoas em situa��o de rua - (Abrigos e Rep�blicas)'.
EXECUTE.

***Total de Unidades P�blicas e Conveniadas para PESSOAS COM DEFICI�NCIA - Abrigos****

COMPUTE D54_deficiencia_1= q54d_2_recode + q54d_4_recode.

VARIABLE LABELS
D54_deficiencia_1	'D54_deficiencia_1_Total de unidades p�blicas e conveniadas para pessoas com defici�ncia - Abrigos'.
EXECUTE.

***Total de VAGAS em Unidades P�blicas e Conveniadas para PESSOAS COM DEFICI�NCIA****

COMPUTE D54_deficiencia_2= q54d_3_recode + q54d_5_recode.

VARIABLE LABELS
D54_deficiencia_2	'D54_deficiencia_2_Total de vagas em unidades p�blicas e conveniadas para pessoas com defici�ncia - Abrigos'.
EXECUTE.

***Total de Unidades P�blicas e Conveniadas para MULHERES v�timas de viol�ncia - Abrigos****

COMPUTE D54_mulher_1= q54e_2_recode + q54e_4_recode.

VARIABLE LABELS
D54_mulher_1	'D54_mulher_1_Total de unidades p�blicas e conveniadas para mulheres v�timas de viol�ncia - Abrigos'.
EXECUTE.

***Total de VAGAS em Unidades P�blicas e Conveniadas para MULHERES v�timas de viol�ncia****

COMPUTE D54_mulher_2= q54e_3_recode + q54e_5_recode.

VARIABLE LABELS
D54_mulher_2	'D54_mulher_2_Total de vagas em unidades p�blicas e conveniadas para mulhere v�timas de viol�ncia - Abrigos'.
EXECUTE.

***Total de Unidades P�blicas e Conveniadas para JOVENS (maiores de 18 anos) - Abrigos****

COMPUTE D54_jovem_1= q54f_2_recode + q54f_4_recode.

VARIABLE LABELS
D54_jovem_1	'D54_jovem_1_Total de unidades p�blicas e conveniadas para jovens (maiores de 18 anos) - Rep�blica'.
EXECUTE.

***Total de VAGAS em Unidades P�blicas e Conveniadas para JOVENS (maiores de 18 anos)****

COMPUTE D54_jovem_2= q54f_3_recode + q54f_5_recode.

VARIABLE LABELS
D54_jovem_2	'D54_jovem_2_Total de vagas em unidades p�blicas e conveniadas para jovens (maiores de 18 anos) - Rep�blica'.
EXECUTE.

****Excluindo variaveis derivadas utilizadas apenas para efeturar c�culos****

DELETE VARIABLES
q54a_2_recode
q54b_2_recode
q54c_2_recode
q54d_2_recode
q54e_2_recode
q54f_2_recode
q54g_2_recode
q54h_2_recode.
execute.

DELETE VARIABLES
q54a_3_recode
q54b_3_recode
q54c_3_recode
q54d_3_recode
q54e_3_recode
q54f_3_recode
q54g_3_recode
q54h_3_recode.
execute.

DELETE VARIABLES
q54a_4_recode
q54b_4_recode
q54c_4_recode
q54d_4_recode
q54e_4_recode
q54f_4_recode
q54g_4_recode
q54h_4_recode.
execute.

DELETE VARIABLES
q54a_5_recode
q54b_5_recode
q54c_5_recode
q54d_5_recode
q54e_5_recode
q54f_5_recode
q54g_5_recode
q54h_5_recode.
execute.



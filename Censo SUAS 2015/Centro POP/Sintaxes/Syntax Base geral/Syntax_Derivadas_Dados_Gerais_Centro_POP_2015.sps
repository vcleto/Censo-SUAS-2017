******************************************************************************************
**** Syntax DERIVADAS - Centro POP Dados Gerais - Censo 2015 ***********


***D1  Horas de funcionamento por semana da Unidade ***

IF (q1_1 * q1_2 < 30) D1_horas_por_semana_fx = 0 .
IF (q1_1 * q1_2  >= 30 & q1_1 * q1_2   < 40) D1_horas_por_semana_fx = 1 .
IF (q1_1 * q1_2  >= 40 & q1_1 * q1_2   < 50) D1_horas_por_semana_fx = 2 .
IF (q1_1 * q1_2 > 49) D1_horas_por_semana_fx = 3 .
EXECUTE .

ADD VALUE LABEL
D1_horas_por_semana_fx  0 "menos de 30 horas/semana"  1 "30 a 39 horas/semana"  2 "40 a 49 horas/semana"  3 "50 ou mais horas/semana".

VARIABLE LABELS
D1_horas_por_semana_fx	'D1_horas_por_semana_fx_Total de horas por semana que o CENTRO POP encontra-se em funcionamento'.
EXECUTE.


*** Quantidade de Salas ***

COMPUTE D6_total_salas_atend= q6_1 + q6_2 + q6_3 + q6_4.
EXECUTE.

VARIABLE LABELS
D6_total_salas_atend	'D6_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

COMPUTE D6_total_salas_adm_e_atend= q6_1 + q6_2 + q6_3 + q6_4+ q6_5.
EXECUTE.

VARIABLE LABELS
D6_total_salas_adm_e_atend	'D6_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE
  D6_total_salas_atend
  (0 thru 1=1)  (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D6_Salas_atend_fx .
EXECUTE .

ADD VALUE LABEL
D6_Salas_atend_fx 1"0 a 1"  2"2 a 3"  3"4 a 5"   4"6 a 7"    5"8 ou mais".

VARIABLE LABELS
D6_Salas_atend_fx	'D6_Salas_atend_fx_N�mero de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE
D6_total_salas_adm_e_atend
  (0 thru 1=1)  (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D6_total_salas_adm_e_atend_fx.
EXECUTE .

ADD VALUE LABEL
D6_total_salas_adm_e_atend_fx 1"0 a 1"  2"2 a 3"  3"4 a 5"   4"6 a 7"    5"8 ou mais".

VARIABLE LABELS
D6_total_salas_adm_e_atend_fx	'D6_Total de salas utilizadas para atendimento e para atividades administrativas_fx'.
EXECUTE.


***Quantidade de banheiros***

RECODE
q6_6
  (0 =0) (1=1)  (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D6_6.
EXECUTE .

ADD VALUE LABEL
D6_6 0 "0" 1"1"  2"2 a 3"  3"4 a 5"   4"6 a 7"    5"8 ou mais".

VARIABLE LABELS
D6_6	'D6_6_Quantidade de banheiros de uso exclusivo dos trabalhadores do Centro POP'.
EXECUTE.

RECODE
q6_7
  (0=0) (1=1) (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D6_7.
EXECUTE .

ADD VALUE LABEL
D6_7  0"Nenhum banheiro" 1"1 banheiro" 2"2 a 3 banheiros"  3"4 a 5 banheiros"   4"6 a 7 banheiros"   5"8 ou mais banheiros".

VARIABLE LABELS
D6_7	'D6_7_Quantidade de banheiros para uso dos usu�rios do Centro POP'.
EXECUTE.

RECODE
q6_8
   (0=0) (1=1) (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D6_8.
EXECUTE .

ADD VALUE LABEL
D6_8 0"Nenhum banheiro" 1"1 banheiro" 2"2 a 3 banheiros"  3"4 a 5 banheiros"   4"6 a 7 banheiros"   5"8 ou mais banheiros".

VARIABLE LABELS
D6_8	'D6_8_Quantidade de espa�os para higiene pessoal (Box com chuveiros individualizados)'.
EXECUTE.


*** Quantidade de Computadores***

RECODE
  q9_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D9_1 .
EXECUTE .

ADD VALUE LABEL
D9_1 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D9_1	'D9_1_Quantidade de computadores no CENTRO POP'.
EXECUTE.

RECODE
  q9_2 
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D9_2 .
EXECUTE .

ADD VALUE LABEL
D9_2 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D9_2	'D9_2_Quantidade de computadores conectados � internet no CENTRO POP'.
EXECUTE.

RECODE
  q9_3
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D9_3 .
EXECUTE .

ADD VALUE LABEL
D9_3 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D9_3	'D9_3_Quantidade de computadores para utiliza��o pelos usu�rios'.
EXECUTE.

RECODE
  q9_4
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D9_4 .
EXECUTE .

ADD VALUE LABEL
D9_4 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D9_4	'D9_4_Quantidade de computadores concectados � internet, para utiliza��o pelos usu�rios'.
EXECUTE.



*** Estimativa do n�mero de pessoas em situa��o de rua na �rea de abrang�ncia do CENTRO POP ***

RECODE
q29
(SYSMIS=999999)  (0 thru 99=0) (100 thru 500=1) (501 thru 1000=2) (1001 thru 3000=3) (3001 thru 4000=4) (4001 thru 6000=5) (6001 thru 10000=6) (10001 thru Highest=7)  INTO  D29_fx .
EXECUTE .

ADD VALUE LABEL
D29_fx 999999"N�o sabe"  0"menos de 100"  1"100 a 500"  2"501 a 1000" 3"1001 a 3000"  4"3001 a 6000"  5"4001 a 6000"  6"6001 a 10.000" 7"mais de 10 mil".

VARIABLE LABELS
D29_fx	'D29_fx_estimativa de pessoas em situa��o de rua em sua �rea de abrang�ncia'.
EXECUTE.







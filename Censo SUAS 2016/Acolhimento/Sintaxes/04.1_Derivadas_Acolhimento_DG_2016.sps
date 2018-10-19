
** Tempo de Implanta��o da Unidade

COMPUTE time=DATE.DMY(31,12,2015).
EXECUTE.
COMPUTE Dident15=DATEDIFF (time,ident_15_Data,"year").
VARIABLE LABELS Dident15 'Dident15_Tempo de Implanta��o da Unidade'. 
FORMATS Dident15 (f1.0).
EXECUTE.

**(se o comando der errado, verifique se a vari�vel ident_15 est� em formato "Date". 

DELETE VARIABLES time. 
Execute. 

recode Dident15 (0 thru 5 =1) (5 thru 10 =2) (11 thru 20 =3) (21 thru 40=4) (41 thru highest =5) into Dident15_2.
execute.

var labels Dident15_2 'Dident15_2_Tempo de Implanta��o da Unidade'. 
FORMATS Dident15_2 (f1.0).

value labels Dident15_2
1 "De 0 a 5 anos"
2 "De 6 a 10 anos"
3 "De 11 a 20 anos"
4 "De 21 a 40 anos"
5 "Mais de 40 anos".
execute.

** P�blico crian�a e adolescente

RECODE q2_1 (315=1) (317=1) (ELSE=0) INTO D2_crianca.
EXECUTE.

VARIABLE LABELS D2_crianca 'D2_crianca_P�blico crian�a e adolescente (q2=315 | q2=317)'.
FORMATS D2_crianca (f1.0).
EXECUTE.

value labels D2_crianca
1 'Crian�a e Adolescente'
0 'Outros p�blicos'. 

** P�blico crian�a, adolescentes e jovens egressos

RECODE q2_1 (315=1) (316=1) (317=1) (ELSE=0) INTO D2_crianca_jovem.
EXECUTE.

VARIABLE LABELS D2_crianca_jovem 'D2_crianca_P�blico crian�a, adolescente e jovens egressos (q2=315 | q2=316 | q2=317)'.
FORMATS D2_crianca_jovem (f1.0).
EXECUTE.

value labels D2_crianca_jovem
1 'Crian�a, Adolescente e jovens Egressos'
0 'Outros p�blicos'. 


** Quantidade de Munic�pios com os quais o acolhimento tem algum termo de parceria/convenio/coopera��o


RECODE D14_sum (sysmiss=sysmiss) (0 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru highest=4) into D14. 
execute.

FORMATS D14 (f1.0).
variable labels D14 'D14_Quantidade de outros munic�pios que tem termo de parceria/conveio/coopera��o com esta unidade'.

value labels D14 
1 'At� 2 munic�pios'
2 'De 3 a 5 munic�pios'
3 'De 6 a 10 munic�pios'
4 'Mais de 10 munic�pios'. 
execute. 



**Capacidade M�xima de Atendimento - Cuidado com 0 ou 1

RECODE q18  (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D18.
VARIABLE LABELS  D18 'D18_Capacidade m�xima para atendimento (numero de vagas) da unidade'.
FORMATS D18 (f1.0).
EXECUTE.

VALUE LABELS D18
1	De 0 a 5 vagas
2	De 6 a 10 vagas
3	De 11 a 20 vagas
4	De 21 a 40 vagas
5	De 41 a 60 vagas
6	De 61 a 80 vagas
7	De 81 a 100 vagas
8	Mais de 100 vagas.
EXECUTE.

*****quantidade de vagas ocupadas - Cuidado com 0 ou 1 

RECODE q19 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D19.
VARIABLE LABELS  D19 'D19_Quantas pessoas est�o acolhidas na unidade (n�mero de vagas ocupadas)'.
FORMATS D19 (f1.0).
EXECUTE.

VALUE LABELS D19
1	De 0 a 5 vagas
2	De 6 a 10 vagas
3	De 11 a 20 vagas
4	De 21 a 40 vagas
5	De 41 a 60 vagas
6	De 61 a 80 vagas
7	De 81 a 100 vagas
8	Mais de 100 vagas.
EXECUTE.

*** Quantidade de crian�as que retornaram a fam�lia de origem

RECODE q20 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D20.
VARIABLE LABELS  D20 'D20_Quantas crian�as/adolescentes desta unidade retornaram �s suas fam�lias de origem'.
FORMATS D20 (f1.0).
EXECUTE.

VALUE LABELS D20
1	'Nenhuma crian�as/adolescentes'
2	'De 1 a 2 crian�as/adolescentes'	
3	'De 3 a 5 crian�as/adolescentes'
4	'De 6 a 10 crian�as/adolescentes'
5	'De 11 a 20 crian�as/adolescentes'
6	'De 21 a 40 crian�as/adolescentes'
7	'De 41 a 60 crian�as/adolescentes'
8	'Mais de 60 crian�as/adolescentes'.
EXECUTE.


*** Quantidade de crian�as que foram encaminhadas a fam�lias substitutas_REINTEGRA��O

RECODE q21_1 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D21_1.
VARIABLE LABELS  D21_1 'D21_1_Quantas crian�as/adolescentes foram encaminhadas a fam�lias substitutas - mediante REINTEGRA��O'.
FORMATS D21_1 (f1.0).
EXECUTE.

VALUE LABELS D21_1
1	'Nenhuma crian�as/adolescentes'
2	'De 1 a 2 crian�as/adolescentes'	
3	'De 3 a 5 crian�as/adolescentes'
4	'De 6 a 10 crian�as/adolescentes'
5	'De 11 a 20 crian�as/adolescentes'
6	'De 21 a 40 crian�as/adolescentes'
7	'De 41 a 60 crian�as/adolescentes'
8	'Mais de 60 crian�as/adolescentes'.
EXECUTE.

*** Quantidade de crian�as que foram encaminhadas a fam�lias substitutas_ADO��O

RECODE q21_2 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D21_2.
VARIABLE LABELS  D21_2 'D21_2_Quantas crian�as/adolescentes foram encaminhadas a fam�lias substitutas - mediante ADO��O'.
FORMATS D21_2 (f1.0).
EXECUTE.

VALUE LABELS D21_2
1	'Nenhuma crian�as/adolescentes'
2	'De 1 a 2 crian�as/adolescentes'	
3	'De 3 a 5 crian�as/adolescentes'
4	'De 6 a 10 crian�as/adolescentes'
5	'De 11 a 20 crian�as/adolescentes'
6	'De 21 a 40 crian�as/adolescentes'
7	'De 41 a 60 crian�as/adolescentes'
8	'Mais de 60 crian�as/adolescentes'.
EXECUTE.


*** Quantidade de acolhidos de 0 a 17 anos

COMPUTE D22_1_0a17 = q22_1_1 + q22_1_2+ q22_1_3 + q22_1_4 + q22_1_5 + q22_1_6.
execute. 
COMPUTE D22_2_0a17 = q22_2_1 + q22_2_2+ q22_2_3 + q22_2_4 + q22_2_5 + q22_2_6.
execute. 
COMPUTE D22_3_0a17 = q22_3_1 + q22_3_2+ q22_3_3 + q22_3_4 + q22_3_5 + q22_3_6.
execute. 

VARIABLE LABELS D22_1_0a17 'D22_1_0a17_Quantidade de pessoas acolhidas: Masculino - 0 a 17'.
VARIABLE LABELS D22_2_0a17 'D22_2_0a17_Quantidade de pessoas acolhidas: Feminino - 0 a 17'.
VARIABLE LABELS D22_3_0a17 'D22_3_0a17_Quantidade de pessoas acolhidas: Total - 0 a 17'.
Execute.

formats D22_1_0a17 (f1.0).
formats D22_2_0a17 (f1.0).
formats D22_3_0a17 (f1.0).

**** quantidade de pessoas dormindo em um mesmo dormit�rio - Cuidado com 0 ou 1

RECODE q23 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D23.
VARIABLE LABELS  D23 'D23_Numero m�ximo de pessoas dormindo em um mesmo dormit�rio'.
FORMATS D23 (f1.0).
EXECUTE.

VALUE LABELS D23
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.

** Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro munic�pio

RECODE q24 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D24.
VARIABLE LABELS  D24 'D24_Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro munic�pio'.
FORMATS D24 (f1.0).
EXECUTE.

VALUE LABELS D24
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.

** Pessoas que recebem BPC - Idosos

RECODE q25_1 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D25_1.
VARIABLE LABELS  D25_1 'D25_1_Quantidade de Idosos benefici�rios do BPC'.
FORMATS D25_1 (f1.0).
EXECUTE.

VALUE LABELS D25_1
1	De 0 a 5 idosos
2	De 6 a 10 idosos
3	De 11 a 20 idosos
4	De 21 a 40 idosos
5	De 41 a 60 idosos
6	Mais de 60 idosos.
EXECUTE.

** Pessoas que recebem BPC - PCD

RECODE q25_2 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D25_2.
VARIABLE LABELS  D25_2 'D25_2_Quantidade de Pessoas com defici�ncia benefici�rios do BPC'.
FORMATS D25_2 (f1.0).
EXECUTE.

VALUE LABELS D25_2
1	De 0 a 5 pessoas
2	De 6 a 10 pessoas
3	De 11 a 20 pessoas
4	De 21 a 40 pessoas
5	De 41 a 60 pessoas
6	Mais de 60 pessoas.
EXECUTE.


*** Caracter�sticas espec�fcas dos acohidos

recode q29_1_1 (0=0) (sysmiss=sysmiss) (else=1) into D29_1_1.
FORMATS D29_1_1 (f1.0).
execute.

var labels D29_1_1 'D29_1_1_Unidades com pelo menos 1 acolhido com Defici�ncia (f�sica/sensorial/intelectual'. 
value labels D29_1_1
0 'N�o'
1 'Sim'. 

recode q29_2_1 (0=0) (sysmiss=sysmiss) (else=1) into D29_2_1.
FORMATS D29_2_1 (f1.0).
execute.

var labels D29_2_1 'D29_2_1_Unidades com pelo menos 1 acolhido com Doen�a Mental (Transtorno Mental)'. 
value labels D29_2_1
0 'N�o'
1 'Sim'. 

recode q29_3_1 (0=0) (sysmiss=sysmiss) (else=1) into D29_3_1.
FORMATS D29_3_1 (f1.0).
execute.

var labels D29_3_1 'D29_3_1_Unidades com pelo menos 1 acolhido Refugiado/Imigrante (pessoas de outro pa�s)'. 
value labels D29_3_1
0 'N�o'
1 'Sim'. 


recode q29_4_1 (0=0) (sysmiss=sysmiss) (else=1) into D29_4_1.
FORMATS D29_4_1 (f1.0).
execute.

var labels D29_4_1 'D29_4_1_Unidades com pelo menos 1 acolhido Ind�gena'. 
value labels D29_4_1
0 'N�o'
1 'Sim'. 

recode q29_5_1 (0=0) (sysmiss=sysmiss) (else=1) into D29_5_1.
FORMATS D29_5_1 (f1.0).
execute.

var labels D29_5_1 'D29_5_1_Unidades com pelo menos 1 acolhido Travesti, Transexual ou transg�nero'. 
value labels D29_5_1
0 'N�o'
1 'Sim'.



** Quantidade de Computadores***


RECODE
q40_25_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D40_25_1.
EXECUTE .

ADD VALUE LABEL
D40_25_1 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D40_25_1 'D40_25_1_Quantidade de computadores na Unidade conectados � internet'.
FORMATS D40_25_1 (f1.0).
EXECUTE.




**********************************************************************************
**'*****************  Derivadas de Recursos Humanos **********************
**********************************************************************************

*Fazer a agrega��o das vari�veis Derivadas do Recursos Humanos


AGGREGATE
  /OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2016_Censo_SUAS\_Bases Censo SUAS 2016 - Tratamento\Acolhimento\Municipal\Base de RH para os DG_Municipal.sav'
  /BREAK=N�IDENTIFICADOR
  /D42_sum=SUM(D42)
  /D42_7bin1_sum=SUM(D42_7bin1) 
  /D42_7bin2_sum=SUM(D42_7bin2) 
  /D42_7bin3_sum=SUM(D42_7bin3) 
  /D42_8bin1_sum=SUM(D42_8bin1) 
  /D42_8bin2_sum=SUM(D42_8bin2) 
  /D42_8bin3_sum=SUM(D42_8bin3) 
  /D42_8bin4_sum=SUM(D42_8bin4) 
  /D42_8bin5_sum=SUM(D42_8bin5) 
  /D42_8bin6_sum=SUM(D42_8bin6) 
  /D42_8bin7_sum=SUM(D42_8bin7) 
  /D42_8bin8_sum=SUM(D42_8bin8) 
  /D42_9bin1_sum=SUM(D42_9bin1) 
  /D42_9bin2_sum=SUM(D42_9bin2) 
  /D42_9bin3_sum=SUM(D42_9bin3) 
  /D42_9bin4_sum=SUM(D42_9bin4) 
  /D42_9bin5_sum=SUM(D42_9bin5).


*Fazer o merge com o banco de Acolhimento

MATCH FILES /FILE=*
  /TABLE='Conjunto_de_dados11'
  /BY N�IDENTIFICADOR.
EXECUTE.


*Renomear as vari�veis

variable labels 
D42_sum 'D42_sum_Quantidade de trabalhadores'
/ D42_7bin1_sum ' D42_7bin1_Quantidade de trabalhadores - N�vel Fundamental '
/ D42_7bin2_sum ' D42_7bin2_Quantidade de trabalhadores - N�vel M�dio '
/ D42_7bin3_sum ' D42_7bin3_Quantidade de trabalhadores - N�vel Superior '
/ D42_8bin1_sum ' D42_8bin1_Quantidade de trabalhadores - Assistente Social '
/ D42_8bin2_sum ' D42_8bin2_Quantidade de trabalhadores - Psic�logo '
/ D42_8bin3_sum ' D42_8bin3_Quantidade de trabalhadores - Pedag�go '
/ D42_8bin4_sum ' D42_8bin4_Quantidade de trabalhadores - Enfermeiro '
/ D42_8bin5_sum ' D42_8bin5_Quantidade de trabalhadores - M�dico '
/ D42_8bin6_sum ' D42_8bin6_Quantidade de trabalhadores - Administrador '
/ D42_8bin7_sum ' D42_8bin7_Quantidade de trabalhadores - Advogado '
/ D42_8bin8_sum ' D42_8bin8_Quantidade de trabalhadores - Fisiterapeuta/Terapia Ocupacional '
/ D42_9bin1_sum ' D42_9bin1_Quantidade de trabalhadores - Servidor P�blico ou Comissionado '
/ D42_9bin2_sum ' D42_9bin2_Quantidade de trabalhadores - Empregado P�blico (CLT) '
/ D42_9bin3_sum ' D42_9bin3_Quantidade de trabalhadores - Voluntario ou Sem V�nculo '
/ D42_9bin4_sum ' D42_9bin4_Quantidade de trabalhadores - Tercerizado ou Trabalhador de Empresa, Cooperativa ou Entidade Prestadora de servi�os '
/ D42_9bin5_sum ' D42_9bin5_Quantidade de trabalhadores - Outro v�nculo n�o permanente '.
execute.

formats D42_sum (f3.0).
formats D42_7bin1_sum (f3.0).
formats D42_7bin2_sum (f3.0).
formats D42_7bin3_sum (f3.0).
formats D42_8bin1_sum (f3.0).
formats D42_8bin2_sum (f3.0).
formats D42_8bin3_sum (f3.0).
formats D42_8bin4_sum (f3.0).
formats D42_8bin5_sum (f3.0).
formats D42_8bin6_sum (f3.0).
formats D42_8bin7_sum (f3.0).
formats D42_8bin8_sum (f3.0).
formats D42_9bin1_sum (f3.0).
formats D42_9bin2_sum (f3.0).
formats D42_9bin3_sum (f3.0).
formats D42_9bin4_sum (f3.0).
formats D42_9bin5_sum (f3.0).




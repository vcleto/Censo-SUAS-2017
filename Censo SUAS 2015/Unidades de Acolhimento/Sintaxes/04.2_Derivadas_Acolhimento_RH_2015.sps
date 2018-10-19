
**Derivadas do RH

*** Idade


COMPUTE  D44_2=DATEDIFF(13702521600, q44_2,"years").
format D44_2 (F2.0).
EXECUTE.

VARIABLE LABELS D44_2 'D44_2_Idade em anos (data ref. 31-12-2014)'.
EXECUTE.

RECODE D44_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D44_2_categoria.
VARIABLE LABELS  D44_2_categoria  'D44_2_categoria_Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  D44_2_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.


*** Escolaridade

recode q44_8 (2 thru 3=1) (else=0) into D44_8bin1.
var labels D44_8bin1 "D44_8bin1_Quantidade de trabalhadores - N�vel Fundamental". 
formats D44_8bin1 (f1).
value labels D44_8bin1
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_8 (4 thru 5=1) (else=0) into D44_8bin2.
var labels D44_8bin2 "D44_8bin2_Quantidade de trabalhadores - N�vel M�dio". 
formats D44_8bin2 (f1).
value labels D44_8bin2
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_8 (6 thru 9=1) (else=0) into D44_8bin3.
var labels D44_8bin3 "D44_8bin3_Quantidade de trabalhadores - N�vel Superior". 
formats D44_8bin3 (f1).
value labels D44_8bin3
0 'N�o'
1 'Sim'. 
Execute. 

*** Profiss�o

recode q44_9 (273=1) (else=0) into D44_9bin1.
var labels D44_9bin1 "D44_9bin1_Quantidade de trabalhadores - Assistente Social". 
formats D44_9bin1 (f1).
value labels D44_9bin1
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_9 (274=1) (else=0) into D44_9bin2.
var labels D44_9bin2 "D44_9bin2_Quantidade de trabalhadores - Psic�logo". 
formats D44_9bin2 (f1).
value labels D44_9bin2
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_9 (275=1) (else=0) into D44_9bin3.
var labels D44_9bin3 "D44_9bin3_Quantidade de trabalhadores - Pedag�go". 
formats D44_9bin3 (f1).
value labels D44_9bin3
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_9 (281=1) (else=0) into D44_9bin4.
var labels D44_9bin4 "D44_9bin4_Quantidade de trabalhadores - Enfermeiro". 
formats D44_9bin4 (f1).
value labels D44_9bin4
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_9 (282=1) (else=0) into D44_9bin5.
var labels D44_9bin5 "D44_9bin5_Quantidade de trabalhadores - M�dico". 
formats D44_9bin5 (f1).
value labels D44_9bin5
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_9 (235=1) (else=0) into D44_9bin6.
var labels D44_9bin6 "D44_9bin6_Quantidade de trabalhadores - Administrador". 
formats D44_9bin6 (f1).
value labels D44_9bin6
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_9 (232=1) (else=0) into D44_9bin7.
var labels D44_9bin7 "D44_9bin7_Quantidade de trabalhadores - Advogado". 
formats D44_9bin7 (f1).
value labels D44_9bin7
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_9 (233=1) (278=1) (else=0) into D44_9bin8.
var labels D44_9bin8 "D44_9bin8_Quantidade de trabalhadores - Fisiterapeuta/Terapia Ocupacional". 
formats D44_9bin8 (f1).
value labels D44_9bin8
0 'N�o'
1 'Sim'. 
Execute. 

** V�nculo

recode q44_10 (138=1) (266=1) (292=1) (else=0) into D44_10bin1.
var labels D44_10bin1 "D44_10bin1_Quantidade de trabalhadores - Servidor P�blico ou Comissionado". 
formats D44_10bin1 (f1).
value labels D44_10bin1
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_10 (139=1) (362=1) (else=0) into D44_10bin2.
var labels D44_10bin2 "D44_10bin2_Quantidade de trabalhadores - Empregado Celetista". 
formats D44_10bin2 (f1).
value labels D44_10bin2
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_10 (265=1) (291=1) (else=0) into D44_10bin3.
var labels D44_10bin3 "D44_10bin3_Quantidade de trabalhadores - Voluntario ou Sem V�nculo". 
formats D44_10bin3 (f1).
value labels D44_10bin3
0 'N�o'
1 'Sim'. 
Execute. 

recode q44_10 (293=1) (264=1) (else=0) into D44_10bin4.
var labels D44_10bin4 "D44_10bin4_Quantidade de trabalhadores - Tercerizado ou Trabalhador de Empresa, Cooperativa ou Entidade Prestadora de servi�os". 
formats D44_10bin4 (f1).
value labels D44_10bin4
0 'N�o'
1 'Sim'. 
Execute. 


recode q44_10 (142=1) (else=0) into D44_10bin5.
var labels D44_10bin5 "D44_10bin5_Quantidade de trabalhadores - Outro v�nculo n�o permanente". 
formats D44_10bin5 (f1).
value labels D44_10bin5
0 'N�o'
1 'Sim'. 
Execute. 

* Para fazer o agregate, ser� necess�rio a vari�vel D41, mas ela n�o deve permanecer na base final do RH. 

NUMERIC D44 (f1.0). 
Recode D44 (sysmiss=1). 

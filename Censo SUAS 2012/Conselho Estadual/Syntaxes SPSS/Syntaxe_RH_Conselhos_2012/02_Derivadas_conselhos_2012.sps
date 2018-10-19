****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade � necess�rio decifrar o c�digo do dia (por exemplo, 31/12/2012 � igual a 13576291200). Para descobrir esse n�mero seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte f�rmula no quadro de express�o n�merica = DATE.DMY(31,12,ano desejado)

**Ser� criada a vari�vel com n�mero procurado. Em seguida rodar a sintax abaixo**

COMPUTE  D65_2=DATEDIFF(13576291200, q65_2,"years").
format D65_2 (F2.0).
EXECUTE.

VARIABLE LABELS D65_2 'Idade em anos (data ref. 31-12-2012)'.
EXECUTE.
***********************

RECODE D65_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D65_categoria.
VARIABLE LABELS  D65_categoria  'Idade (faixas et�rias)'.
EXECUTE.

VALUE LABELS  D65_categoria
1 'At� 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

****vari�veis bin�rias para Representa��o****

RECODE q65_5 (1=1) INTO D65_5bin1.
VARIABLE LABELS  D65_5bin1 'Representante de usu�rios'.
EXECUTE.

VALUE LABELS D65_5bin1
1 'Representante de usu�rios'.
EXECUTE.

RECODE q65_5 (2=1) INTO D65_5bin2.
VARIABLE LABELS  D65_5bin2 'Representante de organiza��o de usu�rios'.
EXECUTE.

VALUE LABELS  D65_5bin2
1 'Representante de organiza��o de usu�rios'.
EXECUTE.

RECODE q65_5 (3=1) INTO D65_5bin3.
VARIABLE LABELS  D65_5bin3 'Representante de entidades de assist�ncia social'.
EXECUTE.

VALUE LABELS  D65_5bin3
1 'Representante de entidades de assist�ncia social'.
EXECUTE.

RECODE q65_5 (4=1) INTO D65_5bin4.
VARIABLE LABELS  D65_5bin4 'Representa��o das entidades dos trabalhadores do setor'.
EXECUTE.

VALUE LABELS  D65_5bin4
1 'Representa��o das entidades dos trabalhadores do setor'.
EXECUTE.

RECODE q65_5 (5=1) INTO D65_5bin5.
VARIABLE LABELS  D65_5bin5 'Representante do Governo'.
EXECUTE.

VALUE LABELS  D65_5bin5
1 'Representante do Governo'.
EXECUTE.

********************AGGREGATE VARI�VEIS BIN�RIAS**************************

AGGREGATE
  /BREAK=IBGE7
  /D65_5bin1_sum=SUM(D65_5bin1)
  /D65_5bin2_sum=SUM(D65_5bin2)
  /D65_5bin3_sum=SUM(D65_5bin3)
  /D65_5bin4_sum=SUM(D65_5bin4)
  /D65_5bin5_sum=SUM(D65_5bin5)
  /nu_conselheiros=N
.
EXECUTE.

RECODE D65_5bin1_sum D65_5bin2_sum D65_5bin3_sum D65_5bin4_sum D65_5bin5_sum nu_conselheiros 
    (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
D65_5bin1_sum	'Representante de usu�rios'
  /D65_5bin2_sum	'Representante de organiza��o de usu�rios'
  /D65_5bin3_sum	'Representante de entidades de assist�ncia social'
  /D65_5bin4_sum	'Representa��o das entidades dos trabalhadores do setor'
  /D65_5bin5_sum	'Representante do Governo'
  /nu_conselheiros	'Quantidade de conselheiros'
.
EXECUTE.

** dataset para merge na dados gerais

dataset declare aggr.
AGGREGATE
/outfile='aggr'
  /BREAK=IBGE7
  /D65_5bin1_sum=SUM(D65_5bin1)
  /D65_5bin2_sum=SUM(D65_5bin2)
  /D65_5bin3_sum=SUM(D65_5bin3)
  /D65_5bin4_sum=SUM(D65_5bin4)
  /D65_5bin5_sum=SUM(D65_5bin5)
  /nu_conselheiros=N
.
EXECUTE.

dataset activate aggr.
RECODE D65_5bin1_sum D65_5bin2_sum D65_5bin3_sum D65_5bin4_sum D65_5bin5_sum nu_conselheiros 
    (SYSMIS=0).
EXECUTE.

dataset activate aggr.
VARIABLE LABELS
D65_5bin1_sum	'Representante de usu�rios'
  /D65_5bin2_sum	'Representante de organiza��o de usu�rios'
  /D65_5bin3_sum	'Representante de entidades de assist�ncia social'
  /D65_5bin4_sum	'Representa��o das entidades dos trabalhadores do setor'
  /D65_5bin5_sum	'Representante do Governo'
  /nu_conselheiros	'Quantidade de conselheiros'
.
EXECUTE.



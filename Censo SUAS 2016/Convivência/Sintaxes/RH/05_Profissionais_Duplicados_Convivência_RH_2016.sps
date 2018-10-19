* Encoding: UTF-8.
******************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR CPF'S DUPLICADOS EM UMA MESMA UNIDADE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************************************************************     ATEN��O    *********************************************************************************************************
SE A VARI�VEL CPF FOR STRING, N�O ESQUECER DE UTILIZAR "".
****************************************************************************************************************************************************************************************

SORT CASES BY id_convivencia(A) v10720(A).
MATCH FILES
  /FILE=*
  /BY id_convivencia v10720
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst PrimaryLast InDupGrp.
VARIABLE LABELS  MatchSequence 'Sequential count of matching cases'.
VARIABLE LEVEL  MatchSequence (SCALE).
FREQUENCIES VARIABLES=MatchSequence.
EXECUTE.


*Total de trabalhadores na base original = 65407
Duplica��es Identificadas = 347
Pessoas com duplica��o = 173
Total de trabalhadores duplicados removidos da base = 174
Total de trabalhadores final = 65233


*** BACKUP Var q23_11 Original (Fun��o)

COMPUTE q23_11_original = q23_11.
VARIABLE LABELS q23_11_original 'Original - q23_11_Fun��o'.
VALUE LABELS 
/q23_11_original
21    "Coordenador(a)"
217    "Educador(a) Social"
216    "Apoio Administrativo"
253    "Estagi�rio(a)"
220    "Servi�os Gerais"
218    "T�cnico(a) de n�vel superior"
254    "Outros".
EXECUTE.


***Duplica��o Coordenador **********************************

IF  (MatchSequence > 1 & q23_11 = 21) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATEN��O:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q23_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=8
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


IF	(q23_4 = " "  |) AND (MatchSequence > 0) q23_11 = 2.
EXECUTE.			


***Duplica��o Tecnico NS -  RODAR AP�S A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & q23_11 = 218) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

SUMMARIZE
  /TABLES=q23_4
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=29
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


*** ATEN��O:  Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com Tec_NS_Duplicado****

IF			
(q23_4 = " " ) AND (MatchSequence > 0) q23_11 = 218.
EXECUTE.


FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.

RENAME VARIABLES
MatchSequence = Duplicado.
VARIABLE LABELS
Duplicado'Trabalhadores com duplica��es'.
VALUE LABELS
/Duplicado
0'N�o havia duplica��es para este trabalhador'
1'Duplica��es deste trabalhador foram removidas da base'
.
DELETE VARIABLES
Coord_Duplicado
Tec_NS_Duplicado.
EXECUTE.


***Foram eliminados 192 trabalhadores duplicados




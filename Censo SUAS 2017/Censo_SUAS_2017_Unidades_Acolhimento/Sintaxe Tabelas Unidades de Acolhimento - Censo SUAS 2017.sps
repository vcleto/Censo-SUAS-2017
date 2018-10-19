* Encoding: windows-1252.







****Quantidade de unidades por Regi�o

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=Regi�o Qtde_Unidades DISPLAY=LABEL
  /TABLE Regi�o [C] BY Qtde_Unidades [S][SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regi�o ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
DELETE VARIABLES Qtde_Unidades. 


****Quantidade de unidades por Porte

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 Qtde_Unidades DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY Qtde_Unidades [S][SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
DELETE VARIABLES Qtde_Unidades. 


****Quantidade de unidades por UF

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=UF Qtde_Unidades DISPLAY=LABEL
  /TABLE UF [C] BY Qtde_Unidades [S][SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
DELETE VARIABLES Qtde_Unidades. 


****Publico

FREQUENCIES VARIABLES=q1.1
  /ORDER=ANALYSIS.


****P�blico por Regi�o

CROSSTABS
  /TABLES=q1.1 BY Regi�o
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****P�blico por Porte

CROSSTABS
  /TABLES=q1.1 BY Porte_pop2010
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

****P�blico por UF

CROSSTABS
  /TABLES=UF BY q1.1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****P�blico por Tempo de Implanta��o (ident_15)

CROSSTABS
  /TABLES=q1.1 BY Dident15.2
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Tipo de Unidade (q1.2.)

CROSSTABS
  /TABLES=q1.2 BY q1.1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Casa Lar em Aldeia (q2.1)

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.

MEANS TABLES=q2.1 BY q1.1
  /CELLS SUM MEAN MIN MAX.


****Natureza desta Unidade (q3)

CROSSTABS
  /TABLES= q1.1 BY q3
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Conv�nio/Termo de Parceria - unidades estaduais (q5)

CROSSTABS
  /TABLES= q1.1 BY q5_est
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Conv�nio/Termo de Parceria - unidades municipais (q5)

MULT RESPONSE GROUPS=$q5  'Se a Entidade possui conv�nio/termo de parceria'(q5.1 q5.2 q5.3 q5.0 q5.99(1)) 
  /FREQUENCIES=$q5.

CTABLES
  /VLABELS VARIABLES=q1.1 q5.1 q5.2 q5.3 q5.0 q5.99 DISPLAY=LABEL
  /TABLE q1.1 [C][COUNT F40.0] BY q5.1 [C] + q5.2 [C] + q5.3 [C] + q5.0 [C] + q5.99 [C]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q5.1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q5.2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q5.3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q5.0 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q5.99 [1] EMPTY=INCLUDE.


****Inscri��o em Conselhos (q6)

NUMERIC Qtde.Unidades (f1.0). 
Recode Qtde.Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q1.1 q6.1 q6.2 q6.3 q6.0 q6.99 Qtde.Unidades DISPLAY=DEFAULT
  /TABLE q1.1 [C][COUNT F40.0] BY q6.1 + q6.2 + q6.3 + q6.0+ q6.99 
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES
  /CATEGORIES VARIABLES=q6.1 q6.2 q6.3 q6.0 q6.99 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde.Unidades.


****Origem (q7 - Municipal ou Estadual)

CROSSTABS
  /TABLES=q1.1 BY q7
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Natureza da Unidade (q3) e Origem dos Dados (q7)

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q1.1 q7 q3 Qtde_Unidades DISPLAY=LABEL
  /TABLE q1.1 [C] BY q7 [C] > q3 [C][COUNT F40.0] + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q7 q3 ORDER=A KEY=VALUE EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades. 


****Se a unidade possui conv�nio com outros munic�pios? (q8)

CROSSTABS
  /TABLES=q1.1 BY q8
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Quantidade de outros munic�pios com Termo de parceria/convenio/coopera��o com esta unidade (q9). 

RECODE D9.sum (Lowest thru 2=1) (3 thru 5=2) (6 thru 10=3) (10 thru Highest=4)  INTO D9.sum.cat.
VARIABLE LABELS  D9.sum.cat 'D9.sum.categorizada'.
EXECUTE.

VALUE LABELS D9.sum.cat
1'At� 2 munic�pios'
2'De 3 a 5 munic�pios'
3'De 6 a 10 munic�pios'
4'Mais de 10 munic�pios'.


CROSSTABS
  /TABLES=q1.1 BY D9.sum.cat
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Em caso de Unidade Estadual Governamental, indique como est� organizada a gest�o administrativa desta unidade (q10)

*Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=q10.1.1 q10.1.2 q10.1.3 DISPLAY=LABEL 
  /TABLE q10.1.1 [COUNT F40.0] + q10.1.2 [COUNT F40.0] + q10.1.3 [COUNT F40.0] 
  /CATEGORIES VARIABLES=q10.1.1 q10.1.2 q10.1.3 [1] EMPTY=INCLUDE 
  /TITLES 
    TITLE='Provis�o de Estrutura F�sica'.


*Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=q10.2.1 q10.2.2 q10.2.3 DISPLAY=LABEL 
  /TABLE q10.2.1 [COUNT F40.0] + q10.2.2 [COUNT F40.0] + q10.2.3 [COUNT F40.0] 
  /CATEGORIES VARIABLES=q10.2.1 q10.2.2 q10.2.3 [1] EMPTY=INCLUDE 
  /TITLES 
    TITLE='Provis�o de Equipamentos e Materiais'.


*Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=q10.3.1 q10.3.2 q10.3.3 DISPLAY=LABEL 
  /TABLE q10.3.1 [COUNT F40.0] + q10.3.2 [COUNT F40.0] + q10.3.3 [COUNT F40.0] 
  /CATEGORIES VARIABLES=q10.3.1 q10.3.2 q10.3.3 [1] EMPTY=INCLUDE 
  /TITLES 
    TITLE='Provis�o de Recursos Humanos'.


****Capacidade M�xima de Atendimento (q11)

CTABLES
  /VLABELS VARIABLES=q1.1 q11 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q11 [SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES.


****Capacidade M�xima de Atendimento segundo modalidade (q11 e q1.2)

CTABLES
  /VLABELS VARIABLES=q1.2 q11 DISPLAY=DEFAULT
  /TABLE q1.2 [C] BY q11 [SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=q1.2 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES.


****Capacidade M�xima Categorica (D11)

CROSSTABS
  /TABLES=q1.1 BY D11
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Acolhidos (q12) 

CTABLES
  /VLABELS VARIABLES=q1.1 q12 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q12 [SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES.


****Acolhidos categorica (D12)

CROSSTABS
  /TABLES=q1.1 BY D12
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Retorno a fam�lia de origem (q13)

CTABLES
  /VLABELS VARIABLES=q1.1 q13.99 q13 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q13.99 [C][COUNT F40.0] + q13 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE  TOTAL=YES
  /CATEGORIES VARIABLES=q13.99 [1] EMPTY=INCLUDE.


****Reintegra��o e Ado��o (q14.1 e q14.2)

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q1.1 q14.1.99 q14.1.1 DISPLAY=LABEL
  /TABLE q1.1 BY q14.1.99 [COUNT F40.0] + q14.1.1 [SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q1.1 [315, 317]  TOTAL=YES
  /CATEGORIES VARIABLES=q14.1.99 [1] EMPTY=INCLUDE.

CTABLES
  /VLABELS VARIABLES=q1.1 q14.2.99 q14.2.1 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q14.2.99 [C][COUNT F40.0] + q14.2.1 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q1.1 [315, 317]  TOTAL=YES
  /CATEGORIES VARIABLES=q14.2.99 [1] EMPTY=INCLUDE.


****Acolhidos por faixa et�ria e p�blico (q15)

CTABLES
  /VLABELS VARIABLES=q1.1 D15.1 D15.2 D15.3 D15.4 D15.5 D15.6 D15.7 D15.8 D15.9 D15.10 D15.11.si
    DISPLAY=DEFAULT
  /TABLE q1.1 BY D15.1 [SUM] + D15.2 [SUM] + D15.3 [SUM] + D15.4 [SUM] + D15.5 [SUM] + D15.6 [SUM] +
 D15.7 [SUM] + D15.8 [SUM] + D15.9 [SUM] + D15.10 [SUM] + D15.11.si [SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE Total=yes.


****Acolhidos por sexo e p�blico (q15)

CTABLES
  /VLABELS VARIABLES=q1.1 q15.1.11 q15.2.11 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q15.1.11 [S][SUM] +q15.2.11 [S][SUM] 
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=yes.


****Pessoas por dormit�rios (D16)

MEANS TABLES=q16 BY q1.1
  /CELLS MEAN MIN MAX.

CROSSTABS
  /TABLES=q1.1 BY D16
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Encaminhadas de outro munic�pio (q17)

CTABLES
  /VLABELS VARIABLES=q1.1 q17.2 q17 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q17.2 [C][COUNT F40.0] + q17 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17.2 [1] EMPTY=INCLUDE.


****Benefici�rios do BPC (q18) por p�blico

CTABLES
  /VLABELS VARIABLES=q1.1 q18.1 q18.2 DISPLAY=DEFAULT
  /TABLE q1.1 BY q18.1 [SUM] + q18.2 [SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


****Benefici�rios do BPC (q18) por Natureza da Unidade

CTABLES
  /VLABELS VARIABLES=q1.1 q4 q18.1 q18.2 DISPLAY=LABEL
  /TABLE q1.1 BY q3 > (q18.1 [SUM] + q18.2 [SUM])
  /CATEGORIES VARIABLES=q1.1 q3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


****Acolhidos com fam�lias benefici�rias do PBF - quantidade de fam�lias (q19)

CTABLES
  /VLABELS VARIABLES=q1.1 q19 DISPLAY=DEFAULT
  /TABLE q1.1 BY q19 [SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


****Acolhidos com fam�lias benefici�rias do PBF - quantidade de fam�lias (q19) por Natureza da Unidade (q3)

CTABLES
  /VLABELS VARIABLES=q1.1 q3 q19 DISPLAY=LABEL
  /TABLE q1.1 BY q3 > (q19 [SUM])
  /CATEGORIES VARIABLES=q1.1 q3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


****Tempo Acolhido (q20) 

CTABLES
  /VLABELS VARIABLES=q1.1 q20.1 q20.2 q20.3 q20.4 q20.5 q20.6 q20.7 q20.8 q20.si
    DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q20.1 [SUM] + q20.2 [SUM] + q20.3 [SUM] + q20.4 [SUM] + q20.5 [SUM] + q20.6 
    [SUM] + q20.7 [SUM] + q20.8 [SUM] + q20.si [SUM]
  /CATEGORIES VARIABLES=q1.1 EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER.


****Caracter�sticas especiais (q21)

CTABLES
  /VLABELS VARIABLES=q1.1 q21.1.1 D21.1 q21.1 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.1.1 [C][COUNT F40.0] + D21.1 [C][COUNT F40.0] + q21.1 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.1.1 D21.1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q1.1 q21.2.1 D21.2 q21.2 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.2.1 [C][COUNT F40.0] + D21.2 [C][COUNT F40.0] + q21.2 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.2.1 D21.2 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q1.1 q21.3.1 D21.3 q21.3 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.3.1 [C][COUNT F40.0] + D21.3 [C][COUNT F40.0] + q21.3 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.3.1 D21.3 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q1.1 q21.4.1 D21.4 q21.4 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.4.1 [C][COUNT F40.0] + D21.4 [C][COUNT F40.0] + q21.4 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.4.1 D21.4 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q1.1 q21.5.1 D21.5 q21.5 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.5.1 [C][COUNT F40.0] + D21.5 [C][COUNT F40.0] + q21.5 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.5.1 D21.5 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q1.1 q21.6.1 D21.6 q21.6 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.6.1 [C][COUNT F40.0] + D21.6 [C][COUNT F40.0] + q21.6 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.6.1 D21.6 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q1.1 q21.7.1 D21.7 q21.7 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.7.1 [C][COUNT F40.0] + D21.7 [C][COUNT F40.0] + q21.7 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.7.1 D21.7 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q1.1 q21.8.1 D21.8 q21.8 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.8.1 [C][COUNT F40.0] + D21.8 [C][COUNT F40.0] + q21.8 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.8.1 D21.8 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q1.1 q21.9.1 D21.9 q21.9 DISPLAY=DEFAULT
  /TABLE q1.1 [C] BY q21.9.1 [C][COUNT F40.0] + D21.9 [C][COUNT F40.0] + q21.9 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 q21.9.1 D21.9 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


****Atividades promovidas sistematicamente pela unidade (q22)

CTABLES
  /VLABELS VARIABLES=q22.1 q22.2 q22.3 q22.4 q22.5 q22.6 q22.7 q22.8 q22.9 q22.10 q22.11 q22.12 
    q22.13 q22.14 q22.15 q22.16 q22.0 q1.1 
    DISPLAY=LABEL
  /TABLE q22.1 + q22.2 + q22.3 + q22.4 + q22.5 + q22.6 + q22.7 + q22.8 + q22.9 + q22.10 + q22.11 + q22.12 + 
    q22.13 + q22.14 + q22.15 + q22.16 + q22.0 BY q1.1 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q22.1 q22.2 q22.3 q22.4 q22.5 q22.6 q22.7 q22.8 q22.9 q22.10 q22.11 q22.12 
    q22.13 q22.14 q22.15 q22.16 q22.0 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


****Usa Prontuario (q23)

CROSSTABS
  /TABLES=q1.1 BY q23
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Usa PIA (q24)

CROSSTABS
  /TABLES=q1.1 BY q24
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Esta unidade oferta Servi�o de Conviv�ncia e Fortalecimento de V�nculos para seus usu�rios? (q25)

CROSSTABS
  /TABLES=q1.1 BY q25
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Orienta��o Religiosa (q26)

CROSSTABS
  /TABLES=q1.1 BY q26
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Se possui crit�rios de sexo (q27)

CROSSTABS
  /TABLES=q1.1 BY q27
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Grupos com v�nculos (q28)

CROSSTABS
  /TABLES=q1.1 BY q28
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Visitas Familiares (q29)

CROSSTABS
  /TABLES=q1.1 BY q29
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Acompanhamento p�s desligamento (q30)

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q1.1 q30.1 q30.2 q30.3 q30.98 q30.99 q30.0 Qtde_Unidades 
    DISPLAY=LABEL
  /TABLE q1.1 BY q30.1 [COUNT F40.0] + q30.2 [COUNT F40.0] + q30.3 [COUNT F40.0] + q30.98 [COUNT 
    F40.0] + q30.99 [COUNT F40.0] + q30.0 [COUNT F40.0] + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30.1 q30.2 q30.3 q30.98 q30.99 q30.0 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades.  


****Tempo de acompanhamento p�s desligamento (q31)

CROSSTABS
  /TABLES=q1.1 BY q31
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Articula��o (q32)

CTABLES
  /VLABELS VARIABLES=q32.1.1 q32.1.2 q32.1.3 q32.1.4 q32.1.5 q32.1.6 q32.1.7 q32.1.8 q32.1.0 q32.1.9 
    DISPLAY=LABEL
  /TABLE q32.1.1 [COUNT F40.0] + q32.1.2 [COUNT F40.0] + q32.1.3 [COUNT F40.0] + q32.1.4 [COUNT F40.0] + q32.1.5 [COUNT F40.0] +
 q32.1.6 [COUNT F40.0] + q32.1.7 [COUNT F40.0] + q32.1.8 [COUNT F40.0] + q32.1.0 [COUNT F40.0] + q32.1.9 
  /CATEGORIES VARIABLES=q32.1.1 q32.1.2 q32.1.3 q32.1.4 q32.1.5 q32.1.6 q32.1.7 q32.1.8 q32.1.0 q32.1.9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE= 'Conselho Tutelar'.

CTABLES
/VLABELS VARIABLES=q32.2.1 q32.2.2 q32.2.3 q32.2.4 q32.2.5 q32.2.6 q32.2.7 q32.2.8 q32.2.0 q32.2.9 
    DISPLAY=LABEL
  /TABLE q32.2.1 [COUNT F40.0] + q32.2.2 [COUNT F40.0] + q32.2.3 [COUNT F40.0] + q32.2.4 [COUNT F40.0] + q32.2.5 [COUNT F40.0] +
 q32.2.6 [COUNT F40.0] + q32.2.7 [COUNT F40.0] + q32.2.8 [COUNT F40.0] + q32.2.0 [COUNT F40.0] + q32.2.9 
  /CATEGORIES VARIABLES=q32.2.1 q32.2.2 q32.2.3 q32.2.4 q32.2.5 q32.2.6 q32.2.7 q32.2.8 q32.2.0 q32.2.9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='CRAS'.

CTABLES
 /VLABELS VARIABLES=q32.3.1 q32.3.2 q32.3.3 q32.3.4 q32.3.5 q32.3.6 q32.3.7 q32.3.8 q32.3.0 q32.3.9 
    DISPLAY=LABEL
  /TABLE q32.3.1 [COUNT F40.0] + q32.3.2 [COUNT F40.0] + q32.3.3 [COUNT F40.0] + q32.3.4 [COUNT F40.0] + q32.3.5 [COUNT F40.0] +
 q32.3.6 [COUNT F40.0] + q32.3.7 [COUNT F40.0] + q32.3.8 [COUNT F40.0] + q32.3.0 [COUNT F40.0] + q32.3.9 
  /CATEGORIES VARIABLES=q32.3.1 q32.3.2 q32.3.3 q32.3.4 q32.3.5 q32.3.6 q32.3.7 q32.3.8 q32.3.0 q32.3.9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='CREAS'.

CTABLES
 /VLABELS VARIABLES=q32.4.1 q32.4.2 q32.4.3 q32.4.4 q32.4.5 q32.4.6 q32.4.7 q32.4.8 q32.4.0 q32.4.9 
    DISPLAY=LABEL
  /TABLE q32.4.1 [COUNT F40.0] + q32.4.2 [COUNT F40.0] + q32.4.3 [COUNT F40.0] + q32.4.4 [COUNT F40.0] + q32.4.5 [COUNT F40.0] +
 q32.4.6 [COUNT F40.0] + q32.4.7 [COUNT F40.0] + q32.4.8 [COUNT F40.0] + q32.4.0 [COUNT F40.0] + q32.4.9 
  /CATEGORIES VARIABLES=q32.4.1 q32.4.2 q32.4.3 q32.4.4 q32.4.5 q32.4.6 q32.4.7 q32.4.8 q32.4.0 q32.4.9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Centro Dia'.

CTABLES
 /VLABELS VARIABLES=q32.5.1 q32.5.2 q32.5.3 q32.5.4 q32.5.5 q32.5.6 q32.5.7 q32.5.8 q32.5.0 q32.5.9 
    DISPLAY=LABEL
  /TABLE q32.5.1 [COUNT F40.0] + q32.5.2 [COUNT F40.0] + q32.5.3 [COUNT F40.0] + q32.5.4 [COUNT F40.0] + q32.5.5 [COUNT F40.0] +
 q32.5.6 [COUNT F40.0] + q32.5.7 [COUNT F40.0] + q32.5.8 [COUNT F40.0] + q32.5.0 [COUNT F40.0] + q32.5.9 
  /CATEGORIES VARIABLES=q32.5.1 q32.5.2 q32.5.3 q32.5.4 q32.5.5 q32.5.6 q32.5.7 q32.5.8 q32.5.0 q32.5.9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Centro de Refer�ncia Especializado para Popula��o de Rua - Centro POP'.

CTABLES
 /VLABELS VARIABLES=q32.6.1 q32.6.2 q32.6.3 q32.6.4 q32.6.5 q32.6.6 q32.6.7 q32.6.8 q32.6.0 q32.6.9 
    DISPLAY=LABEL
  /TABLE q32.6.1 [COUNT F40.0] + q32.6.2 [COUNT F40.0] + q32.6.3 [COUNT F40.0] + q32.6.4 [COUNT F40.0] + q32.6.5 [COUNT F40.0] +
 q32.6.6 [COUNT F40.0] + q32.6.7 [COUNT F40.0] + q32.6.8 [COUNT F40.0] + q32.6.0 [COUNT F40.0] + q32.6.9 
  /CATEGORIES VARIABLES=q32.6.1 q32.6.2 q32.6.3 q32.6.4 q32.6.5 q32.6.6 q32.6.7 q32.6.8 q32.6.0 q32.6.9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Outras Unidades de Acolhimento'.


****Vizinhan�a (q33)

CROSSTABS
  /TABLES=q1.1 BY q33
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Transporte p�blico (q34)

CROSSTABS
  /TABLES=q1.1 BY q34
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Espa�o f�sico (q35)

CTABLES
  /VLABELS VARIABLES=q1.1 q35.1 q35.2 q35.3 q35.4 q35.5 q35.6 q35.7 q35.8 
    DISPLAY=DEFAULT
  /TABLE q1.1 BY q35.1 [MEAN] + q35.2 [MEAN] + q35.3 [MEAN] + q35.4 [MEAN] + q35.5 [MEAN] + q35.6 
    [MEAN] + q35.7 [MEAN] + q35.8 [MEAN]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

CTABLES
  /VLABELS VARIABLES=q1.1 q35.9 q35.10 q35.11 q35.12 q35.13 q35.14 q35.15 
    DISPLAY=DEFAULT
  /TABLE q1.1 BY q35.9 [COUNT F40.0] + q35.10 [COUNT F40.0] + q35.11 [COUNT F40.0] + q35.12 [COUNT 
    F40.0] + q35.13 [COUNT F40.0] + q35.14 [COUNT F40.0] + q35.15 [COUNT F40.0]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q35.9 q35.10 q35.11 q35.12 q35.13 q35.14 q35.15 [1] EMPTY=INCLUDE.


****Equipamentos (q36)

CTABLES
  /VLABELS VARIABLES=q36.1 q36.2 q36.3 q36.4 q36.5 q36.6 q36.7 q36.8 q36.9 q36.10 q36.11 q36.12 
    q36.13 q36.14 q36.15 q36.16 q36.17 q36.18 q36.19 q36.20 q36.21 q36.22 q36.23 q36.24 q36.25 q1.1 
    DISPLAY=LABEL
  /TABLE q36.1 + q36.2 + q36.3 + q36.4 + q36.5 + q36.6 + q36.7 + q36.8 + q36.9 + q36.10 + q36.11 + 
    q36.12 + q36.13 + q36.14 + q36.15 + q36.16 + q36.17 + q36.18 + q36.19 + q36.20 + q36.21 + q36.22 + 
    q36.23 + q36.24 + q36.25 BY q1.1 [COUNT F40.0]
  /CATEGORIES VARIABLES=q36.1 q36.2 q36.3 q36.4 q36.5 q36.6 q36.7 q36.8 q36.9 q36.10 q36.11 q36.12 
    q36.13 q36.14 q36.15 q36.16 q36.17 q36.18 q36.19 q36.20 q36.21 q36.22 q36.23 q36.24 q36.25 [1] 
    EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

*Camas, Arm�rios, televis�es e computadores

CTABLES
  /VLABELS VARIABLES=q1.1 q36.16.1 q36.17.1 q36.25.1 q36.20.1 DISPLAY=DEFAULT
  /TABLE q1.1 BY  q36.16.1 [MEAN, SUM] + q36.17.1 [MEAN, SUM] +  q36.25.1 [MEAN, SUM] + q36.20.1 [MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

*Computadores categorizada

CROSSTABS
  /TABLES=q1.1 BY D36.20.1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Acessibilidade (q37) por p�blico

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q1.1 q37.1 q37.2 q37.3 q37.4 Qtde_Unidades DISPLAY=LABEL
  /TABLE q1.1 [C] BY q37.1 [COUNT F40.0] + q37.2 [COUNT F40.0] + q37.3 [COUNT F40.0] + q37.4 [COUNT 
    F40.0] + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q37.1 q37.2 q37.3 q37.4 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades. 


****Acessibilidade (q37) por natureza da unidade (q3)

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q3 q37.1 q37.2 q37.3 q37.4 Qtde_Unidades DISPLAY=LABEL
  /TABLE q3 [C] BY q37.1 [COUNT F40.0] + q37.2 [COUNT F40.0] + q37.3 [COUNT F40.0] + q37.4 [COUNT 
    F40.0] + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q3 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q37.1 q37.2 q37.3 q37.4 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades. 




****H� outras adapta��es para assegurar a acessibilidade desta unidade? (q38)

MULT RESPONSE GROUPS=$q38  'Outras adapta��es para assegurar a acessibilidade da unidade'(q38.1 q38.2 q38.3 q38.4 q38.5 q38.6 q38.7(1)) 
  /FREQUENCIES=$q38.

CTABLES
  /VLABELS VARIABLES=q1.1 q38.1 q38.2 q38.3 q38.4 q38.5 q38.6 q38.7 DISPLAY=LABEL
  /TABLE q1.1 [C][COUNT F40.0] BY q38.1 [C] + q38.2 [C] + q38.3 [C] + q38.4 [C] + q38.5 [C] + q38.6  [C] + q38.7  [C]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q38.1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q38.2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q38.3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q38.4 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q38.5 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q38.6 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q38.7 [1] EMPTY=INCLUDE.


****H� profissionais que j� participaram de capacita��o sobre os seguintes temas? (q39)

MULT RESPONSE GROUPS=$q39  'N�mero de unidades com profissionais que participaram de capacita��o nos temas citados'(q39.1 q39.2 q39.3 q39.4 q39.5 q39.6 q39.7 q39.8 q39.9 q39.10 q39.11 q39.12 q39.13 q39.14 q39.15 q39.0 q39.99(1)) 
  /FREQUENCIES=$q39.


****Nesta unidade, algum profissional j� participou de algum curso do CAPACITASUAS? (q40)

CROSSTABS
  /TABLES=q1.1 BY q40
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

*n�mero e m�dia de profissionais que participaram do CAPACITASUAS (q40.1)

CTABLES
  /VLABELS VARIABLES=q1.1 q40.1 DISPLAY=DEFAULT
  /TABLE q1.1 BY q40.1 [MEAN, SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


****atividades do coordenador (q41)

CROSSTABS
  /TABLES=q1.1 BY q41
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


****Forma que o question�rio foi coletado (q43)

CROSSTABS
  /TABLES=q1.1 BY q43
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.




************************************************************************************************************************
**************************** Tabelas de M�dias de Recursos Humanos *****************************************
************************************************************************************************************************



****N�mero de trabalhadoras e trabalhadores por Regi�o e p�blico

formats D42_sum (f3.2).
CTABLES
  /VLABELS VARIABLES=q1.1 Regi�o D42_sum DISPLAY=LABEL
  /TABLE q1.1 BY Regi�o > D42_sum [SUM]
  /CATEGORIES VARIABLES=q1.1 Regi�o ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


****N�mero de trabalhadoras e trabalhadores por Porte

formats D42_sum (f3.2).
CTABLES
  /VLABELS VARIABLES=q1.1 Porte_pop2010 D42_sum DISPLAY=LABEL
  /TABLE q1.1 BY Porte_pop2010 > D42_sum [SUM]
  /CATEGORIES VARIABLES=q1.1 Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


*N�mero de trabalhadoras e trabalhadores por Escolaridade.

formats D42.9bin1_sum D42.9bin2_sum D42.9bin3_sum(f3.2).
CTABLES
  /VLABELS VARIABLES=q1.1 D42.9bin1_sum D42.9bin2_sum D42.9bin3_sum DISPLAY=LABEL
  /TABLE q1.1 [C] BY D42.9bin1_sum [SUM] + D42.9bin2_sum [SUM] + D42.9bin3_sum [SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


*N�mero de trabalhadoras e trabalhadores por Forma��o

formats D42.10bin1_sum D42.10bin2_sum D42.10bin3_sum D42.10bin4_sum D42.10bin5_sum D42.10bin6_sum D42.10bin7_sum D42.10bin8_sum (f3.2).
CTABLES
  /VLABELS VARIABLES=q1.1 D42.10bin1_sum D42.10bin2_sum D42.10bin3_sum D42.10bin4_sum D42.10bin5_sum 
    D42.10bin6_sum D42.10bin7_sum D42.10bin8_sum 
    DISPLAY=LABEL
  /TABLE q1.1 [C] BY D42.10bin1_sum [SUM] + D42.10bin2_sum [SUM] + D42.10bin3_sum [SUM] + 
    D42.10bin4_sum [SUM] + D42.10bin5_sum [SUM] + D42.10bin6_sum [SUM] + D42.10bin7_sum [SUM] + 
    D42.10bin8_sum [SUM]
  /CATEGORIES VARIABLES=q1.1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.







*****************Rodar na base de Recursos Humanos

*****Abrir Banco RH.
GET FILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2017_Censo_SUAS\2017_Base de Dados\Unidade de Acolhimento\CENSO SUAS Acolhimento RH Municipal & Estadual final.sav'.
DATASET NAME RH_Munic_Estad.
EXECUTE.
DATASET ACTIVATE RH_Munic_Estad.

****fun��o (q42.12)

Frequencies q42.12.
execute.




****Exportar sa�da.

OUTPUT EXPORT
  /CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING
  /XLS  DOCUMENTFILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2017_Censo_SUAS\2017_Base de Dados\Unidade de Acolhimento\tabelas DG Municipal e Estadual Acolhimento 2017.xls'
     OPERATION=CREATEFILE
     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES.
















﻿* Encoding: UTF-8.


*CENSO SUAS 2017*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************



FREQUENCIES VARIABLES=Região Porte_pop2010 UF
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=FaixasEtarias q52.3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q52.9
  /ORDER=ANALYSIS.
CTABLES 
  /VLABELS VARIABLES=Região D52.9bin1 D52.9bin2 D52.9bin3 DISPLAY=LABEL 
  /TABLE Região [C] BY D52.9bin1 [S][SUM, LAYERCOLPCT.SUM PCT40.1] + D52.9bin2 [S][SUM, 
    LAYERCOLPCT.SUM PCT40.1] + D52.9bin3 [S][SUM, LAYERCOLPCT.SUM PCT40.1] 
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

CTABLESCTABLES 
  /VLABELS VARIABLES=Porte_pop2010 D52.9bin1 D52.9bin2 D52.9bin3 DISPLAY=LABEL 
  /TABLE Porte_pop2010 BY D52.9bin1 [S][SUM, LAYERCOLPCT.SUM PCT40.1] + D52.9bin2 [S][SUM, 
    LAYERCOLPCT.SUM PCT40.1] + D52.9bin3 [S][SUM, LAYERCOLPCT.SUM PCT40.1] 
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE.

CTABLES 
  /VLABELS VARIABLES=UF D52.9bin1 D52.9bin2 D52.9bin3 DISPLAY=LABEL 
  /TABLE UF BY D52.9bin1 [S][SUM, LAYERCOLPCT.SUM PCT40.1] + D52.9bin2 [S][SUM, LAYERCOLPCT.SUM 
    PCT40.1] + D52.9bin3 [S][SUM, LAYERCOLPCT.SUM PCT40.1] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE.

FREQUENCIES VARIABLES=q52.10
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=UF D52.10bin1 D52.10bin2 D52.10bin3 D52.10bin4 D52.10bin5 DISPLAY=LABEL 
  /TABLE UF BY D52.10bin1 [SUM] + D52.10bin2 [SUM] + D52.10bin3 [SUM] + D52.10bin4 [SUM] + 
    D52.10bin5 [SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE.

FREQUENCIES VARIABLES=q52.11
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=Região D52.11bin1 D52.11bin2 D52.11bin3 D52.11bin4 DISPLAY=LABEL 
  /TABLE Região BY D52.11bin1 [S][SUM, COLPCT.SUM PCT40.1] + D52.11bin2 [S][SUM, COLPCT.SUM 
    PCT40.1] + D52.11bin3 [S][SUM, COLPCT.SUM PCT40.1] + D52.11bin4 [S][SUM, COLPCT.SUM PCT40.1] 
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

CTABLES 
  /VLABELS VARIABLES=Porte_pop2010 D52.11bin1 D52.11bin2 D52.11bin3 D52.11bin4 DISPLAY=LABEL 
  /TABLE Porte_pop2010 BY D52.11bin1 [S][SUM, COLPCT.SUM PCT40.1] + D52.11bin2 [S][SUM, COLPCT.SUM 
    PCT40.1] + D52.11bin3 [S][SUM, COLPCT.SUM PCT40.1] + D52.11bin4 [S][SUM, COLPCT.SUM PCT40.1] 
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

CTABLES 
  /VLABELS VARIABLES=UF D52.11bin1 D52.11bin2 D52.11bin3 D52.11bin4 DISPLAY=LABEL 
  /TABLE UF BY D52.11bin1 [S][SUM, COLPCT.SUM PCT40.1] + D52.11bin2 [S][SUM, COLPCT.SUM PCT40.1] + 
    D52.11bin3 [S][SUM, COLPCT.SUM PCT40.1] + D52.11bin4 [S][SUM, COLPCT.SUM PCT40.1] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


FREQUENCIES q52.12 q52.13.

FREQUENCIES VARIABLES=q52.15 q52.16 q52.17 
  /ORDER=ANALYSIS.

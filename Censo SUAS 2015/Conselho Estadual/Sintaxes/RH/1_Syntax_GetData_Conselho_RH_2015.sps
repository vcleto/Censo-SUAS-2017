
GET DATA
  /TYPE=TXT
  /FILE="\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ "+
    "Tratamento\Conselhos\Base de Dados\Base original\Municipal - 05-abr\rh.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  codigo_ibge F2.0
  v10899 A43
  v10900 EDATE10
  v10901 F1.0
  v10902 F2.0
  v10903 F1.0
  v10904 F1.0
  v10905 F1.0
  v10906 EDATE10
  v10907 EDATE10
  v10908 F11.0.
CACHE.
EXECUTE.
DATASET NAME DataSet3 WINDOW=FRONT.

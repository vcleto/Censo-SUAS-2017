*** Sintaxe Censo SUAS 2014 - Vari�vel v10947 (q14) ***

* 01_Variables Labels Acolhimento

VARIABLE LABELS
id_acolhimento	'id_acolhimento'
codigo_ibge 'codigo_ibge'
v10947 'q14_Quais munic�pios fazem parte deste conv�nio ou termo de coorpera��o?'.
EXECUTE.

* 02_Rename Variables Acolhimento

RENAME VARIABLES
id_acolhimento	= N�IDENTIFICADOR
v10947 = q14.
EXECUTE.

* 03_ Rename Labels Acolhimento

VARIABLE LABELS
q14 'q14_Quais munic�pios fazem parte deste conv�nio ou termo de coorpera��o?'.
EXECUTE.

** Fazer o processo de limpeza da base de dados.
*1) Verificar e corrigir o nome das vari�veis e inserir o c�digo do IBGE 
* 2) Inserir informa��es do munic�pio sede e do munic�pio consorciado
* 3) Inserir informa��es da base de Dados Gerais


*04_Derivadas Acolhimento

IF  (IBGE = q14) Sede=0.
EXECUTE.

recode Sede (0=0) (else=1). 
execute. 


*fazer o agregate da vari�vel sede
 
DATASET DECLARE q14_conv�nio. 
AGGREGATE 
  /OUTFILE='q14_conv�nio' 
  /BREAK=N�IDENTIFICADOR 
  /D14_sum=SUM(Sede).


*Fazer o merge com a base geral do Acolhimento

MATCH FILES /FILE=*
  /TABLE='q14_conv�nio'
  /BY N�IDENTIFICADOR.
EXECUTE.


* Na base de Dados Gerais

Variable labels D14_sum 'D14_sum_Quantidade de outros munic�pios que tem termo de parceria/conveio/coopera��o com esta unidade'.
execute.

* Posteriormente, fazer o merge com a base Dados Gerais do Acolhimento


*05_Tabela
* A tabela est� inserida na syntax "05_Tabelas_Acolhimento_DG_2014".




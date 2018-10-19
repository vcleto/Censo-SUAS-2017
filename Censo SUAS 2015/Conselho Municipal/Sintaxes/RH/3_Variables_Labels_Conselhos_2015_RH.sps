*****************************************************************************
**** Syntax Censo SUAS - RH ******Conselho Municipal 2015******
*Variables Labels*Value Labels*
*****************************************************************************


VARIABLE LABELS 
codigo_ibge 'codigo_ibge'
v10899'Nome'
v10900'Data de nascimento'
v10901'Sexo'
v10902'Escolaridade'
v10903'Representa��o'
v10904'Fun��o:'
v10905'V�nculo'
v10906'Data de In�cio do mandato'
v10907'Data de t�rmino do mandato'
v10908'CPF'
.
execute.


VALUE LABELS
/v10901
1"F"
2"M"
/v10902
1"Sem Escolaridade"
2"Fundamental Incompleto"
3"Fundamental Completo"
4"M�dio Incompleto"
5"M�dio Completo"
6"Superior Incompleto"
7"Superior Completo"
8"Especializa��o"
9"Mestrado"
10"Doutorado"
/v10903
1"Governamental - Assist�ncia Social"
2"Governamental � Educa��o"
3"Governamental � Sa�de"
4"Governamental � Outras �reas"
5"Sociedade C�vil - das entidade e Organiza��es de Ass. Social"
6"Sociedade C�vil - organiza��es de usu�rios"
7"Sociedade C�vil - organiza��es dos trabalhadores"
8"Sociedade C�vil - dos usu�rios"
/v10904
00"Outros"
01'Conselheiro(a) Presidente'
02"Vice-Presidente"
03"Conselheiro Titular"
04"Conselheiro Suplente"
05'Coordenador(a)'
06"Apoio Administrativo"
07"Educador Social"
08"Estagi�rio(a)"
09"Secret�rio Executivo"
10"Servi�os Gerais"
11"T�cnico(a) N�vel M�dio"
12"T�cnico(a) N�vel Superior"
/v10905
1"Sem v�nculo"
2"Comissionado"
3"Servidor/Estatut�rio"
4"Servidor Tempor�rio"
5"Empregado P�blico Celetista � CLT"
6"Terceirizado"
7"Outro v�nculo n�o permanente"
8"Trabalhador de empresa/Cooperativa/Entidade Prestadora de Servi�o"
9"Voluntario"
.
EXECUTE.


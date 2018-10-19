VARIABLE LABELS
v3931 "Nome"
v3932 "Data de Nascimento:"
v3933 "Sexo"
v3936 "Escolaridade"
v3935 "Representa��o"
v3937 "Fun��o"
v4033 "Data de In�cio do mandato"
v4034 "Data de t�rmino do mandato"
v4035 "CPF:"
.
execute.

VALUE LABELS
/v3933
1   "Feminino"
2   "Masculino"
/v3936
251   "Sem escolaridade"
252   "Ensino Fundamental Incompleto"
253   "Ensino Fundamental Completo"
254   "Ensino M�dio Incompleto"
255   "Ensino M�dio Completo"
256   "Ensino Superior Incompleto"
257   "Ensino Superior Completo"
258   "Especializa��o"
260   "Mestrado"
261   "Doutorado"
/v3935
1   "Representante de usu�rios"
2   "Representante de organiza��o de usu�rios"
3   "Representante de entidades de assist�ncia social"
4   "Representa��o das entidades dos trabalhadores do setor"
5   "Representante do Governo"
/v3937
20   "Presidente"
308   "Vice-Presidente"
105   "Conselheiro(a) Titular"
106   "Conselheiro(a) Suplente"
.
execute.

RENAME VARIABLES
codigo_ibge =	IBGE7
v3931	=	q65_1			
v3932	=	q65_2			
v3933	=	q65_3			
v3936	=	q65_4			
v3935	=	q65_5			
v3937	=	q65_6			
v4033	=	q65_7			
v4034	=	q65_8			
v4035	=	q65_9			
.
execute.

VARIABLE LABELS
IBGE7		"C�digo do IBGE"
q65_1		"q65_1_Nome"	
q65_2		"q65_2_Data de Nascimento"	
q65_3		"q65_3_Sexo"	
q65_4		"q65_4_Escolaridade"	
q65_5		"q65_5_Representa��o"	
q65_6		"q65_6_Fun��o"	
q65_7		"q65_7_Data de In�cio do mandato"	
q65_8		"q65_8_Data de t�rmino do mandato"	
q65_9		"q65_9_CPF"	
.
execute.

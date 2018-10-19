****o arquivo do RH deve ser importado atrav�s do arquivo CSV (n�o pode ser XLSX). Ao importar, solicitar a altera��o da vari�vel v4789 (referente � data de nascimento)*
de formato string para o formato data*****

*******  ANTES DE IMPORTAR PARA O SPSS:
- TRANSFORMAR OS CPFs PARA FORMATO COM M�SCARA DE CPF NO EXCEL

VARIABLE LABELS
codigo_ibge'C�digo IBGE do Munic�pio'
id_cras'N�mero Identificador da Unidade'
v10482'Nome Completo'
v10484'Data de nascimento'
v10485'Sexo'
v10486'N�mero do CPF'
v10487'RG - N�mero'
v10488'RG - �rg�o Emissor'
v10490'RG - UF'
v11953'Email'
v10491'Escolaridade'
v10492'Profiss�o'
v10493'V�nculo'
v10494'Fun��o'
v10495'Carga hor�ria SEMANAL'
v10496'In�cio do exerc�cio da fun��o'
v10498'Servi�os/Atividade a qual o profissional est� vinculado - Principal servi�o/atividade'
v11876'Servi�os/Atividade a qual o profissional est� vinculado - Segundo principal servi�o/atividade'
v10499'Servi�os/Atividade a qual o profissional est� vinculado - Terceiro principal servi�o/atividade'
co_seq_dirigente'C�digo do Dirigente'
.
EXECUTE.


VALUE LABELS
/v10485
1    "Feminino"
2    "Masculino"
/v10491
251    "Sem Escolaridade"
252    "Fundamental Incompleto"
253    "Fundamental Completo"
254    "M�dio Incompleto"
255    "M�dio Completo"
256    "Superior Incompleto"
257    "Superior Completo"
258    "Especializa��o"
260    "Mestrado"
261    "Doutorado"
/v10492
273    "Assistente Social"
274    "Psic�logo"
275    "Pedagogo"
232    "Advogado"
235    "Administrador"
234    "Antrop�logo"
276    "Soci�logo"
278    "Fisioterapeuta"
283    "Cientista Pol�tico"
279    "Nutricionista"
282    "M�dico"
233    "Terapeuta Ocupacional"
236    "Economista"
281    "Enfermeiro"
240    "Analista de Sistema"
241    "Programador"
237    "Outra forma��o de n�vel superior"
238    "Profissional de n�vel m�dio"
239    "Sem forma��o profissional"
/v10493
292    "Comissionado"
139    "Empregado P�blico (CLT)"
142    "Outro v�nculo n�o permanente"
266    "Servidor Tempor�rio"
138    "Servidor Estatut�rio"
293    "Terceirizado"
264    "Trabalhador de Empresa/Cooperativa/Entidade Prestadora de Servi�os"
265    "Volunt�rio"
291    "Sem V�nculo"
/v10494
1    "Apoio Administrativo"
2    "Coordenador(a)"
3    "Educador(a) Social"
4    "Estagi�rio(a)"
5    "Servi�os Gerais"
6    "Cadastrador(a)"
7    "T�cnico(a) de N�vel Superior"
8    "T�cnico(a) de N�vel M�dio"
99    "Outros"
/v10495
262    "Menor que 20 horas semanais"
272    "20 horas semanais"
18    "30 horas semanais"
20    "40 horas semanais"
263    "Maior que 40 horas semanais"
/v10498
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99    "Outros"
/v11876
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99    "Outros"
/v10499
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99    "Outros".
EXECUTE.

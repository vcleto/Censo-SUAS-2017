


VARIABLE LABELS
v10716'Nome Completo'
v10718'Data de nascimento'
v10719'SEXO'
v10720'N�mero do CPF'
v10721'Dados do RG - N�mero'
v10722'Dados do RG - �rg�o Emissor'
v10723'Dados do RG -UF'
v10724'Escolaridade'
v10726'Profiss�o'
v10727'V�nculo'
v10729'Fun��o'
v10730'Carga hor�ria SEMANAL'
v10731'In�cio do exerc�cio da fun��o'
.
EXECUTE.




VALUE LABELS
/v10719
2    "M"
1    "F"
/v10724
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
/v10726
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
/v10727
292    "Comissionado"
138    "Servidor Estatut�rio"
266    "Servidor Tempor�rio"
139    "Empregado P�blico Celetista - CLT"
361    "Empregado P�blico Celetista - CLT"
362    "Empregado Celetista do Setor Privado"
293    "Terceirizado"
142    "Outro v�nculo n�o permanente"
265    "Volunt�rio"
/v10729
21    "Coordenador(a)"
217    "Educador(a) Social"
216    "Apoio Administrativo"
253    "Estagi�rio(a)"
220    "Servi�os Gerais"
218    "T�cnico(a) de n�vel superior"
254    "Outros"
/v10730
262    "Menor que 20 horas semanais"
272    "20 horas semanais"
18    "30 horas semanais"
20    "40 horas semanais"
263    "Maior que 40 horas semanais"
.
EXECUTE.


FILTER OFF.
USE ALL.
SELECT IF (v10719 = 1 | v10719 = 2).
EXECUTE.
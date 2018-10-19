VARIABLE LABELS
CD_IBGE'C�digo IBGE do Munic�pio'
N�IDENTIFICADOR'N�mero Identificador da Unidade'
q43_1_nome'q43_1_Nome Completo'
co_seq_dirigente'co_seq_dirigente_C�digo do Dirigente'
q43_2_dtnasc'q43_2_Data de nascimento'
q43_3_sexo'q43_3_Sexo'
q43_4_cpf'q43_4_N�mero do CPF'
q43_5_1_rg_num'q43_5_1_RG - N�mero'
q43_5_2_rg_�rg�o'q43_5_2_RG - �rg�o Emissor'
q43_5_3_rg_uf'q43_5_3_RG - UF'
q43_6_email'q43_6_Email'
q43_7_esc'q43_7_Escolaridade'
q43_8_prof'q43_8_Profiss�o'
q43_9_vinc'q43_9_V�nculo'
q43_10_fun��o'q43_10_Fun��o'
q43_11'q43_11_Carga hor�ria SEMANAL'
q43_12'q43_12_In�cio do exerc�cio da fun��o'
q43_13_1'q43_13_1_Servi�os/Atividade a qual o profissional est� vinculado - Principal servi�o/atividade'
q43_13_2'q43_13_2_Servi�os/Atividade a qual o profissional est� vinculado - Segundo principal servi�o/atividade'
q43_13_3'q43_13_3_Servi�os/Atividade a qual o profissional est� vinculado - Terceiro principal servi�o/atividade'
.
EXECUTE.


VALUE LABELS
/q43_3_sexo
1    "Feminino"
2    "Masculino"
/q43_7_esc
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
/q43_8_prof
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
/q43_9_vinc
292    "Comissionado"
139    "Empregado P�blico (CLT)"
142    "Outro v�nculo n�o permanente"
266    "Servidor Tempor�rio"
138    "Servidor Estatut�rio"
293    "Terceirizado"
264    "Trabalhador de Empresa/Cooperativa/Entidade Prestadora de Servi�os"
265    "Volunt�rio"
291    "Sem V�nculo"
/q43_10_fun��o
1    "Apoio Administrativo"
2    "Coordenador(a)"
3    "Educador(a) Social"
4    "Estagi�rio(a)"
5    "Servi�os Gerais"
6    "Cadastrador(a)"
7    "T�cnico(a) de N�vel Superior"
8    "T�cnico(a) de N�vel M�dio"
99    "Outros"
/q43_11
262    "Menor que 20 horas semanais"
272    "20 horas semanais"
18    "30 horas semanais"
20    "40 horas semanais"
263    "Maior que 40 horas semanais"
/q43_13_1
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99    "Outros"
/q43_13_2
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99    "Outros"
/q43_13_3
1    "Atividades de gest�o (administrativo)"
2    "Servi�o de Prote��o e Atendimento Integral � Fam�lia (PAIF)"
3    "Servi�o de Conviv�ncia e Fortalecimento de V�nculos"
4    "Cadastramento e/ou Atualiza��o Cadastral (Cad�nico)"
99    "Outros".
EXECUTE.

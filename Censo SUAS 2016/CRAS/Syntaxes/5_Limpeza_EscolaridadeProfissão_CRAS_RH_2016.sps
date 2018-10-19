**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA LIMPAR ESCOLARIDADE E PROFISS�O INCOMPAT�VEIS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

**********************************Limpeza da incompatibilidade das q43_7_esc e q43_8_prof  ****************************************
*As vari�veis q43_7_esc e q43_8_prof expressam escolaridade e profiss�o dos trabalhadores, por�m existem inconsist�ncias.
*Em alguns casos a escolaridade est� acima da profiss�o, e em outros a profiss�o acima da escolaridade.
*Em ambos os casos a escolaridade indicada prevalece. A syntax abaixo converte os valores de profiss�o incompat�veis em MISSING.
****************************************************************************************************************


*** BACKUP Var q43_8_prof Original (Profiss�o)

COMPUTE q43_8_prof_original = q43_8_prof.
VARIABLE LABELS q43_8_prof_original 'Original - q43_8_prof_Profiss�o'.
VALUE LABELS 
/q43_8_prof_original
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
.
EXECUTE.


***** LIMPEZA DE q43_8_prof SE AS RESPOSTAS FOREM INCOMPAT�VEIS *****

DO IF (q43_7_esc = 257 | q43_7_esc = 258 | q43_7_esc = 260 | q43_7_esc = 261) & 
(q43_8_prof_original = 238 | q43_8_prof_original = 239 ).
RECODE q43_8_prof (238=SYSMIS) (239=SYSMIS).
END IF.

DO IF (q43_7_esc = 251 | q43_7_esc = 252 | q43_7_esc = 253 | q43_7_esc = 254 | q43_7_esc = 255  | q43_7_esc = 256) & 
(q43_8_prof_original = 273 | q43_8_prof_original = 274 | q43_8_prof_original = 275 | q43_8_prof_original = 232 |
q43_8_prof_original = 235 | q43_8_prof_original = 234 | q43_8_prof_original = 276 | q43_8_prof_original = 278 | 
q43_8_prof_original = 283 | q43_8_prof_original = 279 | q43_8_prof_original = 282 | q43_8_prof_original = 233 |
q43_8_prof_original = 236 | q43_8_prof_original = 281 | q43_8_prof_original = 240 | q43_8_prof_original = 241 |
q43_8_prof_original = 237).
RECODE q43_8_prof (ELSE=SYSMIS).
END IF.

DO IF (q43_7_esc = 251 | q43_7_esc = 252 | q43_7_esc = 253 | q43_7_esc = 254) & 
(q43_8_prof_original = 238).
RECODE q43_8_prof (238=SYSMIS).
END IF.

EXECUTE.



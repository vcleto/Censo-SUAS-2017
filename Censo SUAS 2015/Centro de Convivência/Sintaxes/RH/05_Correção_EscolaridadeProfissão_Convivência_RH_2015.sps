**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA LIMPAR ESCOLARIDADE E PROFISS�O INCOMPAT�VEIS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

**********************************Limpeza da incompatibilidade das q40_8 e q40_9  ****************************************
*As vari�veis q40_8 e q40_9 expressam escolaridade e profiss�o dos trabalhadores, por�m existem inconsist�ncias.
*Em alguns casos a escolaridade est� acima da profiss�o, e em outros a profiss�o acima da escolaridade.
*Em ambos os casos a escolaridade indicada prevalece. A syntax abaixo converte os valores de profiss�o incompat�veis em MISSING.
****************************************************************************************************************


*** BACKUP Var q40_9 Original (Profiss�o)

COMPUTE q40_9_original = q40_9.
VARIABLE LABELS q40_9_original 'Original - q40_9_Profiss�o'.
VALUE LABELS 
/q40_9_original
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


***** LIMPEZA DE q40_9 SE AS RESPOSTAS FOREM INCOMPAT�VEIS *****

DO IF (q40_8 = 257 | q40_8 = 258 | q40_8 = 260 | q40_8 = 261) & 
(q40_9_original = 238 | q40_9_original = 239 ).
RECODE q40_9 (238=SYSMIS) (239=SYSMIS).
END IF.

DO IF (q40_8 = 251 | q40_8 = 252 | q40_8 = 253 | q40_8 = 254 | q40_8 = 255  | q40_8 = 256) & 
(q40_9_original = 273 | q40_9_original = 274 | q40_9_original = 275 | q40_9_original = 232 |
q40_9_original = 235 | q40_9_original = 234 | q40_9_original = 276 | q40_9_original = 278 | 
q40_9_original = 283 | q40_9_original = 279 | q40_9_original = 282 | q40_9_original = 233 |
q40_9_original = 236 | q40_9_original = 281 | q40_9_original = 240 | q40_9_original = 241 |
q40_9_original = 237).
RECODE q40_9 (ELSE=SYSMIS).
END IF.

DO IF (q40_8 = 251 | q40_8 = 252 | q40_8 = 253 | q40_8 = 254) & 
(q40_9_original = 238).
RECODE q40_9 (238=SYSMIS).
END IF.

EXECUTE.



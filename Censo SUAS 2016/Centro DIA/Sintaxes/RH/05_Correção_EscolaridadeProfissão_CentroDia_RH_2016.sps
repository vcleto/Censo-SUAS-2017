**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA LIMPAR ESCOLARIDADE E PROFISS�O INCOMPAT�VEIS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

**********************************Limpeza da incompatibilidade das q28.9 e q28.10  ****************************************
*As vari�veis q28.9 e q28.10 expressam escolaridade e profiss�o dos trabalhadores, por�m existem inconsist�ncias.
*Em alguns casos a escolaridade est� acima da profiss�o, e em outros a profiss�o acima da escolaridade.
*Em ambos os casos a escolaridade indicada prevalece. A syntax abaixo converte os valores de profiss�o incompat�veis em MISSING.
****************************************************************************************************************


*** BACKUP Var q28.10 Original (Profiss�o)

COMPUTE q28.10.original = q28.10.
VARIABLE LABELS q28.10.original 'Original - q28.10.Profiss�o'.
VALUE LABELS 
/q28.10.original
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


***** LIMPEZA DE q28.10 SE AS RESPOSTAS FOREM INCOMPAT�VEIS *****

DO IF (q28.9 = 257 | q28.9 = 258 | q28.9 = 260 | q28.9 = 261) & 
(q28.10.original = 238 | q28.10.original = 239 ).
RECODE q28.10 (238=SYSMIS) (239=SYSMIS).
END IF.

DO IF (q28.9 = 251 | q28.9 = 252 | q28.9 = 253 | q28.9 = 254 | q28.9 = 255  | q28.9 = 256) & 
(q28.10.original = 273 | q28.10.original = 274 | q28.10.original = 275 | q28.10.original = 232 |
q28.10.original = 235 | q28.10.original = 234 | q28.10.original = 276 | q28.10.original = 278 | 
q28.10.original = 283 | q28.10.original = 279 | q28.10.original = 282 | q28.10.original = 233 |
q28.10.original = 236 | q28.10.original = 281 | q28.10.original = 240 | q28.10.original = 241 |
q28.10.original = 237).
RECODE q28.10 (ELSE=SYSMIS).
END IF.

DO IF (q28.9 = 251 | q28.9 = 252 | q28.9 = 253 | q28.9 = 254) & 
(q28.10.original = 238).
RECODE q28.10 (238=SYSMIS).
END IF.

EXECUTE.



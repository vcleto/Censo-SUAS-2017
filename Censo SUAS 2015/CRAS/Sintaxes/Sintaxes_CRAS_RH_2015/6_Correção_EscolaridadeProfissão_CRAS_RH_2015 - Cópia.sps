**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA LIMPAR ESCOLARIDADE E PROFISS�O INCOMPAT�VEIS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

**********************************Limpeza da incompatibilidade das q55_6 e q55_7  ****************************************
*As vari�veis q55_6 e q55_7 expressam escolaridade e profiss�o dos trabalhadores, por�m existem inconsist�ncias.
*Em alguns casos a escolaridade est� acima da profiss�o, e em outros a profiss�o acima da escolaridade.
*Em ambos os casos a escolaridade indicada prevalece. A syntax abaixo converte os valores de profiss�o incompat�veis em MISSING.
****************************************************************************************************************


*** BACKUP Var q55_7 Original (Profiss�o)

COMPUTE q55_7_original = q55_7.
VARIABLE LABELS q55_7_original 'Original - q55_7_Profiss�o'.
VALUE LABELS 
/q55_7_original
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


***** LIMPEZA DE q55_7 SE AS RESPOSTAS FOREM INCOMPAT�VEIS *****

DO IF (q55_6 = 257 | q55_6 = 258 | q55_6 = 260 | q55_6 = 261) & 
(q55_7_original = 238 | q55_7_original = 239 ).
RECODE q55_7 (238=SYSMIS) (239=SYSMIS).
END IF.

DO IF (q55_6 = 251 | q55_6 = 252 | q55_6 = 253 | q55_6 = 254 | q55_6 = 255  | q55_6 = 256) & 
(q55_7_original = 273 | q55_7_original = 274 | q55_7_original = 275 | q55_7_original = 232 |
q55_7_original = 235 | q55_7_original = 234 | q55_7_original = 276 | q55_7_original = 278 | 
q55_7_original = 283 | q55_7_original = 279 | q55_7_original = 282 | q55_7_original = 233 |
q55_7_original = 236 | q55_7_original = 281 | q55_7_original = 240 | q55_7_original = 241 |
q55_7_original = 237).
RECODE q55_7 (ELSE=SYSMIS).
END IF.

DO IF (q55_6 = 251 | q55_6 = 252 | q55_6 = 253 | q55_6 = 254) & 
(q55_7_original = 238).
RECODE q55_7 (238=SYSMIS).
END IF.

EXECUTE.



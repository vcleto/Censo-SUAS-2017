********** RODAR NA BASE DA QUEST�O 14.

**ETAPA 1 - R�tulos das Vari�veis.
VARIABLE LABELS
v10947'Caso sim, com quais munic�pios existe acordo/parceria para acolhimento nesta unidade?'.
EXECUTE.

**ETAPA 2 - Renomear as Vari�veis.
RENAME VARIABLES		
id_acolhimento	=	N�IDENTIFICADOR
codigo_ibge	=	IBGE
v10947	=	q14
Incompletos	=	Incompletos.
EXECUTE.

**** Remo��o dos casos incompletos que n�o preencheram.
FILTER OFF.
USE ALL.
SELECT IF NOT (MISSING(q14) & Incompletos = 1).
EXECUTE.

** ETAPA 3 - Revisar os r�tulos das vari�veis.
VARIABLE LABELS
N�IDENTIFICADOR 'N�mero Identificador da Unidade'
IBGE 'C�digo IBGE do Munic�pio'
q14 'q14_Caso sim, com quais munic�pios existe acordo/parceria para acolhimento nesta unidade?'.
EXECUTE.


*** Adicionar dados dos Munic�pios
(Da unidade que preencheu o question�rio e do munic�pio parceiro).

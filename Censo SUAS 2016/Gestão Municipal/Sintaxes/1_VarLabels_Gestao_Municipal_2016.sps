*******************************************************************************************
SINTAXE VARIABLE LABELS GEST�O MUNICIPAL - CENSO SUAS 2016
*******************************************************************************************


***
As variaveis v11308_2'2 Orientar a popula��o usu�ria sobre seus direitos e procedimentos para acesso ao BPC' e
v11308_2'2 Encaminhar poss�veis benefici�rios ao INSS'  ficaram no DICIVIP com o mesmo n�mero  v11308_2'2
Estamos aguardando a SAGI corrigir ou recuperar essas duas vari�veis
**

********************************************************************************************
*********************  CRIA��O DA VARI�VEL V11308_3 VAZIA *******************

NUMERIC v11308_3 (F1.0).
EXECUTE.


*** IGNORAR POSS�VEIS ERROS DE TAMANHO DOS LABELS 

VARIABLE LABELS
v11128'Nome que identifica o �rg�o gestor:'
v11129'Selecione o Tipo de Logradouro (avenida, rua, etc):'
v11130'Endere�o:'
v11131'N�mero:'
v11132'Complemento:'
v11133'Bairro:'
v11134'Ponto de Refer�ncia:'
v11135'CEP:'
v11136'Munic�pio'
v11137'UF'
v11139'Email:'
v11140'DDD - Telefone:'
v11141'Ramal'
v11142'FAX:'
v11143'De acordo com a estrutura administrativa do munic�pio o �rg�o gestor da assist�ncia social caracteriza-se como:'
v11144_1'1 Educa��o'
v11144_2'2 Planejamento'
v11144_3'3 Sa�de'
v11144_4'4 Habita��o'
v11144_5'5 Seguran�a Alimentar'
v11144_6'6 Trabalho e/ou Emprego'
v11144_7'7 Direitos Humanos'
v11144_8'8 Outra'
v11145'Qual?'
v11146'Prote��o Social B�sica'
v11147'Prote��o Social Especial'
v11148'Gest�o de Benef�cios Assistenciais (Bolsa Fam�lia, BPC, Benef�cios Eventuais)'
v11149'Gest�o do SUAS'
v11150'Vigil�ncia Socioassistencial (Inclusive �reas de monitoramento e avalia��o)'
v11151'Gest�o do Trabalho'
v11152'Regula��o do SUAS'
v11153'Gest�o Financeira e Or�ament�ria'
v11158'Na sede do �rg�o gestor/Secretaria de Assist�ncia'
v11159'Nos CRAS'
v11160'Em unidades/postos fixos exclusivos para cadastramento'
v11161'Em unidades m�veis ou postos tempor�rios'
v11162'Em outras unidades da Assist�ncia Social'
v11163'Em unidades de outras pol�ticas p�blicas'
v11164'No domic�lio das fam�lias'
v11165'Outros'
v12008'Em que ano ocorreu a �ltima atualiza��o da Lei Municipal de regulamenta��o do Sistema �nico da Assist�ncia Social - SUAS?'
v12009_0'0 N�o possui Lei Municipal de Regulamenta��o do SUAS'
v11182'Em que ano ocorreu a �ltima atualiza��o do Plano Municipal de Assist�ncia Social (PMAS)?'
v11183_99'99 N�o sabe'
v11186'Nos �ltimos 12 meses, quantas visitas de t�cnicos da Secretaria Estadual de Assist�ncia Social (SEAS) o munic�pio recebeu?'
v11188'Nos �ltimos 12 meses, quantas vezes os t�cnicos ou gestores municipais da assist�ncia social participaram de atividades de orienta��o e apoio t�cnico promovido pelo Estado?'
v11189_1'1 Produ��o e distribui��o de material t�cnico;'
v11189_2'2 Elabora��o, pelo Estado, de normativas e instru��es operacionais para orienta��o dos munic�pios;'
v11189_3'3 Capacita��es presenciais;'
v11189_4'4 Capacita��es � dist�ncia;'
v11189_5'5 Assessoramento t�cnico de forma presencial no munic�pio;'
v11189_6'6 Assessoramento t�cnico � dist�ncia;'
v11189_7'7 Outras formas.'
v11191'Especifique'
v12010'Em quantas reuni�es da CIB (Comiss�o Intergestores Bipartite), em 2015, houve participa��o de algum representante do munic�pio?'
v11196'O ordenador de despesa do FMAS �?'
v11197'O munic�pio utiliza recursos do cofinanciamento federal de servi�os (pisos dos servi�os) para pagamento de servidores p�blicos (estatut�rio, empregado p�blico celetista ou concursado tempor�rio) que integram as Equipes de Refer�...'
v11199'Atualmente o munic�pio recebe recursos estaduais para o cofinanciamento da Assist�ncia Social?'
v11200'Valor alocado referente aos recursos pr�prios do munic�pio'
v11202'Valor recebido do governo estadual (Fundo a Fundo e Conv�nios)'
v11204'Valor da despesa realizada com recursos pr�prios do munic�pio'
v11206'Valor da despesa realizada com recursos repassados pelo governo estadual'
v11208'O �rg�o gestor municipal faz transfer�ncia de recursos por conv�nio para ONG?s ou Entidades de Assist�ncia Social no munic�pio?'
v11209'Quantas entidades recebem recurso do �rg�o gestor municipal por conv�nio?'
v11210'Estatut�rio - Ensino Fundamental'
v11212'Estatut�rio - Ensino M�dio'
v11213'Estatut�rios - Ensino Superior'
v11214'Estatut�rios - Total'
v11215'Empregados P�blicos Celetistas - Ensino Fundamental'
v11216'Empregados P�blicos Celetistas - Ensino M�dio'
v11217'Empregados P�blicos Celetistas - Ensino Superior'
v11218'Empregados P�blicos Celetistas - Total'
v11219'Somente Comissionados - Ensino Fundamental'
v11220'Somente Comissionados - Ensino M�dio'
v11221'Somente Comissionados - Ensino Superior'
v11222'Somente Comissionados - Total'
v11223'Outros V�nculos - Ensino Fundamental'
v11224'Outros V�nculos - Ensino M�dio'
v11225'Outros V�nculos - Ensino Superior'
v11226'Outros V�nculos - Total'
v11227'Ensino Fundamental - Total'
v11228'Ensino M�dio - Total'
v11229'Ensino Superior - Total'
v11230'Total'
v11231'Assistente Social'
v11232'Psic�logo'
v11233'Pedagogo'
v11234'Advogado'
v11235'Antrop�logo'
v11236'Soci�logo'
v11237'Terapeuta Ocupacional'
v11238'Contador'
v11239'Administrador'
v11240'Economista'
v11241'Economista Dom�stico'
v11242'Estat�stico'
v11243'Musicoterapeuta'
v12011'Ge�grafo'
v12012'Administrador P�blico/Gest�o P�blica'
v12013'Profissional de Educa��o F�sica'
v12014'Outros'
v12015'Total de trabalhadores com Ensino Superior'
v11251'Realizou concurso em 2015 - N�vel Superior'
v11253'Realizou concurso em 2015 - N�vel Superior - Quantidade de vagas'
v11254'Realizou concurso em 2015 - N�vel Superior - Data de homologa��o'
v11255'Realizou concurso em 2015 - N�vel Superior - Quantidade de trabalhadores que tomaram posse'
v11252'Realizou concurso em 2015 - N�vel M�dio'
v11256'Realizou concurso em 2015 - N�vel M�dio - Quantidade de vagas'
v11257'Realizou concurso em 2015 - N�vel M�dio - Data de homologa��o do concurso'
v11258'Realizou concurso em 2015 - N�vel M�dio - Quantidade de trabalhadores que tomaram posse'
v11259'O munic�pio possui Plano de Capacita��o e Educa��o Permanente?'
v12016_1'1 Atende no CREAS do munic�pio'
v12016_2'2 Encaminha para o CREAS de outro munic�pio'
v12016_3'3 Encaminha para o CREAS Regional ao qual est� vinculado'
v12016_4'4 Encaminha para o CRAS'
v12016_5'5 Encaminha para alguma entidade conveniada no munic�pio'
v12016_6'6 � atendido pela equipe de refer�ncia da prote��o social especial do �rg�o gestor'
v12016_99'99 Outro.'
v12016_0'0 N�o atende'
v12017'Qual?'
v12018'O munic�pio oferta Servi�o especializado em abordagem social?'
v12019_1'1 No(s) CREAS'
v12019_2'2 No(s) Centro POP'
v12019_3'3 Na sede/�rg�o gestor do munic�pio'
v12019_4'4 Em outra unidade p�blica'
v12019_5'5 Em entidade conveniada'
v12020'Se sim, quantas unidades?'
v12021'Se sim, quantas unidades?'
v12022_1'1 Atende no CREAS do munic�pio'
v12022_2'2 Encaminha para o CREAS de outro munic�pio'
v12022_3'3 Encaminha para o CREAS Regional ao qual est� vinculado'
v12022_4'4 Encaminha para o CRAS'
v12022_5'5 Encaminha para alguma entidade conveniada no munic�pio'
v12022_6'6 Atende em outra unidade p�blica (exceto CREAS) de acompanhamento de adolescentes em cumprimento de medida socioeducativa (LA) ou (PSC) do munic�pio'
v12022_7'7 � atendido pela equipe de refer�ncia da prote��o social especial do munic�pio (�rg�o gestor).'
v12022_99'99 Outro'
v12022_0'0 N�o atende'
v12023'Se sim, quantas unidades?'
v12024'Se sim, quantas unidades?'
v11283_0'0 N�o realiza'
v11283_1'1 Realiza campanhas, mobiliza��o e sensibiliza��o'
v11283_2'2 Realiza atividades de abordagem social em espa�os p�blicos'
v11283_3'3 realiza busca ativa de fam�lias com situa��o de trabalho infantil para inclus�o no Cad�nico'
v11283_4'4 Encaminha/inclui crian�as e adolescentes em trabalho infantil para os Servi�os de Conviv�ncia'
v11283_5'5 Encaminha/inclui fam�lias com situa��o de trabalho infantil para PAIF/CRAS'
v11283_6'6 Encaminha/inclui fam�lias com situa��o de trabalho infantil para o PAEFI/CREAS'
v11283_7'7 Encaminha fam�lias e indiv�duos para a aplica��o de medidas protetivas � fam�lia'
v11283_8'8 Encaminha fam�lias com situa��o de trabalho infantil para programas e projetos de capacita��o profissional'
v11283_9'9 Encaminha fam�lias com situa��o de trabalho infantil para programas e projetos de inclus�o produtiva e/ou gera��o de trabalho e renda'
v11283_10'10 Encaminha fam�lias com situa��o de trabalho infantil para atendimento em outras pol�ticas p�blicas'
v11283_11'11 Encaminha fam�lias com situa��o de trabalho infantil para os �rg�os de defesa e responsabiliza��o'
v11283_12'12 Elabora estudos e diagn�sticos sobre o trabalho infantil no munic�pio'
v11284'O �rg�o gestor da Assist�ncia Social possui equipe de gest�o exclusiva da Prote��o Social Especial de Alta Complexidade?'
v12025'O munic�pio faz parte de cons�rcio p�blico com outros munic�pios para oferta de servi�os de acolhimento?'
v12026_1'1 Crian�as / Adolescentes'
v12026_2'2 Jovens egressos de servi�os de acolhimento'
v12026_3'3 Exclusivamente crian�as/ adolescentes com defici�ncia'
v12026_4'4 Exclusivamente pessoas adultas com defici�ncia'
v12026_5'5 Adultos e Fam�lias'
v12026_6'6 Mulheres em situa��o de viol�ncia'
v12026_7'7 Pessoas idosas'
v11285'O munic�pio possui Servi�o de Acolhimento em Fam�lia Acolhedora para Crian�a e Adolescente?'
v11286'Caso sim, o Servi�o de Acolhimento em Fam�lia Acolhedora � regulamentado por lei municipal?'
v11290'Existe repasse de subs�dio financeiro para as fam�lias acolhedoras?'
v11291'Atualmente, quantas fam�lias aptas a receber as crian�as/adolescentes com medidas protetivas est�o cadastradas pelo Servi�o?'
v11292'Atualmente, quantas crian�as/adolescentes est�o sendo acolhidas por meio do Servi�o de Fam�lia Acolhedora no munic�pio?'
v11293_1'1 Controla o acesso �s vagas (controle da porta de entrada), sendo respons�vel por indicar a Unidade de Acolhimento que receber� a crian�a/adolescente.'
v11293_2'2 Acompanha/monitora o fluxo de entradas e sa�das de crian�as e adolescentes nas Unidades'
v11293_3'3 Centraliza as informa��es das medidas de acolhimento determinadas pelo poder Judici�rio'
v11293_4'4 Centraliza as informa��es dos acolhimentos emergenciais realizados pelo Conselho Tutelar'
v11293_5'5 Promove a articula��o dos servi�os de acolhimento com os demais servi�os da rede socioassistencial'
v11293_6'6 Promove a articula��o dos servi�os de acolhimento com as demais pol�ticas p�blicas e �rg�os de defesa de direitos'
v11293_7'7 Realiza supervis�o e suporte t�cnico aos servi�os de acolhimento'
v11293_8'8 Monitora o tempo de perman�ncia das crian�as e adolescentes nos servi�os de acolhimento'
v11293_9'9 Fiscaliza a qualidade dos servi�os'
v11293_10'10 N�o realiza nenhuma das atividades listadas acima'
v11295'Nos �ltimos 12 (doze) meses a Assist�ncia Social do munic�pio abrigou em alojamentos provis�rios pessoas atingidas por situa��es de emerg�ncia ou de calamidade p�blica?'
v11301'O munic�pio utiliza embarca��o/lancha para o desenvolvimento de atividades/servi�os da Assist�ncia Social?'
v11307'A Assist�ncia Social desenvolve a��es relativas ao Benef�cio de Presta��o Continuada (BPC)?'
v11308_1'1 Realizar estudos sobre as condi��es de vulnerabilidade das fam�lias com idosos e pessoas com defici�ncia'
v11308_2'2 Orientar a popula��o usu�ria sobre seus direitos e procedimentos para acesso ao BPC'
v11308_3'3 Encaminhar poss�veis benefici�rios ao INSS'
v11308_4'4 Apoiar e acompanhar o processo de concess�o do BPC'
v11308_5'5 Distribuir aos CRAS e CREAS do munic�pio listas territorializadas das fam�lias com benefici�rios do BPC'
v11308_6'6 Inserir os benefici�rios nos servi�os socioassistenciais'
v11308_7'7 Realizar o cadastramento dos benefici�rios do BPC no Cad�nico'
v11308_8'8 Articular com outros setores a inser��o dos benefici�rios nas diversas pol�ticas sociais'
v11309'Aux�lio Funeral - Se o Benef�cio � concedido no munic�pio'
v11315'Aux�lio funeral - Se o benef�cio � regulamentado'
v11316'Aux�lio funeral - Local onde o Benef�cio � concedido'
v11317'Aux�lio Natalidade - Se o Benef�cio � concedido no munic�pio'
v11318'Aux�lio Natalidade - Se o Benef�cio � regulamentado'
v11319'Aux�lio Natalidade - Local onde o Benef�cio � concedido'
v11320'Benef�cio Eventual para situa��o de calamidade p�blica - Se o Benef�cio � concedido no munic�pio'
v11321'Benef�cio Eventual para situa��o de calamidade p�blica - Se o Benef�cio � regulamentado'
v11322'Benef�cio Eventual para situa��o de calamidade p�blica - Local onde o Benef�cio � concedido'
v11323'Outros Benef�cios Eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria - Se o Benef�cio � concedido no munic�pio'
v11324'Outros Benef�cios Eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria - Se o Benef�cio � regulamentado'
v11325'Outros Benef�cios Eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria - Local onde o Benef�cio � concedido'
v11331'Qual � a ?Inst�ncia de Controle Social ? ICS? do Programa Bolsa Fam�lia (PBF) no munic�pio?'
v11332'O munic�pio possui profissional(s) exclusivamente dedicado(s) �s atividades de Vigil�ncia Socioassistencial?'
p_latitude'Latitude:'
v11333'profissionais de n�vel superior'
v11334'profissionais de n�vel m�dio'
v11335'quantidade total (n�vel superior mais n�vel m�dio)'
p_longitude'Longitude:'
v12027'O �rg�o gestor possui levantamento ou pesquisa nos �ltimos doze meses que aponte o n�mero de pessoas em situa��o de rua no munic�pio?'
v11340'Caso sim, quantas pessoas?'
v11342'Como foi realizado este levantamento ou pesquisa?'
v11343'O �rg�o gestor possui levantamento ou pesquisa que aponte a exist�ncia de locais de explora��o sexual de crian�as e adolescentes no munic�pio?'
v11344'Como foi realizado este levantamento ou pesquisa?'
v11345'O �rg�o gestor possui levantamento ou pesquisa sobre a incid�ncia de Trabalho Infantil no munic�pio?'
v11346'Como foi realizado este levantamento ou pesquisa?'
v11349'Nos �ltimos 12 meses, o �rg�o gestor promoveu reuni�o/capacita��o com os t�cnicos dos CRAS e CREAS para implanta��o do Prontu�rio SUAS?'
v11350'O munic�pio possui defini��o de instrumentos e fluxos de Notifica��o Compuls�ria das situa��es de viol�ncia e viola��o de direitos atendidos?'
v11354_1'1 Realiza visitas t�cnicas � rede socioassistencial'
v11354_2'2 Realiza a gest�o/valida��o das informa��es prestadas sobre as unidades, como o preenchimento do Registro Mensal de Atendimentos, Censo SUAS e demais instrumentais nacionais, estaduais ou municipais'
v11354_3'3 Possui instrumentos de coleta de dados pr�prios para levantamento de informa��es junto aos servi�os'
v11354_4'4 Produ��o de Indicadores pr�prios para aferi��o volume e qualidade dos servi�os socioassistenciais'
v11355'Nome'
v11356'CPF'
v11357'Data'
v11359'Cargo/Fun��o'
v11360'Telefone'
v11361'Email'
v11362_0'0 N�o h� representante da Vigil�ncia designado no munic�pio'
v11363'Nome'
v11364'CPF'
v11365'Cargo/Fun��o'
v11366'Telefone'
v11367'Email'.
EXECUTE.




*******************************************************************************************
Syntax VALUE LABELS GESTAO MUNICIPAL - CENSO SUAS 2016
*******************************************************************************************


VALUE LABELS
/v11129
1    "Alameda"
2    "�rea"
3    "Avenida"
4    "Campo"
5    "Ch�cara"
6    "Col�nia"
7    "Condom�nio"
8    "Conjunto"
9    "Distrito"
10    "Esplanada"
11    "Esta��o"
12    "Estrada"
13    "Favela"
14    "Fazenda"
15    "Feira"
16    "Jardim"
17    "Ladeira"
18    "Lago"
19    "Lagoa"
20    "Largo"
21    "Loteamento"
22    "Morro"
23    "N�cleo"
24    "Parque"
25    "Passarela"
26    "P�tio"
27    "Pra�a"
28    "Quadra"
29    "Recanto"
30    "Residencial"
31    "Rodovia"
32    "Rua"
33    "Setor"
34    "S�tio"
35    "Travessa"
36    "Trecho"
37    "Trevo"
38    "Vale"
39    "Vereda"
40    "Via"
41    "Viaduto"
42    "Viela"
43    "Vila"
44    "Outros"
/v11143
1    "Secretaria municipal exclusiva da �rea de Assist�ncia Social"
2    "Secretaria municipal em conjunto com outras pol�ticas setoriais"
3    "Funda��o P�blica"
4    "Setor/Coordenadoria/Assessoria subordinado diretamente ao Gabinete do(a) Prefeito(a)"
/v11144_1
0    "N�o"
1    "Sim"
/v11144_2
0    "N�o"
1    "Sim"
/v11144_3
0    "N�o"
1    "Sim"
/v11144_4
0    "N�o"
1    "Sim"
/v11144_5
0    "N�o"
1    "Sim"
/v11144_6
0    "N�o"
1    "Sim"
/v11144_7
0    "N�o"
1    "Sim"
/v11144_8
0    "N�o"
1    "Sim"
/v11146
1    "Sim, na estrutura formal do �rg�o gestor"
2    "Sim, de maneira informal"
3    "N�o constitu�da"
/v11147
1    "Sim, na estrutura formal do �rg�o gestor"
2    "Sim, de maneira informal"
3    "N�o constitu�da"
/v11148
1    "Sim, na estrutura formal do �rg�o gestor"
2    "Sim, de maneira informal"
3    "N�o constitu�da"
/v11149
1    "Sim, na estrutura formal do �rg�o gestor"
2    "Sim, de maneira informal"
3    "N�o constitu�da"
/v11150
1    "Sim, na estrutura formal do �rg�o gestor"
2    "Sim, de maneira informal"
3    "N�o constitu�da"
/v11151
1    "Sim, na estrutura formal do �rg�o gestor"
2    "Sim, de maneira informal"
3    "N�o constitu�da"
/v11152
1    "Sim, na estrutura formal do �rg�o gestor"
2    "Sim, de maneira informal"
3    "N�o constitu�da"
/v11153
1    "Sim, na estrutura formal do �rg�o gestor"
2    "Sim, de maneira informal"
3    "N�o constitu�da"
/v11158
1    "Cadastramento"
2    "Atualiza��o Cadastral"
99    "Em ambos"
0    "N�o realiza"
/v11159
1    "Cadastramento"
2    "Atualiza��o Cadastral"
99    "Em ambos"
0    "N�o realiza"
/v11160
1    "Cadastramento"
2    "Atualiza��o Cadastral"
99    "Em ambos"
0    "N�o realiza"
/v11161
1    "Cadastramento"
2    "Atualiza��o Cadastral"
99    "Em ambos"
0    "N�o realiza"
/v11162
1    "Cadastramento"
2    "Atualiza��o Cadastral"
99    "Em ambos"
0    "N�o realiza"
/v11163
1    "Cadastramento"
2    "Atualiza��o Cadastral"
99    "Em ambos"
0    "N�o realiza"
/v11164
1    "Cadastramento"
2    "Atualiza��o Cadastral"
99    "Em ambos"
0    "N�o realiza"
/v11165
1    "Cadastramento"
2    "Atualiza��o Cadastral"
99    "Em ambos"
0    "N�o realiza"
/v12009_0
0    "N�o"
1    "Sim"
/v11183_99
1    "N�o sabe"
/v11186
0    "Nenhuma"
1    "Uma visita"
2    "Duas a tr�s visitas"
3    "Quatro a seis visitas"
4    "Mais de seis visitas"
/v11188
0    "Nenhuma vez"
1    "Uma vez"
2    "Duas ou tr�s vezes"
3    "Quatro a seis vezes"
4    "Mais de seis vezes"
/v11189_1
0    "N�o"
1    "Sim"
/v11189_2
0    "N�o"
1    "Sim"
/v11189_3
0    "N�o"
1    "Sim"
/v11189_4
0    "N�o"
1    "Sim"
/v11189_5
0    "N�o"
1    "Sim"
/v11189_6
0    "N�o"
1    "Sim"
/v11189_7
0    "N�o"
1    "Sim"
/v12010
1    "1 vez no ano"
2    "De 2 a 3 vezes no ano"
3    "De 4 a 6 vezes no ano"
4    "De 7 a 10 vezes no ano"
5    "Mais de 10 vezes no ano"
0    "Nenhuma"
/v11196
1    "O Prefeito"
2    "O Secret�rio(a) Municipal de Assist�ncia Social"
3    "Outro funcion�rio da Secretaria de Assist�ncia Social"
4    "Secret�rio ou t�cnico de outra �rea"
/v11197
1    "Sim"
0    "N�o"
/v11199
1    "Sim, fundo-a-fundo"
2    "Sim, via conv�nio"
3    "Sim, por conv�nio e fundo-a-fundo"
0    "N�o recebe"
/v11208
0    "N�o"
1    "Sim, com recursos do Fundo Municipal de Assist�ncia Social (FMAS)"
2    "Sim, com recursos de outras fontes"
3    "Sim, com recursos do FMAS e de outras fontes"
/v11251
1    "Sim"
0    "N�o"
/v11252
1    "Sim"
0    "N�o"
/v11259
1    "Sim"
0    "N�o"
/v12016_1
0    "N�o"
1    "Sim"
/v12016_2
0    "N�o"
1    "Sim"
/v12016_3
0    "N�o"
1    "Sim"
/v12016_4
0    "N�o"
1    "Sim"
/v12016_5
0    "N�o"
1    "Sim"
/v12016_6
0    "N�o"
1    "Sim"
/v12016_99
0    "N�o"
1    "Sim"
/v12016_0
0    "N�o"
1    "Sim"
/v12018
1    "Sim"
0    "N�o"
/v12019_1
0    "N�o"
1    "Sim"
/v12019_2
0    "N�o"
1    "Sim"
/v12019_3
0    "N�o"
1    "Sim"
/v12019_4
0    "N�o"
1    "Sim"
/v12019_5
0    "N�o"
1    "Sim"
/v12022_1
0    "N�o"
1    "Sim"
/v12022_2
0    "N�o"
1    "Sim"
/v12022_3
0    "N�o"
1    "Sim"
/v12022_4
0    "N�o"
1    "Sim"
/v12022_5
0    "N�o"
1    "Sim"
/v12022_6
0    "N�o"
1    "Sim"
/v12022_7
0    "N�o"
1    "Sim"
/v12022_99
0    "N�o"
1    "Sim"
/v12022_0
0    "N�o"
1    "Sim"
/v11283_0
0    "N�o"
1    "Sim"
/v11283_1
0    "N�o"
1    "Sim"
/v11283_2
0    "N�o"
1    "Sim"
/v11283_3
0    "N�o"
1    "Sim"
/v11283_4
0    "N�o"
1    "Sim"
/v11283_5
0    "N�o"
1    "Sim"
/v11283_6
0    "N�o"
1    "Sim"
/v11283_7
0    "N�o"
1    "Sim"
/v11283_8
0    "N�o"
1    "Sim"
/v11283_9
0    "N�o"
1    "Sim"
/v11283_10
0    "N�o"
1    "Sim"
/v11283_11
0    "N�o"
1    "Sim"
/v11283_12
0    "N�o"
1    "Sim"
/v11284
1    "Sim, possui equipe exclusiva"
2    "N�o possui equipe exclusiva"
/v12025
1    "Sim"
0    "N�o"
/v12026_1
0    "N�o"
1    "Sim"
/v12026_2
0    "N�o"
1    "Sim"
/v12026_3
0    "N�o"
1    "Sim"
/v12026_4
0    "N�o"
1    "Sim"
/v12026_5
0    "N�o"
1    "Sim"
/v12026_6
0    "N�o"
1    "Sim"
/v12026_7
0    "N�o"
1    "Sim"
/v11285
1    "Sim"
0    "N�o"
/v11286
1    "Sim"
0    "N�o"
/v11290
1    "Sim"
0    "N�o"
/v11293_1
0    "N�o"
1    "Sim"
/v11293_2
0    "N�o"
1    "Sim"
/v11293_3
0    "N�o"
1    "Sim"
/v11293_4
0    "N�o"
1    "Sim"
/v11293_5
0    "N�o"
1    "Sim"
/v11293_6
0    "N�o"
1    "Sim"
/v11293_7
0    "N�o"
1    "Sim"
/v11293_8
0    "N�o"
1    "Sim"
/v11293_9
0    "N�o"
1    "Sim"
/v11293_10
0    "N�o"
1    "Sim"
/v11295
1    "Sim"
0    "N�o"
/v11301
1    "Sim"
0    "N�o"
/v11307
1    "Sim"
0    "N�o"
/v11308_1
0    "N�o"
1    "Sim"
/v11308_2
0    "N�o"
1    "Sim"
/v11308_3
0    "N�o"
1    "Sim"
/v11308_4
0    "N�o"
1    "Sim"
/v11308_5
0    "N�o"
1    "Sim"
/v11308_6
0    "N�o"
1    "Sim"
/v11308_7
0    "N�o"
1    "Sim"
/v11308_8
0    "N�o"
1    "Sim"
/v11309
1    "Sim"
0    "N�o"
/v11315
1    "Sim"
0    "N�o"
/v11316
1    "Na sede do �rg�o gestor"
2    "Em unidades da rede socioassistenciais"
3    "Em ambas"
/v11317
1    "Sim"
0    "N�o"
/v11318
1    "Sim"
0    "N�o"
/v11319
1    "Na sede do �rg�o gestor"
2    "Em unidades da rede socioassistencial"
3    "Em ambas"
/v11320
1    "Sim"
0    "N�o"
/v11321
1    "Sim"
0    "N�o"
/v11322
1    "Na sede do �rg�o gestor"
2    "Em unidades da rede socioassistencial"
3    "Em ambas"
/v11323
1    "Sim"
0    "N�o"
/v11324
1    "Sim"
0    "N�o"
/v11325
1    "Na sede do �rg�o gestor"
2    "Em unidades da rede socioassistencial"
3    "Em ambas"
/v11331
1    "O pr�prio Conselho Municipal de Assist�ncia Social (CMAS), ou comiss�o permanente do CMAS."
2    "Inst�ncia/comit� exclusivo do Programa Bolsa Fam�lia (PBF)."
3    "Conselho de outra Pol�tica."
/v11332
1    "Sim"
0    "N�o"
/v12027
1    "Sim"
0    "N�o"
/v11342
1    "O levantamento ou pesquisa foi realizado pela equipe do pr�prio �rg�o gestor ou pela equipe de outra unidade do poder p�blico municipal"
2    "O �rg�o gestor e/ou outra unidade do poder p�blico municipal contratou institui��o para este fim"
3    "O �rg�o gestor obteve esta informa��o atrav�s de levantamento ou pesquisa j� realizada por outra institui��o"
/v11343
1    "Sim"
0    "N�o"
/v11344
1    "O levantamento ou pesquisa foi realizado pela equipe do pr�prio �rg�o gestor ou pela equipe de outra unidade do poder p�blico municipal"
2    "O �rg�o gestor e/ou outra unidade do poder p�blico municipal contratou institui��o para este fim"
3    "O �rg�o gestor obteve esta informa��o atrav�s de levantamento ou pesquisa j� realizada por outra institui��o"
/v11345
1    "Sim"
0    "N�o"
/v11346
1    "O levantamento ou pesquisa foi realizado pela equipe do pr�prio �rg�o gestor ou pela equipe de outra unidade do poder p�blico municipal"
2    "O �rg�o gestor e/ou outra unidade do poder p�blico municipal contratou institui��o para este fim"
3    "O �rg�o gestor obteve esta informa��o atrav�s de levantamento ou pesquisa j� realizada por outra institui��o"
/v11349
1    "Sim"
0    "N�o"
/v11350
1    "Sim, sendo que o �rg�o gestor da Assist�ncia Social � respons�vel pelo processo"
2    "Sim, a Assistencia Social notifica, mas outra pol�tica p�blica � o respons�vel pelo processo"
3    "Sim, mas as unidades de Assist�ncia Social n�o notificam"
4    "N�o possui"
/v11354_1
0    "N�o"
1    "Sim"
/v11354_2
0    "N�o"
1    "Sim"
/v11354_3
0    "N�o"
1    "Sim"
/v11354_4
0    "N�o"
1    "Sim"
/v11362_0
0    "Erro"
1    "N�o possui representante da vigil�ncia"
.
EXECUTE.


******************************************************************************************
*********************  CORRE��O IBGE DF ~> BRAS�LIA ************************

RECODE codigo_ibge (53 = 530010).
EXECUTE.


******************************************************************************************
**********************  CORRE��O COORDENADAS  *****************************

** BACKUP VARS ORIGINAIS.
STRING p_latitude_original (A20).
STRING p_longitude_original (A19).
COMPUTE p_latitude_original=p_latitude.
COMPUTE p_longitude_original=p_longitude.
EXECUTE.

** SUBSTITUIR PONTOS POR V�RGULAS.
COMPUTE p_latitude = REPLACE(p_latitude,'.',',').
COMPUTE p_longitude = REPLACE(p_longitude,'.',',').
EXECUTE. 

** ALTERAR TIPO PARA NUM�RICA.
ALTER TYPE
p_latitude (F20.15)
p_longitude (F19.15).


****************************************************************************************
****  CORRIGIR VALORES MONET�RIOS DA Q14 PARA NUM�RICA  *****

** BACKUP VARS ORIGINAIS.
STRING q14_1_original (A13).
STRING q14_2_original (A10).
STRING q14_3_original (A13).
STRING q14_4_original (A10).
COMPUTE q14_1_original=v11200.
COMPUTE q14_2_original=v11202.
COMPUTE q14_3_original=v11204.
COMPUTE q14_4_original=v11206.
EXECUTE.

** SUBSTITUIR PONTOS POR V�RGULAS.
COMPUTE v11200 = REPLACE(v11200,'.',',').
COMPUTE v11202 = REPLACE(v11202,'.',',').
COMPUTE v11204 = REPLACE(v11204,'.',',').
COMPUTE v11206 = REPLACE(v11206,'.',',').
EXECUTE. 

** ALTERAR TIPO PARA NUM�RICA.
ALTER TYPE
v11200 (F13.2)
v11202 (F10.2)
v11204 (F13.2)
v11206 (F10.2).


***************************************************************************************
******************  CRIAR C�PIAS DE UF E MUNIC�PIO  ***********************

STRING UF(A2).
STRING Munic�pio(A25).
COMPUTE UF = v11137.
COMPUTE Munic�pio = v11136.
EXECUTE.


****************************************************************************************
**************************  REORDENAR VARI�VEIS  ****************************

MATCH FILES FILE = *
/KEEP = 
codigo_ibge
UF
Munic�pio
v11128
v11129
v11130
v11131
v11132
v11133
v11134
v11135
v11136
v11137
v11139
v11140
v11142
v11141
p_latitude
p_longitude
v11143
v11144_1
v11144_2
v11144_3
v11144_4
v11144_5
v11144_6
v11144_7
v11144_8
v11145
v11146
v11147
v11148
v11149
v11150
v11151
v11152
v11153
v11158
v11159
v11160
v11161
v11162
v11163
v11164
v11165
v12008
v12009_0
v11182
v11183_99
v11186
v11188
v11189_1
v11189_2
v11189_3
v11189_4
v11189_5
v11189_6
v11189_7
v11191
v12010
v11196
v11197
v11199
v11200
v11202
v11204
v11206
v11208
v11209
v11210
v11212
v11213
v11214
v11215
v11216
v11217
v11218
v11219
v11220
v11221
v11222
v11223
v11224
v11225
v11226
v11227
v11228
v11229
v11230
v11231
v11232
v11233
v11234
v11235
v11236
v11237
v11238
v11239
v11240
v11241
v11242
v11243
v12011
v12012
v12013
v12014
v12015
v11251
v11253
v11254
v11255
v11252
v11256
v11257
v11258
v11259
v12016_1
v12016_2
v12016_3
v12016_4
v12016_5
v12016_6
v12016_99
v12016_0
v12017
v12018
v12019_1
v12019_2
v12019_3
v12019_4
v12019_5
v12020
v12021
v12022_1
v12022_2
v12022_3
v12022_4
v12022_5
v12022_6
v12022_7
v12022_99
v12022_0
v12023
v12024
v11283_0
v11283_1
v11283_2
v11283_3
v11283_4
v11283_5
v11283_6
v11283_7
v11283_8
v11283_9
v11283_10
v11283_11
v11283_12
v11284
v12025
v12026_1
v12026_2
v12026_3
v12026_4
v12026_5
v12026_6
v12026_7
v11285
v11286
v11290
v11291
v11292
v11293_1
v11293_2
v11293_3
v11293_4
v11293_5
v11293_6
v11293_7
v11293_8
v11293_9
v11293_10
v11295
v11301
v11307
v11308_1
v11308_2
v11308_3
v11308_4
v11308_5
v11308_6
v11308_7
v11308_8
v11309
v11315
v11316
v11317
v11318
v11319
v11320
v11321
v11322
v11323
v11324
v11325
v11331
v11332
v11333
v11334
v11335
v12027
v11340
v11342
v11343
v11344
v11345
v11346
v11349
v11350
v11354_1
v11354_2
v11354_3
v11354_4
v11355
v11356
v11357
v11359
v11360
v11361
v11362_0
v11363
v11364
v11365
v11366
v11367
Incompletos
p_latitude_original
p_longitude_original.
EXECUTE.








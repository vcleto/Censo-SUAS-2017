
********* BACKUP DAS VARI�VEIS DO BLOCO 3 (Para posteriormente apagar as respostas declaradas por quem selecionou 
"Fam�lia Acolhedora na vari�vel q_2_2"

RECODE
q37
q38
q39_1
q39_2
q39_3
q39_4
q39_5
q39_6
q39_7
q39_8
q39_9
q39_10
q39_11
q39_12
q39_13
q39_14
q39_15
q40_1
q40_2
q40_3
q40_4
q40_5
q40_6
q40_7
q40_8
q40_9
q40_10
q40_11
q40_12
q40_13
q40_14
q40_15
q40_16
q40_17
q40_18
q40_19
q40_20
q40_21
q40_22
q40_23
q40_24
q40_25
q40_16_1
q40_17_1
q40_24_1
q40_25_1
q41_1
q41_2
q41_3
q41_4
(ELSE=Copy) INTO q37_velha
q38_velha
q39_1_velha
q39_2_velha
q39_3_velha
q39_4_velha
q39_5_velha
q39_6_velha
q39_7_velha
q39_8_velha
q39_9_velha
q39_10_velha
q39_11_velha
q39_12_velha
q39_13_velha
q39_14_velha
q39_15_velha
q40_1_velha
q40_2_velha
q40_3_velha
q40_4_velha
q40_5_velha
q40_6_velha
q40_7_velha
q40_8_velha
q40_9_velha
q40_10_velha
q40_11_velha
q40_12_velha
q40_13_velha
q40_14_velha
q40_15_velha
q40_16_velha
q40_17_velha
q40_18_velha
q40_19_velha
q40_20_velha
q40_21_velha
q40_22_velha
q40_23_velha
q40_24_velha
q40_25_velha
q40_16_1_velha
q40_17_1_velha
q40_24_1_velha
q40_25_1_velha
q41_1_velha
q41_2_velha
q41_3_velha
q41_4_velha.

VARIABLE LABELS  
q37_velha'Vari�vel original_q37_Considerando a vizinhan�a da Unidade, a �rea onde ela est� localizada caracteriza-se como:'
/q38_velha'Vari�vel original_q38_O local onde funciona a Unidade � servido por transporte p�blico (�nibus/trem/metr�/barcas)?'
/q39_1_velha'Vari�vel original_q39_1_Sala de administra��o'
/q39_2_velha'Vari�vel original_q39_2_Sala para reuni�es'
/q39_3_velha'Vari�vel original_q39_3_Sala para atendimento t�cnico especializado (psic�logo, assistente social, etc.)'
/q39_4_velha'Vari�vel original_q39_4_Sala de estar, de conviv�ncia ou de outras atividades de grupo'
/q39_5_velha'Vari�vel original_q39_5_Dormit�rios para os Usu�rios acolhidos'
/q39_6_velha'Vari�vel original_q39_6_Dormit�rios para os Cuidadores'
/q39_7_velha'Vari�vel original_q39_7_Banheiros para os Usu�rios acolhidos'
/q39_8_velha'Vari�vel original_q39_8_Banheiros exclusivos para Funcion�rios'
/q39_9_velha'Vari�vel original_q39_9_�rea de recrea��o interna'
/q39_10_velha'Vari�vel original_q39_10_�rea de recrea��o externa'
/q39_11_velha'Vari�vel original_q39_11_Refeit�rio/Sala de Jantar'
/q39_12_velha'Vari�vel original_q39_12_Cozinha para preparo de alimentos'
/q39_13_velha'Vari�vel original_q39_13_Despesa'
/q39_14_velha'Vari�vel original_q39_14_Lavanderia'
/q39_15_velha'Vari�vel original_q39_15_Enfermaria'
/q40_1_velha'Vari�vel original_q40_1_Geladeira'
/q40_2_velha'Vari�vel original_q40_2_Freezer'
/q40_3_velha'Vari�vel original_q40_3_Fog�o'
/q40_4_velha'Vari�vel original_q40_4_Forno/microondas'
/q40_5_velha'Vari�vel original_q40_5_M�quina de lavar'
/q40_6_velha'Vari�vel original_q40_6_Ve�culo de uso exclusivo'
/q40_7_velha'Vari�vel original_q40_7_Ve�culo de uso compartilhado'
/q40_8_velha'Vari�vel original_q40_8_Mobili�rio espec�fico para atender crian�as'
/q40_9_velha'Vari�vel original_q40_9_Mobili�rio/materiais adequados para pessoas com defici�ncia ou depend�ncia (Tecnologias Assistivas)'
/q40_10_velha'Vari�vel original_q40_10_Acervo bibliogr�fico (livros)'
/q40_11_velha'Vari�vel original_q40_11_Materiais pedag�gicos e culturais'
/q40_12_velha'Vari�vel original_q40_12_Materiais esportivos'
/q40_13_velha'Vari�vel original_q40_13_Jogos educativos, jogos de passatempo, brinquedos'
/q40_14_velha'Vari�vel original_q40_14_Mesas para estudo'
/q40_15_velha'Vari�vel original_q40_15_Mesas de Jantar'
/q40_16_velha'Vari�vel original_q40_16_Camas/Ber�os'
/q40_17_velha'Vari�vel original_q40_17_Arm�rios para guarda individualizada de pertences'
/q40_18_velha'Vari�vel original_q40_18_Arm�rios de uso coletivo dos usu�rios'
/q40_19_velha'Vari�vel original_q40_19_Telefone'
/q40_20_velha'Vari�vel original_q40_20_Impressora'
/q40_21_velha'Vari�vel original_q40_21_Equipamento de som'
/q40_22_velha'Vari�vel original_q40_22_DVD/V�deo Cassete'
/q40_23_velha'Vari�vel original_q40_23_TV a cabo'
/q40_24_velha'Vari�vel original_q40_24_Televis�o'
/q40_25_velha'Vari�vel original_q40_25_Computadores ligados � Internet'
/q40_16_1_velha'Vari�vel original_q40_16_1_Quantas Camas/Ber�os?'
/q40_17_1_velha'Vari�vel original_q40_17_1_Quantos Arm�rios?'
/q40_24_1_velha'Vari�vel original_q40_24_1_Quantas Televis�es?'
/q40_25_1_velha'Vari�vel original_q40_25_1_Quantos Computadores ligados � internet?'
/q41_1_velha'Vari�vel original_q41_1_Acesso principal adaptado com rampas e rota acess�vel desde a cal�ada at� o interior da Unidade'
/q41_2_velha'Vari�vel original_q41_2_Rota acess�vel aos dormit�rios e espa�os de uso coletivo'
/q41_3_velha'Vari�vel original_q41_3_Rota acess�vel ao banheiro'
/q41_4_velha'Vari�vel original_q41_4_Banheiro adaptado para pessoas com defici�ncia e/ou mobilidade reduzida'.
EXECUTE.


COMPUTE q47_14_1velha=q47_14_1.

compute  q47_14_2velha=q47_14_2.

compute q47_14_3velha=q47_14_3.

RECODE q47_14_1 q47_14_2 q47_14_3 (SYSMIS=0) (99=5).
EXECUTE.

**** transformar as vari�veis para string *****

STRING RH_servi�os (A5).

compute RH_servi�os=concat(q47_14_1, q47_14_2,  q47_14_3).

STRING RH_servi�os_NOVA (A5).

IF RH_servi�os='000'   RH_servi�os_NOVA='0'.
IF RH_servi�os='100'   RH_servi�os_NOVA='1'.
IF RH_servi�os='101'   RH_servi�os_NOVA='1'.
IF RH_servi�os='105'   RH_servi�os_NOVA='15'.
IF RH_servi�os='110'   RH_servi�os_NOVA='1'.
IF RH_servi�os='111'   RH_servi�os_NOVA='1'.
IF RH_servi�os='112'   RH_servi�os_NOVA='12'.
IF RH_servi�os='113'   RH_servi�os_NOVA='13'.
IF RH_servi�os='114'   RH_servi�os_NOVA='14'.
IF RH_servi�os='115'   RH_servi�os_NOVA='15'.
IF RH_servi�os='120'   RH_servi�os_NOVA='12'.
IF RH_servi�os='121'   RH_servi�os_NOVA='12'.
IF RH_servi�os='122'   RH_servi�os_NOVA='12'.
IF RH_servi�os='123'   RH_servi�os_NOVA='123'.
IF RH_servi�os='124'   RH_servi�os_NOVA='124'.
IF RH_servi�os='125'   RH_servi�os_NOVA='125'.
IF RH_servi�os='130'   RH_servi�os_NOVA='13'.
IF RH_servi�os='131'   RH_servi�os_NOVA='13'.
IF RH_servi�os='132'   RH_servi�os_NOVA='132'.
IF RH_servi�os='133'   RH_servi�os_NOVA='13'.
IF RH_servi�os='134'   RH_servi�os_NOVA='134'.
IF RH_servi�os='135'   RH_servi�os_NOVA='135'.
IF RH_servi�os='140'   RH_servi�os_NOVA='14'.
IF RH_servi�os='141'   RH_servi�os_NOVA='14'.
IF RH_servi�os='142'   RH_servi�os_NOVA='142'.
IF RH_servi�os='143'   RH_servi�os_NOVA='143'.
IF RH_servi�os='144'   RH_servi�os_NOVA='14'.
IF RH_servi�os='145'   RH_servi�os_NOVA='145'.
IF RH_servi�os='150'   RH_servi�os_NOVA='15'.
IF RH_servi�os='151'   RH_servi�os_NOVA='15'.
IF RH_servi�os='152'   RH_servi�os_NOVA='152'.
IF RH_servi�os='153'   RH_servi�os_NOVA='153'.
IF RH_servi�os='154'   RH_servi�os_NOVA='154'.
IF RH_servi�os='155'   RH_servi�os_NOVA='15'.
IF RH_servi�os='200'   RH_servi�os_NOVA='2'.
IF RH_servi�os='201'   RH_servi�os_NOVA='21'.
IF RH_servi�os='205'   RH_servi�os_NOVA='25'.
IF RH_servi�os='210'   RH_servi�os_NOVA='21'.
IF RH_servi�os='211'   RH_servi�os_NOVA='21'.
IF RH_servi�os='212'   RH_servi�os_NOVA='21'.
IF RH_servi�os='213'   RH_servi�os_NOVA='213'.
IF RH_servi�os='214'   RH_servi�os_NOVA='214'.
IF RH_servi�os='215'   RH_servi�os_NOVA='21'.
IF RH_servi�os='220'   RH_servi�os_NOVA='2'.
IF RH_servi�os='221'   RH_servi�os_NOVA='21'.
IF RH_servi�os='222'   RH_servi�os_NOVA='2'.
IF RH_servi�os='223'   RH_servi�os_NOVA='23'.
IF RH_servi�os='224'   RH_servi�os_NOVA='24'.
IF RH_servi�os='225'   RH_servi�os_NOVA='25'.
IF RH_servi�os='230'   RH_servi�os_NOVA='23'.
IF RH_servi�os='231'   RH_servi�os_NOVA='231'.
IF RH_servi�os='232'   RH_servi�os_NOVA='232'.
IF RH_servi�os='233'   RH_servi�os_NOVA='23'.
IF RH_servi�os='234'   RH_servi�os_NOVA='234'.
IF RH_servi�os='235'   RH_servi�os_NOVA='235'.
IF RH_servi�os='240'   RH_servi�os_NOVA='24'.
IF RH_servi�os='241'   RH_servi�os_NOVA='241'.
IF RH_servi�os='242'   RH_servi�os_NOVA='24'.
IF RH_servi�os='243'   RH_servi�os_NOVA='243'.
IF RH_servi�os='244'   RH_servi�os_NOVA='24'.
IF RH_servi�os='245'   RH_servi�os_NOVA='245'.
IF RH_servi�os='250'   RH_servi�os_NOVA='25'.
IF RH_servi�os='251'   RH_servi�os_NOVA='251'.
IF RH_servi�os='252'   RH_servi�os_NOVA='25'.
IF RH_servi�os='253'   RH_servi�os_NOVA='253'.
IF RH_servi�os='254'   RH_servi�os_NOVA='254'.
IF RH_servi�os='255'   RH_servi�os_NOVA='25'.
IF RH_servi�os='300'   RH_servi�os_NOVA='3'.
IF RH_servi�os='304'   RH_servi�os_NOVA='34'.
IF RH_servi�os='310'   RH_servi�os_NOVA='31'.
IF RH_servi�os='311'   RH_servi�os_NOVA='31'.
IF RH_servi�os='312'   RH_servi�os_NOVA='312'.
IF RH_servi�os='314'   RH_servi�os_NOVA='314'.
IF RH_servi�os='315'   RH_servi�os_NOVA='315'.
IF RH_servi�os='320'   RH_servi�os_NOVA='32'.
IF RH_servi�os='321'   RH_servi�os_NOVA='321'.
IF RH_servi�os='322'   RH_servi�os_NOVA='32'.
IF RH_servi�os='323'   RH_servi�os_NOVA='32'.
IF RH_servi�os='324'   RH_servi�os_NOVA='324'.
IF RH_servi�os='325'   RH_servi�os_NOVA='325'.
IF RH_servi�os='330'   RH_servi�os_NOVA='3'.
IF RH_servi�os='331'   RH_servi�os_NOVA='31'.
IF RH_servi�os='332'   RH_servi�os_NOVA='32'.
IF RH_servi�os='333'   RH_servi�os_NOVA='3'.
IF RH_servi�os='334'   RH_servi�os_NOVA='34'.
IF RH_servi�os='335'   RH_servi�os_NOVA='35'.
IF RH_servi�os='340'   RH_servi�os_NOVA='34'.
IF RH_servi�os='341'   RH_servi�os_NOVA='341'.
IF RH_servi�os='342'   RH_servi�os_NOVA='342'.
IF RH_servi�os='343'   RH_servi�os_NOVA='34'.
IF RH_servi�os='344'   RH_servi�os_NOVA='34'.
IF RH_servi�os='345'   RH_servi�os_NOVA='345'.
IF RH_servi�os='350'   RH_servi�os_NOVA='35'.
IF RH_servi�os='351'   RH_servi�os_NOVA='351'.
IF RH_servi�os='352'   RH_servi�os_NOVA='352'.
IF RH_servi�os='355'   RH_servi�os_NOVA='35'.
IF RH_servi�os='400'   RH_servi�os_NOVA='4'.
IF RH_servi�os='405'   RH_servi�os_NOVA='45'.
IF RH_servi�os='410'   RH_servi�os_NOVA='41'.
IF RH_servi�os='412'   RH_servi�os_NOVA='412'.
IF RH_servi�os='413'   RH_servi�os_NOVA='413'.
IF RH_servi�os='415'   RH_servi�os_NOVA='415'.
IF RH_servi�os='420'   RH_servi�os_NOVA='42'.
IF RH_servi�os='421'   RH_servi�os_NOVA='421'.
IF RH_servi�os='422'   RH_servi�os_NOVA='42'.
IF RH_servi�os='423'   RH_servi�os_NOVA='423'.
IF RH_servi�os='424'   RH_servi�os_NOVA='42'.
IF RH_servi�os='425'   RH_servi�os_NOVA='425'.
IF RH_servi�os='430'   RH_servi�os_NOVA='43'.
IF RH_servi�os='431'   RH_servi�os_NOVA='431'.
IF RH_servi�os='432'   RH_servi�os_NOVA='432'.
IF RH_servi�os='433'   RH_servi�os_NOVA='43'.
IF RH_servi�os='434'   RH_servi�os_NOVA='43'.
IF RH_servi�os='435'   RH_servi�os_NOVA='435'.
IF RH_servi�os='440'   RH_servi�os_NOVA='4'.
IF RH_servi�os='441'   RH_servi�os_NOVA='41'.
IF RH_servi�os='442'   RH_servi�os_NOVA='42'.
IF RH_servi�os='443'   RH_servi�os_NOVA='43'.
IF RH_servi�os='444'   RH_servi�os_NOVA='4'.
IF RH_servi�os='445'   RH_servi�os_NOVA='45'.
IF RH_servi�os='450'   RH_servi�os_NOVA='45'.
IF RH_servi�os='451'   RH_servi�os_NOVA='451'.
IF RH_servi�os='452'   RH_servi�os_NOVA='452'.
IF RH_servi�os='453'   RH_servi�os_NOVA='453'.
IF RH_servi�os='455'   RH_servi�os_NOVA='45'.
IF RH_servi�os='500'   RH_servi�os_NOVA='5'.
IF RH_servi�os='501'   RH_servi�os_NOVA='51'.
IF RH_servi�os='510'   RH_servi�os_NOVA='51'.
IF RH_servi�os='511'   RH_servi�os_NOVA='51'.
IF RH_servi�os='512'   RH_servi�os_NOVA='512'.
IF RH_servi�os='513'   RH_servi�os_NOVA='513'.
IF RH_servi�os='515'   RH_servi�os_NOVA='515'.
IF RH_servi�os='520'   RH_servi�os_NOVA='52'.
IF RH_servi�os='521'   RH_servi�os_NOVA='521'.
IF RH_servi�os='522'   RH_servi�os_NOVA='52'.
IF RH_servi�os='523'   RH_servi�os_NOVA='523'.
IF RH_servi�os='524'   RH_servi�os_NOVA='524'.
IF RH_servi�os='525'   RH_servi�os_NOVA='52'.
IF RH_servi�os='530'   RH_servi�os_NOVA='53'.
IF RH_servi�os='531'   RH_servi�os_NOVA='531'.
IF RH_servi�os='532'   RH_servi�os_NOVA='532'.
IF RH_servi�os='533'   RH_servi�os_NOVA='53'.
IF RH_servi�os='534'   RH_servi�os_NOVA='534'.
IF RH_servi�os='535'   RH_servi�os_NOVA='53'.
IF RH_servi�os='540'   RH_servi�os_NOVA='54'.
IF RH_servi�os='541'   RH_servi�os_NOVA='541'.
IF RH_servi�os='542'   RH_servi�os_NOVA='542'.
IF RH_servi�os='543'   RH_servi�os_NOVA='543'.
IF RH_servi�os='544'   RH_servi�os_NOVA='54'.
IF RH_servi�os='545'   RH_servi�os_NOVA='54'.
IF RH_servi�os='550'   RH_servi�os_NOVA='5'.
IF RH_servi�os='551'   RH_servi�os_NOVA='51'.
IF RH_servi�os='552'   RH_servi�os_NOVA='52'.
IF RH_servi�os='553'   RH_servi�os_NOVA='53'.
IF RH_servi�os='554'   RH_servi�os_NOVA='54'.
IF RH_servi�os='555'   RH_servi�os_NOVA='5'.


*q47_14_1_final q47_14_2 q47_14_3


STRING q47_14_1_final (A1).
COMPUTE q47_14_1_final=CHAR.SUBSTR(RH_servi�os_NOVA, 1,1).
EXECUTE.

*q47_14_3

STRING q47_14_2_final (A1).
COMPUTE q47_14_2_final=CHAR.SUBSTR(RH_servi�os_NOVA, 2,1).
EXECUTE.


*q47_14_3

STRING q47_14_3_final (A1).
COMPUTE q47_14_3_final=CHAR.SUBSTR(RH_servi�os_NOVA, 3,1).
EXECUTE.


**comando para alterar a vari�vel de string para n�merica

ALTER TYPE q47_14_1_final q47_14_2_final q47_14_3_final (F1).
EXECUTE.

**recodificar o num�rio zero em missing

RECODE q47_14_1_final (0=SYSMIS).
EXECUTE.

RECODE q47_14_2_final (0=SYSMIS).
EXECUTE.

RECODE q47_14_3_final (0=SYSMIS).
EXECUTE.


*** vari�veis bin�rias - Servi�os****

**** Principal servi�o/atividade

RECODE q47_14_1_final (1=1) INTO D47_14_1bin_Gest�o.
VARIABLE LABELS   D47_14_1bin_Gest�o 'D47_14_1bin_Gest�o - Principal servi�o/atividade'.

VALUE LABELS   D47_14_1bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE   q47_14_1_final (2=1) INTO D47_14_1bin_PAEFI.
VARIABLE LABELS   D47_14_1bin_PAEFI 'D47_14_1bin_PAEFI - Principal servi�o/atividade'.

VALUE LABELS D47_14_1bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_1_final (3=1) INTO D47_14_1bin_MSE.
VARIABLE LABELS   D47_14_1bin_MSE 'D47_14_1bin_MSE - Principal servi�o/atividade'.

VALUE LABELS D47_14bin_MSE
1 'Servi�o de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_1_final (4=1) INTO D47_14_1bin_Abordagem.
VARIABLE LABELS   D47_14_1bin_Abordagem ' D47_14_1bin_Abordagem- Principal servi�o/atividade'.

VALUE LABELS  D47_14_1bin_Abordagem
1 'Servi�o de Abordagem Social'.
EXECUTE.

RECODE   q47_14_1_final (5=1) INTO D47_14_1bin_Outros.
VARIABLE LABELS  D47_14_1bin_Outros 'D47_14_1bin_Outros - Principal servi�o/atividade'.

VALUE LABELS  D47_14_1bin_Outros
1 'Outros'.
EXECUTE.



**** Segundo principal servi�o/atividade

RECODE q47_14_2_final (1=1) INTO D47_14_2bin_Gest�o.
VARIABLE LABELS   D47_14_2bin_Gest�o 'D47_14_2bin_Gest�o - Segundo principal servi�o/atividade'.

VALUE LABELS D47_14_2bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE   q47_14_2_final (2=1) INTO D47_14_2bin_PAEFI.
VARIABLE LABELS  D47_14_2bin_PAEFI 'D47_14_2bin_PAEFI - Segundo principal servi�o/atividade'.

VALUE LABELS  D47_14_2bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_2_final (3=1) INTO D47_14_2bin_MSE.
VARIABLE LABELS   D47_14_2bin_MSE 'D47_14_2bin_MSE - Segundo principal servi�o/atividade'.

VALUE LABELS D47_14_2bin_MSE
1 'Servi�o de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_2_final (4=1) INTO  D47_14_2bin_Abordagem.
VARIABLE LABELS  D47_14_2bin_Abordagem ' D47_14_2bin_Abordagem - Segundo principal servi�o/atividade'.

VALUE LABELS  D47_14_2bin_Abordagem
1 'Servi�o de Abordagem Social'.
EXECUTE.

RECODE   q47_14_2_final (5=1) INTO D47_14_2bin_Outros.
VARIABLE LABELS  D47_14_2bin_Outros 'D47_14_2bin_Outros - Segundo principal servi�o/atividade'.

VALUE LABELS  D47_14_2bin_Outros
1 'Outros'.
EXECUTE.


***** Terceiro principal servi�o/atividade

RECODE q47_14_3_final (1=1) INTO D47_14_3bin_Gest�o.
VARIABLE LABELS   D47_14_3bin_Gest�o 'D47_14_3bin_Gest�o - Terceiro principal servi�o/atividade'.

VALUE LABELS D47_14_3bin_Gest�o
1 'Gest�o'.
EXECUTE.

RECODE   q47_14_3_final (2=1) INTO D47_14_3bin_PAEFI.
VARIABLE LABELS  D47_14_3bin_PAEFI 'D47_14_3bin_PAEFI - Terceiro principal servi�o/atividade'.

VALUE LABELS  D47_14_3bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_3_final (3=1) INTO D47_14_3bin_MSE.
VARIABLE LABELS   D47_14_3bin_MSE 'D47_14_3bin_MSE - Terceiro principal servi�o/atividade'.

VALUE LABELS D47_14_3bin_MSE
1 'Servi�o de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_3_final (4=1) INTO  D47_14_3bin_Abordagem.
VARIABLE LABELS  D47_14_3bin_Abordagem ' D47_14_3bin_Abordagem - Terceiro principal servi�o/atividade'.

VALUE LABELS  D47_14_3bin_Abordagem
1 'Servi�o de Abordagem Social'.
EXECUTE.

RECODE   q47_14_3_final (5=1) INTO D47_14_3bin_Outros.
VARIABLE LABELS  D47_14_3bin_Outros 'D47_14_3bin_Outros - Terceiro principal servi�o/atividade'.

VALUE LABELS  D47_14_3bin_Outros
1 'Outros'.
EXECUTE.

********************AGGREGATE VARI�VEIS BIN�RIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /D47_14_1bin_Gest�o_sum=SUM(D47_14_1bin_Gest�o)
  /D47_14_1bin_PAEFI_sum=SUM(D47_14_1bin_PAEFI)
  /D47_14_1bin_MSE_sum=SUM(D47_14_1bin_MSE)
  /D47_14_1bin_Abordagem_sum=SUM(D47_14_1bin_Abordagem)
  /D47_14_1bin_Outros_sum=SUM(D47_14_1bin_Outros)
  /D47_14_2bin_Gest�o_sum=SUM(D47_14_2bin_Gest�o)
  /D47_14_2bin_PAEFI_sum=SUM(D47_14_2bin_PAEFI)
  /D47_14_2bin_MSE_sum=SUM(D47_14_2bin_MSE)
  /D47_14_2bin_Abordagem_sum=SUM(D47_14_2bin_Abordagem)
  /D47_14_2bin_Outros_sum=SUM(D47_14_2bin_Outros)
  /D47_14_3bin_Gest�o_sum=SUM(D47_14_3bin_Gest�o)
  /D47_14_3bin_PAEFI_sum=SUM(D47_14_3bin_PAEFI)
  /D47_14_3bin_MSE_sum=SUM(D47_14_3bin_MSE)
  /D47_14_3bin_Abordagem_sum=SUM(D47_14_3bin_Abordagem)
  /D47_14_3bin_Outros_sum=SUM(D47_14_3bin_Outros)
  /nu_trabalhadores=N.
EXECUTE.



VARIABLE LABELS
  D47_14_1bin_Gest�o_sum 'D47_14_1bin_Gest�o - Principal servi�o/atividade'
  D47_14_1bin_PAEFI_sum 'D47_14_1bin_PAEFI - Principal servi�o/atividade'
  D47_14_1bin_MSE_sum 'D47_14_1bin_MSE - Principal servi�o/atividade'
  D47_14_1bin_Abordagem_sum 'D47_14_1bin_Abordagem - Principal servi�o/atividade'
  D47_14_1bin_Outros_sum 'D47_14_2bin_Outros - Principal servi�o/atividade'
  D47_14_2bin_Gest�o_sum 'D47_14_2bin_Gest�o - Segundo principal servi�o/atividade'
  D47_14_2bin_PAEFI_sum 'D47_14_2bin_PAEFI - Segundo principal servi�o/atividade'
  D47_14_2bin_MSE_sum 'D47_14_2bin_MSE - Segundo principal servi�o/atividade'
  D47_14_2bin_Abordagem_sum 'D47_14_2bin_Abordagem- Segundo servi�o/atividade'
  D47_14_2bin_Outros_sum 'D47_14_2bin_Outros - Principal servi�o/atividade'
  D47_14_3bin_Gest�o_sum 'D47_14_3bin_Gest�o - Terceiro principal servi�o/atividade'
  D47_14_3bin_PAEFI_sum 'D47_14_3bin_PAEFI - Terceiro principal servi�o/atividade'
  D47_14_3bin_MSE_sum 'D47_14_3bin_MSE - Terceiro principal servi�o/atividade'
  D47_14_3bin_Abordagem_sum 'D47_14_3bin_Abordagem - Terceiro principal servi�o/atividade'
  D47_14_3bin_Outros_sum 'D47_14_3bin_Outros - Principal servi�o/atividade'
  nu_trabalhadores'N�mero de trabalhdores no CRAS'.
EXECUTE.


*** ANTES DE TUDO, SUBSTITUIR NO CSV   ".00"  POR  ",00"

*** ABRIR ARQUIVO CSV *** ( VERIFICAR O NOME E ENDERE�O DE LOCALIZA��O DO ARQUIVO)

GET DATA
  /TYPE=TXT
  /FILE="\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ "+
    "Tratamento\Gest�o Municipal\dados_gerais.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  codigo_ibge F6.0
  v11128 A80
  v11129 F2.0
  v11130 A80
  v11131 F5.0
  v11132 A80
  v11133 A80
  v11134 A120
  v11135 F8.0
  v11136 A120
  v11137 A2
  v11139 A80
  v11140 F11.0
  v11142 F10.0
  v11141 F4.0
  v11143 F1.0
  v11144_1 F1.0
  v11144_2 F1.0
  v11144_3 F1.0
  v11144_4 F1.0
  v11144_5 F1.0
  v11144_6 F1.0
  v11144_7 F1.0
  v11144_8 F1.0
  v11145 A80
  v11146 F1.0
  v11147 F1.0
  v11148 F1.0
  v11149 F1.0
  v11150 F1.0
  v11151 F1.0
  v11152 F1.0
  v11153 F1.0
  v11154 F1.0
  v11155 F1.0
  v11156 F1.0
  v11157 A80
  v11158 F2.0
  v11159 F2.0
  v11160 F2.0
  v11161 F2.0
  v11162 F2.0
  v11163 F2.0
  v11164 F2.0
  v11165 F2.0
  v11166 F3.0
  v11167 F3.0
  v11168 F3.0
  v11169 F3.0
  v11170 F1.0
  v11171 F1.0
  v11172 F2.0
  v11173 F3.0
  v11174 F1.0
  v11175 A80
  v11176 F1.0
  v11177 F4.0
  v11178 F4.0
  v11179_1 F1.0
  v11179_2 F1.0
  v11179_3 F1.0
  v11179_4 F1.0
  v11179_5 F1.0
  v11179_6 F1.0
  v11179_7 F1.0
  v11179_8 F1.0
  v11179_9 F1.0
  v11179_10 F1.0
  v11179_11 F1.0
  v11179_12 F1.0
  v11179_13 F1.0
  v11179_14 F1.0
  v11179_15 F1.0
  v11179_16 F1.0
  v11179_17 F1.0
  v11179_18 F1.0
  v11179_19 F1.0
  v11180 A120
  v11181 F1.0
  v11182 F4.0
  v11183_1 F1.0
  v11184 F1.0
  v11185 F1.0
  v11186 F1.0
  v11187_1 F1.0
  v11187_2 F1.0
  v11187_3 F1.0
  v11187_4 F1.0
  v11187_5 F1.0
  v11187_6 F1.0
  v11187_7 F1.0
  v11187_8 F1.0
  v11187_9 F1.0
  v11187_10 F1.0
  v11187_11 F1.0
  v11187_12 F1.0
  v11187_13 F1.0
  v11187_14 F1.0
  v11187_15 F1.0
  v11187_16 F1.0
  v11187_17 F1.0
  v11187_18 F1.0
  v11187_19 F1.0
  v11187_20 F1.0
  v11187_21 F1.0
  v11187_99 F1.0
  v11188 F1.0
  v11189_1 F1.0
  v11189_2 F1.0
  v11189_3 F1.0
  v11189_4 F1.0
  v11189_5 F1.0
  v11189_6 F1.0
  v11189_7 F1.0
  v11191 A250
  v11192 F2.0
  v11193 F2.0
  v11194 F3.0
  v11195_0 F1.0
  v11195_1 F1.0
  v11195_2 F1.0
  v11195_3 F1.0
  v11195_4 F1.0
  v11195_5 F1.0
  v11195_99 F1.0
  v11196 F1.0
  v11197 F1.0
  v11199 F1.0
  v11200 A14
  v11201 A14
  v11202 A14
  v11203 A14
  v11204 A14
  v11205 A14
  v11206 A14
  v11207 A14
  v11208 F1.0
  v11209 F4.0
  v11210 F4.0
  v11212 F4.0
  v11213 F4.0
  v11214 F4.0
  v11215 F4.0
  v11216 F4.0
  v11217 F4.0
  v11218 F4.0
  v11219 F4.0
  v11220 F4.0
  v11221 F4.0
  v11222 F4.0
  v11223 F4.0
  v11224 F4.0
  v11225 F4.0
  v11226 F4.0
  v11227 F4.0
  v11228 F4.0
  v11229 F4.0
  v11230 F4.0
  v11231 F4.0
  v11232 F4.0
  v11233 F4.0
  v11234 F4.0
  v11235 F4.0
  v11236 F4.0
  v11237 F4.0
  v11238 F4.0
  v11239 F4.0
  v11240 F4.0
  v11241 F4.0
  v11242 F4.0
  v11243 F4.0
  v11245 F1.0
  v11247 F1.0
  v11249 F3.0
  v11246 F1.0
  v11248 F1.0
  v11250 F3.0
  v11251 F1.0
  v11253 F2.0
  v11254 A10
  v11255 F3.0
  v11252 F1.0
  v11256 F3.0
  v11257 A10
  v11258 F3.0
  v11259 F1.0
  v11260 F1.0
  v11261_1 F1.0
  v11261_2 F1.0
  v11261_3 F1.0
  v11262 F4.0
  v11263 F1.0
  v11264_1 F1.0
  v11264_2 F1.0
  v11264_3 F1.0
  v11368 F4.0
  v11265_1 F1.0
  v11265_2 F1.0
  v11265_3 F1.0
  v11265_4 F1.0
  v11265_5 F1.0
  v11265_6 F1.0
  v11265_7 F1.0
  v11265_8 F1.0
  v11265_9 F1.0
  v11265_10 F1.0
  v11265_11 F1.0
  v11265_12 F1.0
  v11265_13 F1.0
  v11265_14 F1.0
  v11265_15 F1.0
  v11265_16 F1.0
  v11265_17 F1.0
  v11265_18 F1.0
  v11265_19 F1.0
  v11265_99 F1.0
  v11266 A80
  v11267_1 F1.0
  v11267_2 F1.0
  v11267_3 F1.0
  v11267_4 F1.0
  v11267_5 F1.0
  v11268_1 F1.0
  v11268_2 F1.0
  v11268_3 F1.0
  v11268_4 F1.0
  v11268_5 F1.0
  v11268_6 F1.0
  v11269_1 F1.0
  v11269_2 F1.0
  v11269_3 F1.0
  v11269_4 F1.0
  v11269_5 F1.0
  v11269_6 F1.0
  v11270 F4.0
  v11271 F4.0
  v11272 F4.0
  v11273 F4.0
  v11275 F4.0
  v11276 F4.0
  v11277_0 F1.0
  v11277_1 F1.0
  v11277_2 F1.0
  v11277_3 F1.0
  v11277_4 F1.0
  v11277_5 F1.0
  v11277_6 F1.0
  v11372 A80
  v11281_1 F1.0
  v11281_2 F1.0
  v11281_3 F1.0
  v11281_4 F1.0
  v11281_5 F1.0
  v11281_6 F1.0
  v11282 A80
  v11283_0 F1.0
  v11283_1 F1.0
  v11283_2 F1.0
  v11283_3 F1.0
  v11283_4 F1.0
  v11283_5 F1.0
  v11283_6 F1.0
  v11283_7 F1.0
  v11283_8 F1.0
  v11283_9 F1.0
  v11283_10 F1.0
  v11283_11 F1.0
  v11283_12 F1.0
  v11284 F1.0
  v11285 F1.0
  v11286 F1.0
  v11287 F4.0
  v11288 F1.0
  v11289 A80
  v11290 F1.0
  v11291 F4.0
  v11292 F4.0
  v11293_1 F1.0
  v11293_2 F1.0
  v11293_3 F1.0
  v11293_4 F1.0
  v11293_5 F1.0
  v11293_6 F1.0
  v11293_7 F1.0
  v11293_8 F1.0
  v11293_9 F1.0
  v11293_10 F1.0
  v11294 F1.0
  v11295 F1.0
  v11296 F5.0
  v11297_1 F1.0
  v11297_2 F1.0
  v11297_3 F1.0
  v11297_4 F1.0
  v11297_5 F1.0
  v11297_99 F1.0
  v11298 A250
  v11299 A250
  v11300 F2.0
  v11301 F1.0
  v11302_1 F1.0
  v11302_2 F1.0
  v11302_3 F1.0
  v11302_4 F1.0
  v11302_99 F1.0
  v11303 A366
  v11304 F1.0
  v11305_1 F1.0
  v11305_2 F1.0
  v11305_3 F1.0
  v11305_4 F1.0
  v11305_5 F1.0
  v11305_6 F1.0
  v11305_99 F1.0
  v11306 A80
  v11307 F1.0
  v11308_1 F1.0
  v11308_2 F1.0
  v11308_3 F1.0
  v11308_4 F1.0
  v11308_5 F1.0
  v11308_6 F1.0
  v11308_7 F1.0
  v11308_8 F1.0
  v11309 F1.0
  v11315 F1.0
  v11316 F1.0
  v11317 F1.0
  v11318 F1.0
  v11319 F1.0
  v11320 F1.0
  v11321 F1.0
  v11322 F1.0
  v11323 F1.0
  v11324 F1.0
  v11325 F1.0
  v11326 F1.0
  v11327 F1.0
  v11328 F1.0
  v11329 F5.0
  v11330_1 F1.0
  v11331 F1.0
  v11332 F1.0
  v11333 F2.0
  v11334 F2.0
  v11335 F2.0
  v11336 F1.0
  v11337 F4.0
  v11338_1 F1.0
  v11338_2 F1.0
  v11338_3 F1.0
  v11338_4 F1.0
  v11338_5 F1.0
  v11338_6 F1.0
  v11339 F1.0
  v11340 F5.0
  v11341 F4.0
  v11342 F1.0
  v11343 F1.0
  v11344 F1.0
  v11345 F1.0
  v11346 F1.0
  v11347_1 F1.0
  v11347_2 F1.0
  v11347_3 F1.0
  v11347_4 F1.0
  v11347_5 F1.0
  v11347_6 F1.0
  v11347_7 F1.0
  v11348 A120
  v11349 F1.0
  v11350 F1.0
  v11351 F1.0
  v11352_1 F1.0
  v11352_2 F1.0
  v11352_3 F1.0
  v11352_4 F1.0
  v11352_5 F1.0
  v11352_6 F1.0
  v11352_7 F1.0
  v11353 A80
  v11354_1 F1.0
  v11354_2 F1.0
  v11354_3 F1.0
  v11354_4 F1.0
  v11355 A80
  v11356 A14
  v11357 EDATE10
  v11359 A80
  v11360 A14
  v11361 A80
  v11362_0 F1.0
  v11363 A80
  v11364 A14
  v11365 A80
  v11366 A14
  v11367 A80.
CACHE.
EXECUTE.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gest�o Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.




*** RENOMEAR VARI�VEIS ***********************************************************************************************************

RENAME VARIABLES
v11128	=	Ident_01
v11129	=	Ident_02
v11130	=	Ident_03
v11131	=	Ident_04
v11132	=	Ident_05
v11133	=	Ident_06
v11134	=	Ident_07
v11135	=	Ident_08
v11136	=	Ident_09
v11137	=	Ident_10
v11139	=	Ident_11
v11140	=	Ident_12
v11142	=	Ident_13
v11141	=	Ident_14
v11143	=	q1
v11144_1	=	q2_1
v11144_2	=	q2_2
v11144_3	=	q2_3
v11144_4	=	q2_4
v11144_5	=	q2_5
v11144_6	=	q2_6
v11144_7	=	q2_7
v11144_8	=	q2_8
v11145	=	q2_9
v11146	=	q3_1
v11147	=	q3_2
v11148	=	q3_3
v11149	=	q3_4
v11150	=	q3_5
v11151	=	q3_6
v11152	=	q3_7
v11153	=	q3_8
v11154	=	q4
v11155	=	q5
v11156	=	q6
v11157	=	q6a_Outro
v11158	=	q7_1
v11159	=	q7_2
v11160	=	q7_3
v11161	=	q7_4
v11162	=	q7_5
v11163	=	q7_6
v11164	=	q7_7
v11165	=	q7_8
v11166	=	q8
v11167	=	q9a
v11168	=	q9b
v11169	=	q10
v11170	=	q11
v11171	=	q12
v11172	=	q13a
v11173	=	q13b
v11174	=	q14
v11175	=	q15
v11176	=	q16
v11177	=	q17
v11178	=	q18
v11179_1	=	q19_1
v11179_2	=	q19_2
v11179_3	=	q19_3
v11179_4	=	q19_4
v11179_5	=	q19_5
v11179_6	=	q19_6
v11179_7	=	q19_7
v11179_8	=	q19_8
v11179_9	=	q19_9
v11179_10	=	q19_10
v11179_11	=	q19_11
v11179_12	=	q19_12
v11179_13	=	q19_13
v11179_14	=	q19_14
v11179_15	=	q19_15
v11179_16	=	q19_16
v11179_17	=	q19_17
v11179_18	=	q19_18
v11179_19	=	q19_19
v11180	=	q19_19a
v11181	=	q20
v11182	=	q21
v11183_1	=	q21_99
v11184	=	q22
v11185	=	q23
v11186	=	q24
v11187_1	=	q25_1
v11187_2	=	q25_2
v11187_3	=	q25_3
v11187_4	=	q25_4
v11187_5	=	q25_5
v11187_6	=	q25_6
v11187_7	=	q25_7
v11187_8	=	q25_8
v11187_9	=	q25_9
v11187_10	=	q25_10
v11187_11	=	q25_11
v11187_12	=	q25_12
v11187_13	=	q25_13
v11187_14	=	q25_14
v11187_15	=	q25_15
v11187_16	=	q25_16
v11187_17	=	q25_17
v11187_18	=	q25_18
v11187_19	=	q25_19
v11187_20	=	q25_20
v11187_21	=	q25_21
v11187_99	=	q25_99
v11188	=	q26
v11189_1	=	q27_1
v11189_2	=	q27_2
v11189_3	=	q27_3
v11189_4	=	q27_4
v11189_5	=	q27_5
v11189_6	=	q27_6
v11189_7	=	q27_7
v11191	=	q27_7a
v11192	=	q28a
v11193	=	q28b
v11194	=	q28c
v11195_0	=	q29_0
v11195_1	=	q29_1
v11195_2	=	q29_2
v11195_3	=	q29_3
v11195_4	=	q29_4
v11195_5	=	q29_5
v11195_99	=	q29_6
v11196	=	q30
v11197	=	q31
v11199	=	q32
v11200	=	q33_1a
v11201	=	q33_1b
v11202	=	q33_2a
v11203	=	q33_2b
v11204	=	q33_3a
v11205	=	q33_3b
v11206	=	q33_4a
v11207	=	q33_4b
v11208	=	q34
v11209	=	q35
v11210	=	q36_1a
v11212	=	q36_1b
v11213	=	q36_1c
v11214	=	q36_1
v11215	=	q36_2a
v11216	=	q36_2b
v11217	=	q36_2c
v11218	=	q36_2
v11219	=	q36_3a
v11220	=	q36_3b
v11221	=	q36_3c
v11222	=	q36_3
v11223	=	q36_4a
v11224	=	q36_4b
v11225	=	q36_4c
v11226	=	q36_4
v11227	=	q36_a
v11228	=	q36_b
v11229	=	q36_c
v11230	=	q36
v11231	=	q37_1
v11232	=	q37_2
v11233	=	q37_3
v11234	=	q37_4
v11235	=	q37_5
v11236	=	q37_6
v11237	=	q37_7
v11238	=	q37_8
v11239	=	q37_9
v11240	=	q37_10
v11241	=	q37_11
v11242	=	q37_12
v11243	=	q37_13
v11245	=	q38_1a
v11247	=	q38_1b
v11249	=	q38_1c
v11246	=	q38_2a
v11248	=	q38_2b
v11250	=	q38_2c
v11251	=	q39_1a
v11253	=	q39_1b
v11254	=	q39_1c
v11255	=	q39_1d
v11252	=	q39_2a
v11256	=	q39_2b
v11257	=	q39_2c
v11258	=	q39_2d
v11259	=	q40
v11260	=	q41
v11261_1	=	q42_1
v11261_2	=	q42_2
v11261_3	=	q42_3
v11262	=	q43
v11263	=	q44
v11264_1	=	q45_1
v11264_2	=	q45_2
v11264_3	=	q45_3
v11368	=	q46
v11265_1	=	q47_1
v11265_2	=	q47_2
v11265_3	=	q47_3
v11265_4	=	q47_4
v11265_5	=	q47_5
v11265_6	=	q47_6
v11265_7	=	q47_7
v11265_8	=	q47_8
v11265_9	=	q47_9
v11265_10	=	q47_10
v11265_11	=	q47_11
v11265_12	=	q47_12
v11265_13	=	q47_13
v11265_14	=	q47_14
v11265_15	=	q47_15
v11265_16	=	q47_16
v11265_17	=	q47_17
v11265_18	=	q47_18
v11265_19	=	q47_19
v11265_99	=	q47_20
v11266	=	q47_20a
v11267_1	=	q48_1a
v11267_2	=	q48_1b
v11267_3	=	q48_1e
v11267_4	=	q48_1f
v11267_5	=	q48_1g
v11268_1	=	q48_2a
v11268_2	=	q48_2c
v11268_3	=	q48_2d
v11268_4	=	q48_2e
v11268_5	=	q48_2f
v11268_6	=	q48_2g
v11269_1	=	q48_3a
v11269_2	=	q48_3c
v11269_3	=	q48_3d
v11269_4	=	q48_3e
v11269_5	=	q48_3f
v11269_6	=	q48_3g
v11270	=	q49_1a
v11271	=	q49_1b
v11272	=	q49_2a
v11273	=	q49_2b
v11275	=	q49_3a
v11276	=	q49_3b
v11277_0	=	q50_0
v11277_1	=	q50_1
v11277_2	=	q50_2
v11277_3	=	q50_3
v11277_4	=	q50_4
v11277_5	=	q50_5
v11277_6	=	q50_6
v11372	=	q50_6a
v11281_1	=	q51_1
v11281_2	=	q51_2
v11281_3	=	q51_3
v11281_4	=	q51_4
v11281_5	=	q51_5
v11281_6	=	q51_6
v11282	=	q51_5a
v11283_0	=	q52_0
v11283_1	=	q52_1
v11283_2	=	q52_2
v11283_3	=	q52_3
v11283_4	=	q52_4
v11283_5	=	q52_5
v11283_6	=	q52_6
v11283_7	=	q52_7
v11283_8	=	q52_8
v11283_9	=	q52_9
v11283_10	=	q52_10
v11283_11	=	q52_11
v11283_12	=	q52_12
v11284	=	q53
v11285	=	q54
v11286	=	q55
v11287	=	q56
v11288	=	q57
v11289	=	q57a
v11290	=	q58
v11291	=	q59
v11292	=	q60
v11293_1	=	q61_1
v11293_2	=	q61_2
v11293_3	=	q61_3
v11293_4	=	q61_4
v11293_5	=	q61_5
v11293_6	=	q61_6
v11293_7	=	q61_7
v11293_8	=	q61_8
v11293_9	=	q61_9
v11293_10	=	q61_10
v11294	=	q62
v11295	=	q63
v11296	=	q64
v11297_1	=	q65_1
v11297_2	=	q65_2
v11297_3	=	q65_3
v11297_4	=	q65_4
v11297_5	=	q65_5
v11297_99	=	q65_6
v11298	=	q65_5a
v11299	=	q65_6a
v11300	=	q66
v11301	=	q67
v11302_1	=	q68_1
v11302_2	=	q68_2
v11302_3	=	q68_3
v11302_4	=	q68_4
v11302_99	=	q68_5
v11303	=	q68_5a
v11304	=	q69
v11305_1	=	q70_1
v11305_2	=	q70_2
v11305_3	=	q70_3
v11305_4	=	q70_4
v11305_5	=	q70_5
v11305_6	=	q70_6
v11305_99	=	q70_7
v11306	=	q70_7a
v11307	=	q71
v11308_1	=	q72_1
v11308_2 = q72_2falha
v11308_3 = q72_3falha
v11308_4	=	q72_4
v11308_5	=	q72_5
v11308_6	=	q72_6
v11308_7	=	q72_7
v11308_8	=	q72_8
v11309	=	q73_1a
v11315	=	q73_1b
v11316	=	q73_1c
v11317	=	q73_2a
v11318	=	q73_2b
v11319	=	q73_2c
v11320	=	q73_3a
v11321	=	q73_3b
v11322	=	q73_3c
v11323	=	q73_4a
v11324	=	q73_4b
v11325	=	q73_4c
v11326	=	q74
v11327	=	q75
v11328	=	q76
v11329	=	q77
v11330_1	=	q77_99
v11331	=	q78
v11332	=	q79
v11333	=	q80a
v11334	=	q80b
v11335	=	q80c
v11336	=	q81
v11337	=	q82
v11338_1	=	q83_1
v11338_2	=	q83_2
v11338_3	=	q83_3
v11338_4	=	q83_4
v11338_5	=	q83_5
v11338_6	=	q83_6
v11339	=	q84
v11340	=	q85
v11341	=	q86
v11342	=	q87
v11343	=	q88
v11344	=	q89
v11345	=	q90
v11346	=	q91
v11347_1	=	q92_1
v11347_2	=	q92_2
v11347_3	=	q92_3
v11347_4	=	q92_4
v11347_5	=	q92_5
v11347_6	=	q92_6
v11347_7	=	q92_7
v11348	=	q92_7a
v11349	=	q93
v11350	=	q94
v11351	=	q95
v11352_1	=	q96_1
v11352_2	=	q96_2
v11352_3	=	q96_3
v11352_4	=	q96_4
v11352_5	=	q96_5
v11352_6	=	q96_6
v11352_7	=	q96_7
v11353	=	q96_7a
v11354_1	=	q97_1
v11354_2	=	q97_2
v11354_3	=	q97_3
v11354_4	=	q97_4
v11355	=		Resp1_1
v11356	=	Resp1_2
v11357	=	Resp1_3
v11359	=	Resp1_4
v11360	=	Resp1_5
v11361	=	Resp1_6
v11362_0	=	Resp2_99
v11363	=	Resp2_1
v11364	=	Resp2_2
v11365	=	Resp2_3
v11366	=	Resp2_4
v11367	=	Resp2_5.
Execute.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gest�o Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.



*** R�TULO DAS VARI�VEIS ********************************************************************************************************************************************

VARIABLE LABELS
Ident_01	"	Ident_01 Nome que identifica o �rg�o gestor:	"
Ident_02	"	Ident_02 Tipo de Logradouro (avenida, rua, etc)	"
Ident_03	"	Ident_03 Endere�o:	"
Ident_04	"	Ident_04 N�mero:	"
Ident_05	"	Ident_05 Complemento:	"
Ident_06	"	Ident_06 Bairro:	"
Ident_07	"	Ident_07 Ponto de Refer�ncia:	"
Ident_08	"	Ident_08 CEP:	"
Ident_09	"	Ident_09 Munic�pio	"
Ident_10	"	Ident_10 UF	"
Ident_11	"	Ident_11 Email:	"
Ident_12	"	Ident_12 DDD - Telefone:	"
Ident_13	"	Ident_13 FAX:	"
Ident_14	"	Ident_14 Ramal	"
q1	"	q1 O �rg�o gestor da assist�ncia social caracteriza-se como:	"
q2_1	"	q2_1 Educa��o	"
q2_2	"	q2_2 Planejamento	"
q2_3	"	q2_3 Sa�de	"
q2_4	"	q2_4 Habita��o	"
q2_5	"	q2_5 Seguran�a Alimentar	"
q2_6	"	q2_6 Trabalho e/ou Emprego	"
q2_7	"	q2_7 Direitos Humanos	"
q2_8	"	q2_8 Outra	"
q2_9	"	q2_9 Outra_Qual?	"
q3_1	"	q3_1 Prote��o Social B�sica	"
q3_2	"	q3_2 Prote��o Social Especial	"
q3_3	"	q3_3 Gest�o de Benef�cios Assistenciais (PBF, BPC, Eventuais)	"
q3_4	"	q3_4 Gest�o do SUAS	"
q3_5	"	q3_5 Vigil�ncia Socioassistencial/Monitoramento e avalia��o	"
q3_6	"	q3_6 Gest�o do Trabalho	"
q3_7	"	q3_7 Regula��o do SUAS	"
q3_8	"	q3_8 Gest�o Financeira e Or�ament�ria	"
q4	"	q4_O �rg�o gestor da Assist�ncia Social � respons�vel pela pol�tica de seguran�a alimentar?	"
q5	"	q5_O �rg�o gestor da Assist�ncia Social � respons�vel pela gest�o do Cad�nico?	"
q6	"	q6_Caso n�o,qual o �rg�o/secretaria � respons�vel pelo cadastro?	"
q6a_Outro	"	q6a_Outro_Qual?	"
q7_1	"	q7_1 Na sede do �rg�o gestor/Secretaria de Assist�ncia	"
q7_2	"	q7_2 Nos CRAS	"
q7_3	"	q7_3 Em unidades/postos fixos exclusivos para cadastramento	"
q7_4	"	q7_4 Em unidades m�veis ou postos tempor�rios	"
q7_5	"	q7_5 Em outras unidades da Assist�ncia Social	"
q7_6	"	q7_6 Em unidades de outras pol�ticas p�blicas	"
q7_7	"	q7_7 No domic�lio das fam�lias	"
q7_8	"	q7_8 Outros	"
q8	"	q8 Em quantos locais � realizado o cadastramento/atualiza��o do Cad�nico?	"
q9a	"	q9a Acessam a vers�o on line do Cad�nico e realizam a digita��o das informa��es	"
q9b	"	q9b Registram as informa��es exclusivamente no Formul�rio de papel e enviam para digita��o em outro local	"
q10	"	q10 Em m�dia, ap�s a entrevista, quantos dias leva para que os dados coletados no papel sejam inseridos no sistema?	"
q11	"	q11 Existe Conselho Tutelar no munic�pio?	"
q12	"	q12 O Conselho Tutelar � vinculado ao �rg�o Gestor da Assist�ncia Social?	"
q13a	"	q13a Quantidade de Conselhos Tutelares existentes no munic�pio:	"
q13b	"	q13b Quantidade total de Conselheiros	"
q14	"	q14 O munic�pio � sede de comarca?	"
q15	"	q15 Caso n�o seja sede de comarca, a qual o munic�pio sede da Comarca est� vinculado?	"
q16	"	q16 Existe Lei Municipal de regulamenta��o do SUAS?	"
q17	"	q17 De que ano � a Lei do SUAS?	"
q18	"	q18 �ltimo ano de atualiza��o da Lei do SUAS?	"
q19_1	"	q19_1 Conceitua��o da assist�ncia social;	"
q19_2	"	q19_2 Fun��es da assist�ncia social (Vigil�ncia, Prote��o, Defesa);	"
q19_3	"	q19_3 Princ�pios pelos quais a Assist�ncia Social � regida;	"
q19_4	"	q19_4 Diretrizes para organiza��o da Assist�ncia Social;	"
q19_5	"	q19_5 Organiza��o da assist�ncia social por n�veis de Prote��o Social;	"
q19_6	"	q19_6 Conceitua��o e Objetivos do SUAS;	"
q19_7	"	q19_7 P�blico destinat�rio do SUAS;	"
q19_8	"	q19_8 Previs�o do financiamento dos servi�os	"
q19_9	"	q19_9 Previs�o do financiamento dos programas e projetos	"
q19_10	"	q19_10 Previs�o do financiamento dos benef�cios socioassistenciais	"
q19_11	"	q19_11 Especifica��o do �rg�o respons�vel pela coordena��o da Pol�tica de Assist�ncia Social;	"
q19_12	"	q19_12 Previs�o de prazo para regulamenta��o do funcionamento do Fundo de Assist�ncia Social;	"
q19_13	"	q19_13 Especifica��o e conceitua��o dos equipamentos p�blicos estatais CRAS e CREAS;	"
q19_14	"	q19_14 Especifica��o e conceitua��o dos servi�os socioassistenciais;	"
q19_15	"	q19_15 Especifica��o e conceitua��o dos benef�cios eventuais	"
q19_16	"	q19_16 Cria��o do Conselho Municipal de Assist�ncia Social	"
q19_17	"	q19_17 Cria��o do Fundo Municipal de Assist�ncia Social	"
q19_18	"	q19_18 Institui��o do Plano Municipal de Assist�ncia Social	"
q19_19	"	q19_19 Outros	"
q19_19a	"	q19_19a Qual?	"
q20	"	q20 Com que frequ�ncia o Plano Municipal de Assist�ncia Social � atualizado?	"
q21	"	q21 Em que ano ocorreu a �ltima atualiza��o do Plano Municipal de Assist�ncia Social?	"
q21_99	"	q21_99 N�o sabe	"
q22	"	q22_Algum representante do munic�pio participou das reuni�es da CIB em 2015?	"
q23	"	q23_Se sim, em quantas reuni�es da CIB houve representantes do seu munic�pio?	"
q24	"	q24_Nos �ltimos 12 meses, quantas visitas de t�cnicos da Secretaria Estadual o munic�pio recebeu?	"
q25_1	"	q25_1 Adequa��o da estrutura organizacional da Secretaria (regimento, organograma, etc)	"
q25_2	"	q25_2 Elabora��o do Plano Municipal de Assist�ncia Social	"
q25_3	"	q25_3 Elabora��o de Relat�rio de Gest�o	"
q25_4	"	q25_4 Gest�o do Fundo Municipal de Assist�ncia Social	"
q25_5	"	q25_5 Fortalecimento da intersetorialidade na gest�o dos servi�os,benef�cios e programas	"
q25_6	"	q25_6 Integra��o dos servi�os e benef�cios	"
q25_7	"	q25_7 Fortalecimento do Conselho Municipal	"
q25_8	"	q25_8 Adequa��o da implanta��o dos servi�os socioassistenciais	"
q25_9	"	q25_9 Gest�o dos servi�os socioassistenciais	"
q25_10	"	q25_10 Metodologias de trabalho social em fam�lias	"
q25_11	"	q25_11 Regulamenta��o dos benef�cios eventuais	"
q25_12	"	q25_12 Gest�o de benef�cios eventuais	"
q25_13	"	q25_13 Implementa��o de a��es relativas ao Benef�cio de Presta��o Continuada (BPC)	"
q25_14	"	q25_14 Gest�o do Cadastro �nico de Programas Sociais - Cad�nico	"
q25_15	"	q25_15 Gest�o do Programa Bolsa Fam�lia	"
q25_16	"	q25_16 Gest�o do Trabalho	"
q25_17	"	q25_17 Metodologias de monitoramento e avalia��o	"
q25_18	"	q25_18 Implanta��o da Vigil�ncia Socioassistencial	"
q25_19	"	q25_19 Utiliza��o do Prontu�rio SUAS	"
q25_20	"	q25_20 Adequa��o da legisla��o municipal	"
q25_21	"	q25_21 Prioridades e Metas do Pacto de Aprimoramento da Gest�o Municipal	"
q25_99	"	q25_99 Outros	"
q26	"	q26_Nos �ltimos 12 meses, quantas vezes os t�cnicos ou gestores municipais participaram de atividades de orienta��o e apoio promovidas pelo Estado?	"
q27_1	"	q27_1 Produ��o e distribui��o de material t�cnico;	"
q27_2	"	q27_2 Elabora��o, pelo Estado, de normativas e instru��es operacionais para orienta��o dos munic�pios;	"
q27_3	"	q27_3 Capacita��es presenciais;	"
q27_4	"	q27_4 Capacita��es � dist�ncia;	"
q27_5	"	q27_5 Assessoramento t�cnico de forma presencial no munic�pio;	"
q27_6	"	q27_6 Assessoramento t�cnico � dist�ncia;	"
q27_7	"	q27_7 Outras formas	"
q27_7a	"	q27_7a Especifique	"
q28a	"	q28a Profissionais FNAS de n�vel superior	"
q28b	"	q28b Profissionais FNAS de n�vel m�dio	"
q28c	"	q28c Profissionais FNAS total (superior mais m�dio)	"
q29_0	"	q29_0 N�o h� contadores respons�veis pelas contas do FMAS	"
q29_1	"	q29_1 No pr�prio Fundo Municipal de Assist�ncia Social	"
q29_2	"	q29_2 No �rg�o gestor da Assist�ncia Social	"
q29_3	"	q29_3 Em outro �rg�o/secretaria do munic�pio	"
q29_4	"	q29_4 Diretamente vinculado � Prefeitura	"
q29_5	"	q29_5 Em assessoria externa (entidade privada paga para tal)	"
q29_6	"	q29_6 Outro	"
q30	"	q30 Qual o ordenador de despesa do FMAS?	"
q31	"	q31 O munic�pio utiliza recursos do cofinanciamento federal de servi�os para pagamento de servidores p�blicos	"
q32	"	q32 Atualmente o munic�pio recebe recursos estaduais para o cofinanciamento da Assist�ncia Social?	"
q33_1a	"	 q33_1a Valor alocado referente aos recursos pr�prios do munic�pio (2013)	"
q33_1b	"	 q33_1b Valor alocado referente aos recursos pr�prios do munic�pio  (2014)	"
q33_2a	"	 q33_2a Valor repassado pelo governo estadual (Fundo a Fundo e Conv�nios) (2013)	"
q33_2b	"	 q33_2b Valor repassado pelo governo estadual (Fundo a Fundo e Conv�nios)  (2014)	"
q33_3a	"	 q33_3a Valor da despesa realizada com recursos pr�prios do munic�pio  (2013)	"
q33_3b	"	 q33_3b Valor da despesa realizada com recursos pr�prios do munic�pio  (2014)	"
q33_4a	"	 q33_4a Valor da despesa realizada com recursos repassados pelo governo estadual  (2013)	"
q33_4b	"	 q33_4b Valor da despesa realizada com recursos repassados pelo governo estadual  (2014)	"
q34	"	 q34  O �rg�o gestor municipal faz transfer�ncia de recursos por conv�nio para ONG�s ou Entidades de Assist�ncia Social no munic�pio?	"
q35	"	 q35  Quantas entidades recebem recurso do �rg�o gestor municipal por conv�nio?	"
q36_1a	"	 q36_1a Estatut�rio - Ensino Fundamental	"
q36_1b	"	 q36_1b Estatut�rio - Ensino M�dio	"
q36_1c	"	 q36_1c Estatut�rios - Ensino Superior	"
q36_1	"	 q36_1 Total - Estatut�rios	"
q36_2a	"	 q36_2a Empregados P�blicos Celetistas - Ensino Fundamental	"
q36_2b	"	 q36_2b Empregados P�blicos Celetistas - Ensino M�dio	"
q36_2c	"	 q36_2c Empregados P�blicos Celetistas - Ensino Superior	"
q36_2	"	 q36_2 Total - Empregados P�blicos Celetistas	"
q36_3a	"	 q36_3a Somente Comissionados - Ensino Fundamental	"
q36_3b	"	 q36_3b Somente Comissionados - Ensino M�dio	"
q36_3c	"	 q36_3c Somente Comissionados - Ensino Superior	"
q36_3	"	 q36_3 Total - Somente Comissionados	"
q36_4a	"	 q36_4a Outros V�nculos - Ensino Fundamental	"
q36_4b	"	 q36_4b Outros V�nculos - Ensino M�dio	"
q36_4c	"	 q36_4c Outros V�nculos - Ensino Superior	"
q36_4	"	 q36_4 Total - Outros V�nculos	"
q36_a	"	 q36_a Total - Ensino Fundamental	"
q36_b	"	 q36_b Total - Ensino M�dio	"
q36_c	"	 q36_c Total - Ensino Superior	"
q36	"	 q36 Total - Total de Trabalhadores	"
q37_1	"	q37_1 Assistente Social	"
q37_2	"	q37_2 Psic�logo	"
q37_3	"	q37_3 Pedagogo	"
q37_4	"	q37_4 Advogados	"
q37_5	"	q37_5 Antrop�logo	"
q37_6	"	q37_6 Soci�logo	"
q37_7	"	q37_7 Terapeuta Ocupacional	"
q37_8	"	q37_8 Contador	"
q37_9	"	q37_9 Administrador	"
q37_10	"	q37_10 Economista	"
q37_11	"	q37_11 Economista Dom�stico	"
q37_12	"	q37_12 Estat�stico	"
q37_13	"	q37_13 Musicoterapeuta	"
q38_1a	"	q38_1a Realizou, ou realizar�, concurso no ano de 2015 - N�vel Superior	"
q38_1b	"	q38_1b N�vel Superior - Concurso em 2015 - etapa atual do processo	"
q38_1c	"	q38_1c N�vel Superior - Concurso em 2015 - candidatos nomeados	"
q38_2a	"	q38_2a Realizou, ou realizar�, concurso no ano de 2015 - N�vel M�dio	"
q38_2b	"	q38_2b N�vel M�dio - Concurso em 2015 - etapa atual do processo	"
q38_2c	"	q38_2c N�vel M�dio - Concurso em 2015 - candidatos nomeados	"
q39_1a	"	q39_1a Realizou concurso em 2014 - N�vel Superior	"
q39_1b	"	q39_1b Realizou concurso em 2014 - N�vel Superior - Quantidade de vagas	"
q39_1c	"	q39_1c Realizou concurso em 2014 - N�vel Superior - Data de homologa��o	"
q39_1d	"	q39_1d Realizou concurso em 2014 - N�vel Superior - Quantidade de trabalhadores que tomaram posse	"
q39_2a	"	q39_2a Realizou concurso em 2014 - N�vel M�dio	"
q39_2b	"	q39_2b Realizou concurso em 2014 - N�vel M�dio - Quantidade de vagas	"
q39_2c	"	q39_2c Realizou concurso em 2014 - N�vel M�dio - Data de homologa��o do concurso	"
q39_2d	"	q39_2d Realizou concurso em 2014 - N�vel M�dio - Quantidade de trabalhadores que tomaram posse	"
q40	"	q40  O munic�pio possui Plano de Capacita��o e Educa��o Permanente?	"
q41	"	 q41  No ano de 2014 os trabalhadores da Assist�ncia Social do munic�pio tiveram acesso a cursos presenciais de capacita��o?	"
q42_1	"	q42_1 O curso presencial foi promovido pelo: munic�pio	"
q42_2	"	q42_2 O curso presencial foi promovido pelo: gest�o estadual	"
q42_3	"	q42_3 O curso presencial foi promovido pelo:  gest�o federal/MDS	"
q43	"	q43  Qual o n�mero aproximado de trabalhadores capacitados nos cursos presenciais?	"
q44	"	q44  No ano de 2014 os trabalhadores da Assist�ncia Social do munic�pio tiveram acesso a cursos � dist�ncia (EAD) de capacita��o?	"
q45_1	"	q45_1  O curso a dist�ncia foi promovido pelo: munic�pio	"
q45_2	"	q45_2  O curso a dist�ncia foi promovido pelo: gest�o estadual	"
q45_3	"	q45_3  O curso a dist�ncia foi promovido pelo: gest�o federal/MDS	"
q46	"	q46  Qual o n�mero aproximado de trabalhadores capacitados nos cursos � dist�ncia?	"
q47_1	"	q47_1 �rea tem�ticas do curso:1 Metodologias do trabalho social com fam�lias	"
q47_2	"	q47_2 Metodologias para desenvolvimento dos Servi�os de Conviv�ncia e Fortalecimento de V�nculos	"
q47_3	"	q47_3 Atendimento a situa��es de viol�ncia e viola��o de direitos	"
q47_4	"	q47_4 Atendimento � Popula��o em situa��o de Rua	"
q47_5	"	q47_5 Atendimento a Pessoas com Defici�ncia	"
q47_6	"	q47_6 Medidas Socioeducativas para adolescentes em conflito com a lei	"
q47_7	"	q47_7 Acolhimento (abrigamento) de Crian�as e Adolescentes	"
q47_8	"	q47_8 Acolhimento (abrigamento) de Idosos	"
q47_9	"	q47_9 Acolhimento (abrigamento) de pessoas em situa��o de rua	"
q47_10	"	q47_10 Estrutura, normas e funcionamento do SUAS	"
q47_11	"	q47_11 Gest�o Financeira e Or�ament�ria do SUAS	"
q47_12	"	q47_12 Cadastro �nico de Programas Sociais ? Cad�nico	"
q47_13	"	q47_13 Bolsa Fam�lia	"
q47_14	"	q47_14 Sistemas de Informa��o do SUAS	"
q47_15	"	q47_15 Vigil�ncia Socioassistencial	"
q47_16	"	q47_16 Monitoramento e Avalia��o	"
q47_17	"	q47_17 Gest�o do Territ�rio	"
q47_18	"	q47_18 �lcool e Drogas	"
q47_19	"	q47_19 A��es da Assist�ncia Social para situa��es de emerg�ncia e calamidade p�blica	"
q47_20	"	q47_20 Outras	"
q47_20a	"	q47_20a Especifique	"
q48_1a	"	q48_1a Na pr�pria sede do �rg�o gestor	"
q48_1b	"	q48_1b No CRAS	"
q48_1e	"	q48_1e Em outra unidade p�blica	"
q48_1f	"	q48_1f Em entidade conveniada	"
q48_1g	"	q48_1g N�o realiza	"
q48_2a	"	q48_2a Na pr�pria sede do �rg�o gestor	"
q48_2c	"	q48_2c No CREAS	"
q48_2d	"	q48_2d No Centro Pop	"
q48_2e	"	q48_2e Em outra unidade p�blica	"
q48_2f	"	q48_2f Em entidade conveniada	"
q48_2g	"	q48_2g N�o realiza	"
q48_3a	"	q48_3a Na pr�pria sede do �rg�o gestor	"
q48_3c	"	q48_3c No CREAS	"
q48_3d	"	q48_3d  No Centro Pop	"
q48_3e	"	q48_3e Em outra unidade p�blica	"
q48_3f	"	q48_3f Em entidade conveniada	"
q48_3g	"	q48_3g N�o realiza	"
q49_1a	"	q49_1a Qtd. Outras Unidades de PSB - P�blicas	"
q49_1b	"	q49_1b Qtd  Outras Unidades de PSB - N�o Gov  Conveniadas	"
q49_2a	"	q49_2a Qtd Unidades exclusivas de MSE - P�blicas	"
q49_2b	"	q49_2b Qtd Unidades exclusivas de MSE - N�o Gov  Conveniadas	"
q49_3a	"	q49_3a Outras Unidades de PSEs de M�dia Complexidade - P�blicas	"
q49_3b	"	q49_3b Outras Unidades de PSEs de M�dia Complexidade - N�o Gov  Conveniadas	"
q50_0	"	q50_0 Este munic�pio possui CREAS	"
q50_1	"	q50_1 Encaminha para o CRAS	"
q50_2	"	q50_2 Encaminha para o CREAS de outro munic�pio	"
q50_3	"	q50_3 Encaminha para o CREAS Regional ao qual est� vinculado	"
q50_4	"	q50_4 Encaminha para alguma entidade conveniada no munic�pio	"
q50_5	"	q50_5 � atendido pela equipe de refer�ncia da prote��o social especial do munic�pio	"
q50_6	"	q50_6 Outro	"
q50_6a	"	q50_6a Qual?	"
q51_1	"	q51_1 Encaminha para o CRAS	"
q51_2	"	q51_2 Encaminha para o CREAS de outro munic�pio	"
q51_3	"	q51_3 Encaminha para o CREAS Regional ao qual est� vinculado	"
q51_4	"	q51_4 Encaminha para alguma entidade conveniada no munic�pio	"
q51_5	"	q51_5 Outro	"
q51_6	"	q51_6 N�o atende	"
q51_5a	"	q51_5a Qual?	"
q52_0	"	q52_0 N�o realiza	"
q52_1	"	q52_1 Realiza campanhas, mobiliza��o e sensibiliza��o	"
q52_2	"	q52_2 Realiza atividades de abordagem social em espa�os p�blicos	"
q52_3	"	q52_3 Realiza busca ativa de fam�lias com situa��o de trabalho infantil para inclus�o no Cad�nico	"
q52_4	"	q52_4 Encaminha/inclui crian�as e adolescentes em trabalho infantil para os Servi�os de Conviv�ncia	"
q52_5	"	q52_5 Encaminha/inclui fam�lias com situa��o de trabalho infantil para PAIF/CRAS	"
q52_6	"	q52_6 Encaminha/inclui fam�lias com situa��o de trabalho infantil para o PAEFI/CREAS	"
q52_7	"	q52_7 Encaminha fam�lias e indiv�duos para a aplica��o de medidas protetivas � fam�lia	"
q52_8	"	q52_8 Encaminha fam�lias com situa��o de trabalho infantil para programas e projetos de capacita��o profissional	"
q52_9	"	q52_9 Encaminha fam�lias com situa��o de trabalho infantil para programas e projetos de inclus�o produtiva e/ou gera��o de trabalho e renda	"
q52_10	"	q52_10 Encaminha fam�lias com situa��o de trabalho infantil para atendimento em outras pol�ticas p�blicas	"
q52_11	"	q52_11 Encaminha fam�lias com situa��o de trabalho infantil para os �rg�os de defesa e responsabiliza��o	"
q52_12	"	q52_12 Elabora estudos e diagn�sticos sobre o trabalho infantil no munic�pio	"
q53	"	q53 O �rg�o gestor da Assist�ncia Social possui equipe de gest�o exclusiva da Prote��o Social Especial de Alta Complexidade?	"
q54	"	q54 O munic�pio possui Servi�o de Acolhimento em Fam�lia Acolhedora para Crian�a e Adolescente?	"
q55	"	q55 Caso sim, o Servi�o de Acolhimento em Fam�lia Acolhedora � regulamentado por lei municipal?	"
q56	"	q56 Em que ano o Servi�o de Acolhimento em Fam�lia Acolhedora foi implantado no munic�pio?	"
q57	"	q57 A gest�o do Programa/Servi�o de Fam�lia Acolhedora no munic�pio � executado pelo(a):	"
q57a	"	q57a Qual?	"
q58	"	q58 Existe repasse de subs�dio financeiro para as fam�lias acolhedoras?	"
q59	"	q59 Atualmente, quantas fam�lias aptas a receber as crian�as/adolescentes com medidas protetivas est�o cadastradas pelo Servi�o?	"
q60	"	q60 Atualmente, quantas crian�as/adolescentes est�o sendo acolhidas por meio do Servi�o de Fam�lia Acolhedora no munic�pio?	"
q61_1	"	q61_1 Controla o acesso �s vagas, sendo respons�vel por indicar a Unidade de Acolhimento que receber� a crian�a/adolescente	"
q61_2	"	q61_2 Acompanha/monitora o fluxo de entradas e sa�das de crian�as e adolescentes nas Unidades	"
q61_3	"	q61_3 Centraliza as informa��es das medidas de acolhimento determinadas pelo poder Judici�rio	"
q61_4	"	q61_4 Centraliza as informa��es dos acolhimentos emergenciais realizados pelo Conselho Tutelar	"
q61_5	"	q61_5 Promove a articula��o dos servi�os de acolhimento com os demais servi�os da rede socioassistencial	"
q61_6	"	q61_6 Promove a articula��o dos servi�os de acolhimento com as demais pol�ticas p�blicas e �rg�os de defesa de direitos	"
q61_7	"	q61_7 Realiza supervis�o e suporte t�cnico aos servi�os de acolhimento	"
q61_8	"	q61_8 Monitora o tempo de perman�ncia das crian�as e adolescentes nos servi�os de acolhimento	"
q61_9	"	q61_9 Fiscaliza a qualidade dos servi�os	"
q61_10	"	q61_10 N�o realiza nenhuma das atividades listadas acima	"
q62	"	q62 A Assist�ncia Social do munic�pio tem programa/servi�o de apoio e prote��o a pessoas e fam�lias afetadas por situa��o de emerg�ncia ou de calamidade p�blica?	"
q63	"	q63 Nos �ltimos 12 (doze) meses a Assist�ncia Social do munic�pio necessitou abrigar em alojamentos provis�rios pessoas atingidas por situa��es de emerg�ncia ou de calamidade p�blica?	"
q64	"	q64 Caso sim, indique a quantidade de pessoas desabrigadas que foram acolhidas em alojamentos provis�rios nos �ltimos 12 (doze) meses:	"
q65_1	"	q65_1 Alojamento espec�fico para este fim	"
q65_2	"	q65_2 Albergues ou Unidades de Acolhimento j� existentes	"
q65_3	"	q65_3 Tendas e Barracas	"
q65_4	"	q65_4 Aluguel Social	"
q65_5	"	q65_5 Locais designados para outras atividades (igrejas, escolas, quadras)	"
q65_6	"	q65_6 Outros	"
q65_5a	"	q65_5a Locais designados para outras atividades: Qual?	"
q65_6a	"	q 65_6a Outros: Qual?	"
q66	"	q66 A Assist�ncia Social do munic�pio tem articula��o com o �rg�o Municipal de Defesa Civil?	"
q67	"	q67 O munic�pio utiliza embarca��o/lancha para o desenvolvimento de atividades/servi�os da Assist�ncia Social?	"
q68_1	"	q68_1 Equipe do CRAS	"
q68_2	"	q68_2 Equipe do CREAS ou da Prote��o Social Especial	"
q68_3	"	q68_3 Equipe do Cadastro �nico	"
q68_4	"	q68_4 Equipes do �rg�o gestor da Assist�ncia Social	"
q68_5	"	q68_5 Outros	"
q68_5a	"	q68_5a Quais?	"
q69	"	q69 Qual a periodicidade em que a lancha � utilizada pela Assist�ncia Social no seu munic�pio?	"
q70_1	"	q70_1 Sim, para atender Ribeirinhos	"
q70_2	"	q70_2 Sim, para atender Ind�genas	"
q70_3	"	q70_3 Sim, para atender Quilombolas	"
q70_4	"	q70_4 Sim, para atender Pescadores Artesanais	"
q70_5	"	q70_5 Sim, para atender Extrativistas	"
q70_6	"	q70_6 Sim, para atender Pantaneiros	"
q70_7	"	q70_7 Sim, para atender Outros	"
q70_7a	"	q70_7a Quais?	"
q71	"	q71 A Assist�ncia Social desenvolve a��es relativas ao Benef�cio de Presta��o Continuada (BPC)?	"
q72_1	"	q72_1 Realizar estudos sobre as condi��es de vulnerabilidade das fam�lias com idosos e pessoas com defici�ncia	"
q72_2falha 'q72_2 Orientar a popula��o sobre direitos e procedimentos para acesso ao BPC'
q72_3falha 'q72_3 Encaminhar poss�veis benefici�rios ao INSS'
q72_4	"	q72_4 Apoiar e acompanhar o processo de concess�o do BPC	"
q72_5	"	q72_5 Distribuir aos CRAS e CREAS do munic�pio listas territorializadas das fam�lias com benefici�rios do BPC	"
q72_6	"	q72_6 Inserir os benefici�rios nos servi�os socioassistenciais	"
q72_7	"	q72_7 Realizar o cadastramento dos benefici�rios do BPC no Cad�nico	"
q72_8	"	q72_8 Articular com outros setores a inser��o dos benefici�rios nas diversas pol�ticas sociais	"
q73_1a	"	q73_1a Aux�lio Funeral - Se o Benef�cio � concedido no munic�pio	"
q73_1b	"	q73_1b Aux�lio Funeral - Se o benef�cio � regulamentado	"
q73_1c	"	q73_1c Aux�lio Funeral - Local onde o Benef�cio � concedido	"
q73_2a	"	q73_2a Aux�lio Natalidade - Se o Benef�cio � concedido no munic�pio	"
q73_2b	"	q73_2b Aux�lio Natalidade - Se o Benef�cio � regulamentado	"
q73_2c	"	q73_2c Aux�lio Natalidade - Local onde o Benef�cio � concedido	"
q73_3a	"	q73_3a Benef�cio Eventual para situa��o de calamidade p�blica - Se o Benef�cio � concedido no munic�pio	"
q73_3b	"	q73_3b Benef�cio Eventual para situa��o de calamidade p�blica - Se o Benef�cio � regulamentado	"
q73_3c	"	q73_3c Benef�cio Eventual para situa��o de calamidade p�blica - Local onde o Benef�cio � concedido	"
q73_4a	"	q73_4a Outros Benef�cios Eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria - Se o Benef�cio � concedido no munic�pio	"
q73_4b	"	q73_4b Outros Benef�cios Eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria - Se o Benef�cio � regulamentado	"
q73_4c	"	q73_4c Outros Benef�cios Eventuais para fam�lias em situa��o de vulnerabilidade tempor�ria - Local onde o Benef�cio � concedido	"
q74	"	q74 O munic�pio possui um programa PR�PRIO de transfer�ncia de renda (transfer�ncia de recursos municipais de forma constante a um p�blico espec�fico)?	"
q75	"	q75 O Programa pr�prio de transfer�ncia de renda do munic�pio est� sob gest�o do �rg�o gestor da assist�ncia social?	"
q76	"	q76 Existe lei municipal que regulamente o programa de transfer�ncia de renda do munic�pio	"
q77	"	q77 Quantas fam�lias receberam o benef�cio do programa de transfer�ncia de renda do munic�pio no �ltimo m�s em que ele foi concedido?	"
q77_99	"	q77_99 N�o sabe	"
q78	"	q78 Qual � a Inst�ncia de Controle Social do Programa Bolsa Fam�lia no munic�pio?	"
q79	"	q79 O munic�pio possui profissional(s) exclusivamente dedicado(s) �s atividades de Vigil�ncia Socioassistencial?	"
q80a	"	q80a profissionais de n�vel superior	"
q80b	"	q80b profissionais de n�vel m�dio	"
q80c	"	q80c quantidade total (n�vel superior mais n�vel m�dio)	"
q81	"	q81 O �rg�o gestor possui diagn�stico socioterritorial do munic�pio?	"
q82	"	q82 Qual o ano de atualiza��o do diagn�stico?	"
q83_1	"	q83_1 Quantidade de fam�lias vulner�veis no territ�rio	"
q83_2	"	q83_2 Perfil da popula��o (composi��o et�ria, perfil socioecon�mico, etc)	"
q83_3	"	q83_3 Indicadores relativos � demanda da popula��o aos servi�os socioassistenciais	"
q83_4	"	q83_4 Mapeamento das unidades de atendimento socioassistencial	"
q83_5	"	q83_5 Mapeamento de unidades de outras pol�ticas p�blicas	"
q83_6	"	q83_6 Informa��es sobre o territ�rio de abrang�ncia dos CRAS	"
q84	"	q84 O �rg�o gestor possui levantamento ou pesquisa que aponte o n�mero de pessoas em situa��o de rua no munic�pio?	"
q85	"	q85 Caso sim, quantas pessoas?	"
q86	"	q86 Em que ano foi realizado o levantamento ou pesquisa (pop rua)?	"
q87	"	q87 Como foi realizado este levantamento ou pesquisa (pop rua)?	"
q88	"	q88 O �rg�o gestor possui levantamento ou pesquisa que aponte a exist�ncia de locais de explora��o sexual de crian�as e adolescentes no munic�pio?	"
q89	"	q89 Como foi realizado este levantamento ou pesquisa (explora��o sexual)?	"
q90	"	q90 O �rg�o gestor possui levantamento ou pesquisa sobre a incid�ncia de Trabalho Infantil no munic�pio?	"
q91	"	q91 Como foi realizado este levantamento ou pesquisa (trab infantil)?	"
q92_1	"	q92_1 Elabora��o de informa��es territorializadas (listagens) das fam�lias do Cad�nico	"
q92_2	"	q92_2 Elabora��o de informa��es territorializadas (listagens) dos benefici�rios do Programa Bolsa Fam�lia	"
q92_3	"	q92_3 Elabora��o de informa��es territorializadas (listagens) dos benefici�rios em situa��o de descumprimento de condicionalidades	"
q92_4	"	q92_4 Elabora��o de informa��es territorializadas (listagens) dos benefici�rios do Benef�cio de Presta��o Continuada	"
q92_5	"	q92_5 Estrat�gias de mobiliza��o como distribui��o de panfletos, colagem de cartazes, envio de correspond�ncia, utiliza��o de carros de som, entre outros	"
q92_6	"	q92_6 Apoio aos servi�os socioassistenciais no planejamento da realiza��o de visitas t�cnicas	"
q92_7	"	q92_7 Outras	"
q92_7a	"	q92_7a Qual?	"
q93	"	q93 Nos �ltimos 12 meses, o �rg�o gestor promoveu reuni�o/capacita��o com os t�cnicos dos CRAS e CREAS para implanta��o do Prontu�rio SUAS?	"
q94	"	q94 O munic�pio possui defini��o de instrumentos e fluxos de Notifica��o Compuls�ria das situa��es de viol�ncia e viola��o de direitos atendidos?	"
q95	"	q95 O �rg�o gestor utiliza sistema de informa��o pr�prio para gerenciar a pol�tica de Assist�ncia Social?	"
q96_1	"	q96_1 Registrar repasses de recursos para entidades	"
q96_2	"	q96_2 Registrar presta��o de contas das entidades	"
q96_3	"	q96_3 Registrar execu��o f�sica/atendimentos	"
q96_4	"	q96_4 Registrar unidades da rede socioassistencial p�blica	"
q96_5	"	q96_5 Registrar unidades da rede socioassistencial privada	"
q96_6	"	q96_6 Elaborar e armazenar Prontu�rio Eletr�nico dos usu�rios dos Servi�os Socioassistenciais	"
q96_7	"	q96_7 Outros	"
q96_7a	"	q96_7a Outros:Quais	"
q97_1	"	q97_1 Realiza visitas t�cnicas � rede socioassistencial	"
q97_2	"	q97_2 Realiza a gest�o/valida��o das informa��es prestadas sobre as unidades	"
q97_3	"	q97_3 Possui instrumentos de coleta de dados pr�prios para levantamento de informa��es junto aos servi�os	"
q97_4	"	q97_4 Produ��o de Indicadores pr�prios para aferi��o volume e qualidade dos servi�os socioassitenciais	"
Resp1_1	"	Resp1_1 Nome	"
Resp1_2	"	Resp1_2 CPF:	"
Resp1_3	"	Resp1_3 Data	"
Resp1_4	"	Resp1_4 Cargo/Fun��o do respons�vel pelo preenchimento:	"
Resp1_5	"	Resp1_5 Telefone	"
Resp1_6	"	Resp1_6 Email:	"
Resp2_99	"	Resp2_99 N�o h� representante da Vigil�ncia designado no munic�pio	"
Resp2_1	"	Resp2_1 Nome do representante da vigil�ncia	"
Resp2_2	"	Resp2_2 CPF do representante da vigil�ncia	"
Resp2_3	"	Resp2_3 Cargo/Fun��o do representante da vigil�ncia	"
Resp2_4	"	Resp2_4 Telefone do representante da vigil�ncia	"
Resp2_5	"	Resp2_5 Email do representante da vigil�ncia	".
Execute.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gest�o Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.


*** R�TULO DOS VALORES DAS VARI�VEIS ********************************************************************************************************************************************

ADD VALUE LABELS
	Ident_02	1	"	Alameda	"
		2	"	�rea	"
		3	"	Avenida	"
		4	"	Campo	"
		5	"	Ch�cara	"
		6	"	Col�nia	"
		7	"	Condom�nio	"
		8	"	Conjunto	"
		9	"	Distrito	"
		10	"	Esplanada	"
		11	"	Esta��o	"
		12	"	Estrada	"
		13	"	Favela	"
		14	"	Fazenda	"
		15	"	Feira	"
		16	"	Jardim	"
		17	"	Ladeira	"
		18	"	Lago	"
		19	"	Lagoa	"
		20	"	Largo	"
		21	"	Loteamento	"
		22	"	Morro	"
		23	"	N�cleo	"
		24	"	Parque	"
		25	"	Passarela	"
		26	"	P�tio	"
		27	"	Pra�a	"
		28	"	Quadra	"
		29	"	Recanto	"
		30	"	Residencial	"
		31	"	Rodovia	"
		32	"	Rua	"
		33	"	Setor	"
		34	"	S�tio	"
		35	"	Travessa	"
		36	"	Trecho	"
		37	"	Trevo	"
		38	"	Vale	"
		39	"	Vereda	"
		40	"	Via	"
		41	"	Viaduto	"
		42	"	Viela	"
		43	"	Vila	"
		44	"	Outros	"
/	q1	1	"	Secretaria municipal exclusiva da �rea de Assist�ncia Social	"
		2	"	Secretaria municipal em conjunto com outras pol�ticas setoriais	"
		3	"	Funda��o P�blica	"
		4	"	Setor/Coordenadoria/Assessoria subordinado diretamente ao Gabinete do(a) Prefeito(a)	"
/	q2_1	0	"	N�o	"
		1	"	Sim	"
/	q2_2	0	"	N�o	"
		1	"	Sim	"
/	q2_3	0	"	N�o	"
		1	"	Sim	"
/	q2_4	0	"	N�o	"
		1	"	Sim	"
/	q2_5	0	"	N�o	"
		1	"	Sim	"
/	q2_6	0	"	N�o	"
		1	"	Sim	"
/	q2_7	0	"	N�o	"
		1	"	Sim	"
/	q2_8	0	"	N�o	"
		1	"	Sim	"
/	q3_1	1	"	Sim, na estrutura formal do �rg�o gestor	"
		2	"	Sim, de maneira informal	"
		3	"	N�o constitu�da	"
/	q3_2	1	"	Sim, na estrutura formal do �rg�o gestor	"
		2	"	Sim, de maneira informal	"
		3	"	N�o constitu�da	"
/	q3_3	1	"	Sim, na estrutura formal do �rg�o gestor	"
		2	"	Sim, de maneira informal	"
		3	"	N�o constitu�da	"
/	q3_4	1	"	Sim, na estrutura formal do �rg�o gestor	"
		2	"	Sim, de maneira informal	"
		3	"	N�o constitu�da	"
/	q3_5	1	"	Sim, na estrutura formal do �rg�o gestor	"
		2	"	Sim, de maneira informal	"
		3	"	N�o constitu�da	"
/	q3_6	1	"	Sim, na estrutura formal do �rg�o gestor	"
		2	"	Sim, de maneira informal	"
		3	"	N�o constitu�da	"
/	q3_7	1	"	Sim, na estrutura formal do �rg�o gestor	"
		2	"	Sim, de maneira informal	"
		3	"	N�o constitu�da	"
/	q3_8	1	"	Sim, na estrutura formal do �rg�o gestor	"
		2	"	Sim, de maneira informal	"
		3	"	N�o constitu�da	"
/	q4	0	"	N�o	"
		1	"	Sim	"
/	q5	0	"	N�o	"
		1	"	Sim	"
/	q6	1	"	Educa��o	"
		2	"	Sa�de	"
		99	"	Outro	"
/	q7_1	0	"	N�o realiza	"
		1	"	Cadastramento	"
		2	"	Atualiza��o Cadastral	"
		99	"	Em ambos	"
/	q7_2	0	"	N�o realiza	"
		1	"	Cadastramento	"
		2	"	Atualiza��o Cadastral	"
		99	"	Em ambos	"
/	q7_3	0	"	N�o realiza	"
		1	"	Cadastramento	"
		2	"	Atualiza��o Cadastral	"
		99	"	Em ambos	"
/	q7_4	0	"	N�o realiza	"
		1	"	Cadastramento	"
		2	"	Atualiza��o Cadastral	"
		99	"	Em ambos	"
/	q7_5	0	"	N�o realiza	"
		1	"	Cadastramento	"
		2	"	Atualiza��o Cadastral	"
		99	"	Em ambos	"
/	q7_6	0	"	N�o realiza	"
		1	"	Cadastramento	"
		2	"	Atualiza��o Cadastral	"
		99	"	Em ambos	"
/	q7_7	0	"	N�o realiza	"
		1	"	Cadastramento	"
		2	"	Atualiza��o Cadastral	"
		99	"	Em ambos	"
/	q7_8	0	"	N�o realiza	"
		1	"	Cadastramento	"
		2	"	Atualiza��o Cadastral	"
		99	"	Em ambos	"
/	q11	0	"	N�o	"
		1	"	Sim	"
/	q12	0	"	N�o	"
		1	"	Sim	"
/	q14	0	"	N�o	"
		1	"	Sim	"
/	q16	0	"	N�o	"
		1	"	Sim	"
/	q19_1	0	"	N�o	"
		1	"	Sim	"
/	q19_2	0	"	N�o	"
		1	"	Sim	"
/	q19_3	0	"	N�o	"
		1	"	Sim	"
/	q19_4	0	"	N�o	"
		1	"	Sim	"
/	q19_5	0	"	N�o	"
		1	"	Sim	"
/	q19_6	0	"	N�o	"
		1	"	Sim	"
/	q19_7	0	"	N�o	"
		1	"	Sim	"
/	q19_8	0	"	N�o	"
		1	"	Sim	"
/	q19_9	0	"	N�o	"
		1	"	Sim	"
/	q19_10	0	"	N�o	"
		1	"	Sim	"
/	q19_11	0	"	N�o	"
		1	"	Sim	"
/	q19_12	0	"	N�o	"
		1	"	Sim	"
/	q19_13	0	"	N�o	"
		1	"	Sim	"
/	q19_14	0	"	N�o	"
		1	"	Sim	"
/	q19_15	0	"	N�o	"
		1	"	Sim	"
/	q19_16	0	"	N�o	"
		1	"	Sim	"
/	q19_17	0	"	N�o	"
		1	"	Sim	"
/	q19_18	0	"	N�o	"
		1	"	Sim	"
/	q19_19	0	"	N�o	"
		1	"	Sim	"
/	q20	1	"	Mais de uma vez por ano	"
		2	"	Anualmente	"
		3	"	Bienalmente	"
		4	"	De quatro em quatro anos	"
		5	"	Mais de quatro anos	"
/	q21_99	0	"	N�o	"
		1	"	Sim	"
/	q22	0	"	N�o	"
		1	"	Sim	"
/	q23	1	"	1 vez no ano	"
		2	"	De 2 a 3 vezes no ano	"
		3	"	De 4 a 6 vezes no ano	"
		4	"	De 7 a 10 vezes no ano	"
		5	"	Mais de 10 vezes no ano	"
/	q24	0	"	Nenhuma	"
		1	"	Uma visita	"
		2	"	Duas a tr�s visitas	"
		3	"	Quatro a seis visitas	"
		4	"	Mais de seis visitas	"
/	q25_1	0	"	N�o	"
		1	"	Sim	"
/	q25_2	0	"	N�o	"
		1	"	Sim	"
/	q25_3	0	"	N�o	"
		1	"	Sim	"
/	q25_4	0	"	N�o	"
		1	"	Sim	"
/	q25_5	0	"	N�o	"
		1	"	Sim	"
/	q25_6	0	"	N�o	"
		1	"	Sim	"
/	q25_7	0	"	N�o	"
		1	"	Sim	"
/	q25_8	0	"	N�o	"
		1	"	Sim	"
/	q25_9	0	"	N�o	"
		1	"	Sim	"
/	q25_10	0	"	N�o	"
		1	"	Sim	"
/	q25_11	0	"	N�o	"
		1	"	Sim	"
/	q25_12	0	"	N�o	"
		1	"	Sim	"
/	q25_13	0	"	N�o	"
		1	"	Sim	"
/	q25_14	0	"	N�o	"
		1	"	Sim	"
/	q25_15	0	"	N�o	"
		1	"	Sim	"
/	q25_16	0	"	N�o	"
		1	"	Sim	"
/	q25_17	0	"	N�o	"
		1	"	Sim	"
/	q25_18	0	"	N�o	"
		1	"	Sim	"
/	q25_19	0	"	N�o	"
		1	"	Sim	"
/	q25_20	0	"	N�o	"
		1	"	Sim	"
/	q25_21	0	"	N�o	"
		1	"	Sim	"
/	q25_99	0	"	N�o	"
		1	"	Sim	"
/	q26	0	"	Nenhuma vez	"
		1	"	Uma vez	"
		2	"	Duas ou tr�s vezes	"
		3	"	Quatro a seis vezes	"
		4	"	Mais de seis vezes	"
/	q27_1	0	"	N�o	"
		1	"	Sim	"
/	q27_2	0	"	N�o	"
		1	"	Sim	"
/	q27_3	0	"	N�o	"
		1	"	Sim	"
/	q27_4	0	"	N�o	"
		1	"	Sim	"
/	q27_5	0	"	N�o	"
		1	"	Sim	"
/	q27_6	0	"	N�o	"
		1	"	Sim	"
/	q27_7	0	"	N�o	"
		1	"	Sim	"
/	q29_0	0	"	N�o	"
		1	"	Sim	"
/	q29_1	0	"	N�o	"
		1	"	Sim	"
/	q29_2	0	"	N�o	"
		1	"	Sim	"
/	q29_3	0	"	N�o	"
		1	"	Sim	"
/	q29_4	0	"	N�o	"
		1	"	Sim	"
/	q29_5	0	"	N�o	"
		1	"	Sim	"
/	q29_6	0	"	N�o	"
		1	"	Sim	"
/	q30	1	"	O Prefeito	"
		2	"	O Secret�rio(a) Municipal de Assist�ncia Social	"
		3	"	Outro funcion�rio da Secretaria de Assist�ncia Social	"
		4	"	Secret�rio ou t�cnico de outra �rea	"
/	q31	0	"	N�o	"
		1	"	Sim	"
/	q32	0	"	N�o recebe	"
		1	"	Sim, fundo-a-fundo	"
		2	"	Sim, via conv�nio	"
		3	"	Sim, por conv�nio e fundo-a-fundo	"
/	q34	0	"	N�o	"
		1	"	Sim, com recursos do Fundo Municipal de Assist�ncia Social (FMAS)	"
		2	"	Sim, com recursos de outras fontes	"
		3	"	Sim, com recursos do FMAS e de outras fontes	"
/	q38_1a	0	"	N�o	"
		1	"	Sim	"
/	q38_1b	1	"	Autoriza��o concedida	"
		2	"	Edital publicado	"
		3	"	Prova(s) realizada(s)	"
		4	"	Resultado homologado	"
/	q38_2a	0	"	N�o	"
		1	"	Sim	"
/	q38_2b	1	"	Autoriza��o concedida	"
		2	"	Edital publicado	"
		3	"	Prova(s) realizada(s)	"
		4	"	Resultado homologado	"
/	q39_1a	0	"	N�o	"
		1	"	Sim	"
/	q39_2a	0	"	N�o	"
		1	"	Sim	"
/	q40	0	"	N�o	"
		1	"	Sim	"
/	q41	0	"	N�o	"
		1	"	Sim	"
/	q42_1	0	"	N�o	"
		1	"	Sim	"
/	q42_2	0	"	N�o	"
		1	"	Sim	"
/	q42_3	0	"	N�o	"
		1	"	Sim	"
/	q44	0	"	N�o	"
		1	"	Sim	"
/	q45_1	0	"	N�o	"
		1	"	Sim	"
/	q45_2	0	"	N�o	"
		1	"	Sim	"
/	q45_3	0	"	N�o	"
		1	"	Sim	"
/	q47_1	0	"	N�o	"
		1	"	Sim	"
/	q47_2	0	"	N�o	"
		1	"	Sim	"
/	q47_3	0	"	N�o	"
		1	"	Sim	"
/	q47_4	0	"	N�o	"
		1	"	Sim	"
/	q47_5	0	"	N�o	"
		1	"	Sim	"
/	q47_6	0	"	N�o	"
		1	"	Sim	"
/	q47_7	0	"	N�o	"
		1	"	Sim	"
/	q47_8	0	"	N�o	"
		1	"	Sim	"
/	q47_9	0	"	N�o	"
		1	"	Sim	"
/	q47_10	0	"	N�o	"
		1	"	Sim	"
/	q47_11	0	"	N�o	"
		1	"	Sim	"
/	q47_12	0	"	N�o	"
		1	"	Sim	"
/	q47_13	0	"	N�o	"
		1	"	Sim	"
/	q47_14	0	"	N�o	"
		1	"	Sim	"
/	q47_15	0	"	N�o	"
		1	"	Sim	"
/	q47_16	0	"	N�o	"
		1	"	Sim	"
/	q47_17	0	"	N�o	"
		1	"	Sim	"
/	q47_18	0	"	N�o	"
		1	"	Sim	"
/	q47_19	0	"	N�o	"
		1	"	Sim	"
/	q47_20	0	"	N�o	"
		1	"	Sim	"
/	q48_1a	0	"	N�o	"
		1	"	Sim	"
/	q48_1b	0	"	N�o	"
		1	"	Sim	"
/	q48_1e	0	"	N�o	"
		1	"	Sim	"
/	q48_1f	0	"	N�o	"
		1	"	Sim	"
/	q48_1g	0	"	N�o	"
		1	"	Sim	"
/	q48_2a	0	"	N�o	"
		1	"	Sim	"
/	q48_2c	0	"	N�o	"
		1	"	Sim	"
/	q48_2d	0	"	N�o	"
		1	"	Sim	"
/	q48_2e	0	"	N�o	"
		1	"	Sim	"
/	q48_2f	0	"	N�o	"
		1	"	Sim	"
/	q48_2g	0	"	N�o	"
		1	"	Sim	"
/	q48_3a	0	"	N�o	"
		1	"	Sim	"
/	q48_3c	0	"	N�o	"
		1	"	Sim	"
/	q48_3d	0	"	N�o	"
		1	"	Sim	"
/	q48_3e	0	"	N�o	"
		1	"	Sim	"
/	q48_3f	0	"	N�o	"
		1	"	Sim	"
/	q48_3g	0	"	N�o	"
		1	"	Sim	"
/	q50_0	0	"	N�o	"
		1	"	Sim	"
/	q50_1	0	"	N�o	"
		1	"	Sim	"
/	q50_2	0	"	N�o	"
		1	"	Sim	"
/	q50_3	0	"	N�o	"
		1	"	Sim	"
/	q50_4	0	"	N�o	"
		1	"	Sim	"
/	q50_5	0	"	N�o	"
		1	"	Sim	"
/	q50_6	0	"	N�o	"
		1	"	Sim	"
/	q51_1	0	"	N�o	"
		1	"	Sim	"
/	q51_2	0	"	N�o	"
		1	"	Sim	"
/	q51_3	0	"	N�o	"
		1	"	Sim	"
/	q51_4	0	"	N�o	"
		1	"	Sim	"
/	q51_5	0	"	N�o	"
		1	"	Sim	"
/	q51_6	0	"	N�o	"
		1	"	Sim	"
/	q52_0	0	"	N�o	"
		1	"	Sim	"
/	q52_1	0	"	N�o	"
		1	"	Sim	"
/	q52_2	0	"	N�o	"
		1	"	Sim	"
/	q52_3	0	"	N�o	"
		1	"	Sim	"
/	q52_4	0	"	N�o	"
		1	"	Sim	"
/	q52_5	0	"	N�o	"
		1	"	Sim	"
/	q52_6	0	"	N�o	"
		1	"	Sim	"
/	q52_7	0	"	N�o	"
		1	"	Sim	"
/	q52_8	0	"	N�o	"
		1	"	Sim	"
/	q52_9	0	"	N�o	"
		1	"	Sim	"
/	q52_10	0	"	N�o	"
		1	"	Sim	"
/	q52_11	0	"	N�o	"
		1	"	Sim	"
/	q52_12	0	"	N�o	"
		1	"	Sim	"
/	q53	1	"	Sim, possui equipe exclusiva	"
		2	"	N�o possui equipe exclusiva	"
/	q54	0	"	N�o	"
		1	"	Sim	"
/	q55	0	"	N�o	"
		1	"	Sim	"
/	q57	1	"	Secretaria Municipal de Assist�ncia Social	"
		2	"	Outra secretaria do munic�pio	"
		3	"	Diretamente pelo gabinete da Prefeitura	"
		4	"	Organiza��o N�o Governamental � ONG	"
		99	"	Outro	"
/	q58	0	"	N�o	"
		1	"	Sim	"
/	q61_1	0	"	N�o	"
		1	"	Sim	"
/	q61_2	0	"	N�o	"
		1	"	Sim	"
/	q61_3	0	"	N�o	"
		1	"	Sim	"
/	q61_4	0	"	N�o	"
		1	"	Sim	"
/	q61_5	0	"	N�o	"
		1	"	Sim	"
/	q61_6	0	"	N�o	"
		1	"	Sim	"
/	q61_7	0	"	N�o	"
		1	"	Sim	"
/	q61_8	0	"	N�o	"
		1	"	Sim	"
/	q61_9	0	"	N�o	"
		1	"	Sim	"
/	q61_10	0	"	N�o	"
		1	"	Sim	"
/	q62	0	"	N�o	"
		1	"	Sim	"
/	q63	0	"	N�o	"
		1	"	Sim	"
/	q65_1	0	"	N�o	"
		1	"	Sim	"
/	q65_2	0	"	N�o	"
		1	"	Sim	"
/	q65_3	0	"	N�o	"
		1	"	Sim	"
/	q65_4	0	"	N�o	"
		1	"	Sim	"
/	q65_5	0	"	N�o	"
		1	"	Sim	"
/	q65_6	0	"	N�o	"
		1	"	Sim	"
/	q66	0	"	N�o	"
		1	"	Sim	"
		99	"	N�o h� �rg�o de Defesa Civil no munic�pio	"
/	q67	0	"	N�o	"
		1	"	Sim	"
/	q68_1	0	"	N�o	"
		1	"	Sim	"
/	q68_2	0	"	N�o	"
		1	"	Sim	"
/	q68_3	0	"	N�o	"
		1	"	Sim	"
/	q68_4	0	"	N�o	"
		1	"	Sim	"
/	q68_5	0	"	N�o	"
		1	"	Sim	"
/	q69	1	"	Menos que 1 vez por m�s	"
		2	"	Mensalmente	"
		3	"	Quinzenalmente	"
		4	"	1 vez por semana	"
		5	"	2 ou 3 vezes por semana	"
		6	"	4 ou mais vezes por semana	"
/	q70_1	0	"	N�o	"
		1	"	Sim	"
/	q70_2	0	"	N�o	"
		1	"	Sim	"
/	q70_3	0	"	N�o	"
		1	"	Sim	"
/	q70_4	0	"	N�o	"
		1	"	Sim	"
/	q70_5	0	"	N�o	"
		1	"	Sim	"
/	q70_6	0	"	N�o	"
		1	"	Sim	"
/	q70_7	0	"	N�o	"
		1	"	Sim	"
/	q71	0	"	N�o	"
		1	"	Sim	"
/	q72_1	0	"	N�o	"
		1	"	Sim	"
/	q72_2falha	0	"	N�o	"
		1	"	Sim	"
/	q72_3falha	0	"	N�o	"
		1	"	Sim	"
/	q72_4	0	"	N�o	"
		1	"	Sim	"
/	q72_5	0	"	N�o	"
		1	"	Sim	"
/	q72_6	0	"	N�o	"
		1	"	Sim	"
/	q72_7	0	"	N�o	"
		1	"	Sim	"
/	q72_8	0	"	N�o	"
		1	"	Sim	"
/	q73_1a	0	"	N�o	"
		1	"	Sim	"
/	q73_1b	0	"	N�o	"
		1	"	Sim	"
/	q73_1c	1	"	Na sede do �rg�o gestor	"
		2	"	Em unidades da rede socioassistenciais	"
		3	"	Em ambas	"
/	q73_2a	0	"	N�o	"
		1	"	Sim	"
/	q73_2b	0	"	N�o	"
		1	"	Sim	"
/	q73_2c	1	"	Na sede do �rg�o gestor	"
		2	"	Em unidades da rede socioassistencial	"
		3	"	Em ambas	"
/	q73_3a	0	"	N�o	"
		1	"	Sim	"
/	q73_3b	0	"	N�o	"
		1	"	Sim	"
/	q73_3c	1	"	Na sede do �rg�o gestor	"
		2	"	Em unidades da rede socioassistencial	"
		3	"	Em ambas	"
/	q73_4a	0	"	N�o	"
		1	"	Sim	"
/	q73_4b	0	"	N�o	"
		1	"	Sim	"
/	q73_4c	1	"	Na sede do �rg�o gestor	"
		2	"	Em unidades da rede socioassistencial	"
		3	"	Em ambas	"
/	q74	0	"	N�o	"
		1	"	Sim	"
/	q75	0	"	N�o	"
		1	"	Sim	"
/	q76	0	"	N�o	"
		1	"	Sim	"
/	q77_99	0	"	N�o	"
		1	"	Sim	"
/	q78	1	"	O pr�prio Conselho Municipal de Assist�ncia Social (CMAS), ou comiss�o permanente do CMAS.	"
		2	"	Inst�ncia/comit� exclusivo do Programa Bolsa Fam�lia (PBF).	"
		3	"	Conselho de outra Pol�tica.	"
/	q79	0	"	N�o	"
		1	"	Sim	"
/	q81	0	"	N�o	"
		1	"	Sim	"
/	q83_1	0	"	N�o	"
		1	"	Sim	"
/	q83_2	0	"	N�o	"
		1	"	Sim	"
/	q83_3	0	"	N�o	"
		1	"	Sim	"
/	q83_4	0	"	N�o	"
		1	"	Sim	"
/	q83_5	0	"	N�o	"
		1	"	Sim	"
/	q83_6	0	"	N�o	"
		1	"	Sim	"
/	q84	0	"	N�o	"
		1	"	Sim	"
/	q87	1	"	O levantamento foi realizado pela equipe do pr�prio �rg�o gestor ou de outra unidade do poder p�blico municipal	"
		2	"	O �rg�o gestor e/ou outra unidade do poder p�blico municipal contratou institui��o para este fim	"
		3	"	O �rg�o gestor obteve esta informa��o atrav�s de levantamento ou pesquisa j� realizada por outra institui��o	"
/	q88	0	"	N�o	"
		1	"	Sim	"
/	q89	1	"	O levantamento foi realizado pela equipe do pr�prio �rg�o gestor ou de outra unidade do poder p�blico municipal	"
		2	"	O �rg�o gestor e/ou outra unidade do poder p�blico municipal contratou institui��o para este fim	"
		3	"	O �rg�o gestor obteve esta informa��o atrav�s de levantamento ou pesquisa j� realizada por outra institui��o	"
/	q90	0	"	N�o	"
		1	"	Sim	"
/	q91	1	"	O levantamento foi realizado pela equipe do pr�prio �rg�o gestor ou de outra unidade do poder p�blico municipal	"
		2	"	O �rg�o gestor e/ou outra unidade do poder p�blico municipal contratou institui��o para este fim	"
		3	"	O �rg�o gestor obteve esta informa��o atrav�s de levantamento ou pesquisa j� realizada por outra institui��o	"
/	q92_1	0	"	N�o	"
		1	"	Sim	"
/	q92_2	0	"	N�o	"
		1	"	Sim	"
/	q92_3	0	"	N�o	"
		1	"	Sim	"
/	q92_4	0	"	N�o	"
		1	"	Sim	"
/	q92_5	0	"	N�o	"
		1	"	Sim	"
/	q92_6	0	"	N�o	"
		1	"	Sim	"
/	q92_7	0	"	N�o	"
		1	"	Sim	"
/	q93	0	"	N�o	"
		1	"	Sim	"
/	q94 	1	"	Sim, sendo que o �rg�o gestor da Assist�ncia Social � respons�vel pelo processo	"
		2	"	Sim, a Assistencia Social notifica, mas outra pol�tica p�blica � o respons�vel pelo processo	"
		3	"	Sim, mas as unidades de Assist�ncia Social n�o notificam	"
		4	"	N�o possui	"
/	q95	0	"	N�o	"
		1	"	Sim	"
/	q96_1	0	"	N�o	"
		1	"	Sim	"
/	q96_2	0	"	N�o	"
		1	"	Sim	"
/	q96_3	0	"	N�o	"
		1	"	Sim	"
/	q96_4	0	"	N�o	"
		1	"	Sim	"
/	q96_5	0	"	N�o	"
		1	"	Sim	"
/	q96_6	0	"	N�o	"
		1	"	Sim	"
/	q96_7	0	"	N�o	"
		1	"	Sim	"
/	q97_1	0	"	N�o	"
		1	"	Sim	"
/	q97_2	0	"	N�o	"
		1	"	Sim	"
/	q97_3	0	"	N�o	"
		1	"	Sim	"
/	q97_4	0	"	N�o	"
		1	"	Sim	"
/	Resp2_99	0	"	N�o	"
		1	"	Sim	" .
EXECUTE.
				

SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gest�o Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.


***********************************


Numeric IBGE (F11.0).
COMPUTE IBGE = codigo_ibge.
EXECUTE.

SORT CASES BY IBGE(A).

MATCH FILES /FILE=*
  /TABLE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ '+
    'Tratamento\Gest�o Municipal\Miscelanea\Dados de refer�ncia_munic�pios_Revisado5570_26_03_2014.sav'
  /RENAME (Munic�pio Pop_Rural2010 Pop_Urbana2010 uf_s area = d0 d1 d2 d3 d4) 
  /BY IBGE
  /DROP= d0 d1 d2 d3 d4.
EXECUTE.


Numeric FX_pop (F1.0).

IF (Pop_Total2010 <5000) FX_pop = 1.
IF (Pop_Total2010 >=5000 & Pop_Total2010 < 20000)  FX_pop = 2.
IF (Pop_Total2010 >=20000 & Pop_Total2010 < 50000)  FX_pop = 3.
IF (Pop_Total2010 >=50000 & Pop_Total2010 < 100000)  FX_pop = 4.
IF (Pop_Total2010 >= 100000 & Pop_Total2010 < 300000)  FX_pop = 5.
IF (Pop_Total2010 >=300000 & Pop_Total2010 < 900000)  FX_pop = 6.
IF (Pop_Total2010 > 900000) FX_pop = 7.
Execute.

ADD VALUE LABELS  FX_pop 1' menos de 5 mil' 2 '> 5.000 e < 20.000'  3 '> 20.000 e < 50.000'  4 '> 50.000 e < 1000.000'  5 '> 100.000 e < 300.000'   6 '> 300.000 e < 900.000'  7 '> 900.000'.



SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gest�o Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.


MATCH FILES /FILE=*
  /TABLE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ '+
    'Tratamento\Gest�o Municipal\Miscelanea\Baixados_Incompletos_GM_2015.sav'
  /BY IBGE.
EXECUTE.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gest�o Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.



************************Substituir  "PONTO" por "VIRGULA" nas vari�veis abaixo, antes de modificar o TIPO*******************************************************************************************************************

Alter Type 
q33_1a  (F14.2)
q33_1b  (F14.2)
q33_2a  (F14.2)
q33_2b  (F14.2)
q33_3a  (F14.2)
q33_3b  (F14.2)
q33_4a  (F14.2)
q33_4b  (F14.2).
Execute.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gest�o Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gest�o Municipal\CensoSUAS_2015_Gest�oMunicipal_final.sav'
  /COMPRESSED.



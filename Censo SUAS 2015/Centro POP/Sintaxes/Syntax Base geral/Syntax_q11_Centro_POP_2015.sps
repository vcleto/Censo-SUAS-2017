
DATASET ACTIVATE DataSet1.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q11_1_a q11_1_b q11_1_c DISPLAY=LABEL
  /TABLE BY q11_1_a [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q11_1_b [COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q11_1_c [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q11_1_a q11_1_b q11_1_c ORDER=A KEY=VALUE EMPTY=INCLUDE.

DATASET ACTIVATE DataSet1.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q11_2_a q11_2_b q11_2_c DISPLAY=LABEL
  /TABLE BY q11_2_a [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q11_2_b [COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q11_2_c [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q11_2_a q11_2_b q11_2_c ORDER=A KEY=VALUE EMPTY=INCLUDE.

DATASET ACTIVATE DataSet1.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q11_3_a q11_3_b q11_3_c DISPLAY=LABEL
  /TABLE BY q11_3_a [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q11_3_b [COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q11_3_c [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q11_3_a q11_3_b q11_3_c ORDER=A KEY=VALUE EMPTY=INCLUDE.

DATASET ACTIVATE DataSet1.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q11_4_a q11_4_b q11_4_c DISPLAY=LABEL
  /TABLE BY q11_4_a [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q11_4_b [COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q11_4_c [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q11_4_a q11_4_b q11_4_c ORDER=A KEY=VALUE EMPTY=INCLUDE.


DATASET ACTIVATE DataSet1.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q11_5_a q11_5_b q11_5_c DISPLAY=LABEL
  /TABLE BY q11_5_a [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q11_5_b [COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q11_5_c [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q11_5_a q11_5_b q11_5_c ORDER=A KEY=VALUE EMPTY=INCLUDE.

COMPUTE q33a=q33a_1 + q33a_2 + q33a_3 + q33a_4 + q33a_5 + q33a_6 + q33a_7 + q33a_8.
EXECUTE.
COMPUTE q33b=q33b_1 + q33b_2 + q33b_3 + q33b_4 + q33b_5 + q33b_6 + q33b_7 + q33b_8.
EXECUTE.
COMPUTE q33c=q33c_1 + q33c_2 + q33c_3 + q33c_4 + q33c_5 + q33c_6 + q33c_7 + q33c_8.
EXECUTE.
COMPUTE q33d=q33d_1 + q33d_2 + q33d_3 + q33d_4 + q33d_5 + q33d_6 + q33d_7 + q33d_8.
EXECUTE.
COMPUTE q33e=q33e_1 + q33e_2 + q33e_3 + q33e_4 + q33e_5 + q33e_6 + q33e_7 + q33e_8.
EXECUTE.
COMPUTE q33f=q33f_1 + q33f_2 + q33f_3 + q33f_4 + q33f_5 + q33f_6 + q33f_7 + q33f_8.
EXECUTE.
COMPUTE q33g=q33g_1 + q33g_2 + q33g_3 + q33g_4 + q33g_5 + q33g_6 + q33g_7 + q33g_8.
EXECUTE.
COMPUTE q33h=q33h_1 + q33h_2 + q33h_3 + q33h_4 + q33h_5 + q33h_6 + q33h_7 + q33h_8.
EXECUTE.
COMPUTE q33i=q33i_1 + q33i_2 + q33i_3 + q33i_4 + q33i_5 + q33i_6 + q33i_7 + q33i_8.
EXECUTE.
COMPUTE q33j=q33j_1 + q33j_2 + q33j_3 + q33j_4 + q33j_5 + q33j_6 + q33j_7 + q33j_8.
EXECUTE.
COMPUTE q33k=q33k_1 + q33k_2 + q33k_3 + q33k_4 + q33k_5 + q33k_6 + q33k_7 + q33k_8.
EXECUTE.
COMPUTE q33l=q33l_1 + q33l_2 + q33l_3 + q33l_4 + q33l_5 + q33l_6 + q33l_7 + q33l_8.
EXECUTE.
COMPUTE q33m=q33m_1 + q33m_2 + q33m_3 + q33m_4 + q33m_5 + q33m_6 + q33m_7 + q33m_8.
EXECUTE.
COMPUTE q33n=q33n_1 + q33n_2 + q33n_3 + q33n_4 + q33n_5 + q33n_6 + q33n_7 + q33n_8.
EXECUTE.
COMPUTE q33o=q33o_1 + q33o_2 + q33o_3 + q33o_4 + q33o_5 + q33o_6 + q33o_7 + q33o_8.
EXECUTE.

CROSSTABS
  /TABLES=q33a BY q33a_0 q33a_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33b BY q33b_0 q33b_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33c BY q33c_0 q33c_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33d BY q33d_0 q33d_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33e BY q33e_0 q33e_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33f BY q33f_0 q33f_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33g BY q33g_0 q33g_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33h BY q33h_0 q33h_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33i BY q33i_0 q33i_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33j BY q33j_0 q33j_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33k BY q33k_0 q33k_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES=q33a_0 BY q33a_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33b_0 BY q33b_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33c_0 BY q33c_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33d_0 BY q33d_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33e_0 BY q33e_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33f_0 BY q33f_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33g_0 BY q33g_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33h_0 BY q33h_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33i_0 BY q33i_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33j_0 BY q33j_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33k_0 BY q33k_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33l_0 BY q33l_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33m_0 BY q33m_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33n_0 BY q33n_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q33o_0 BY q33o_99
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.






IF  (q16 > q14_2) TESTE16=1.
EXECUTE.





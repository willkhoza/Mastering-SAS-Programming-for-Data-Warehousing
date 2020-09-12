PROC SORT data = ahd_a;
	by State_Desc;
RUN;
PROC SORT data = brfss_c;
	by State_Desc;
RUN;
PROC FREQ data = brfss_c;
	tables _STATE;
RUN;
data brfss_d;
	merge brfss_c (IN = In1) ahd_a (IN = In2);
	by State_Desc;
	if (In1 = 1 and In2 = 1) then output brfss_d;
RUN;
PROC CONTENTS data = brfss_d VARNUM;
RUN;
PROC FREQ data = brfss_d;
	tables _STATE;
RUN;
FILENAME REFFILE '/folders/myfolders/X/AHD.csv';
PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.ahd_a;
	GETNAMES=YES;
RUN;
PROC CONTENTS DATA=ahd_a;
RUN;
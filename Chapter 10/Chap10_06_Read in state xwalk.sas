FILENAME REFFILE '/folders/myfolders/X/State xwalk.csv';
PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.xwalk_a;
	GETNAMES=YES;
RUN;
PROC CONTENTS DATA=xwalk_a;
RUN;
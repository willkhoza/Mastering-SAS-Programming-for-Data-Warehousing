%web_drop_table(WORK.IMPORT);
FILENAME REFFILE '/folders/myfolders/Chap 1_1_Infile.csv';
PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;
PROC CONTENTS DATA=WORK.IMPORT; 
RUN;
%web_open_table(WORK.IMPORT);
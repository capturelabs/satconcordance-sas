

*-----------------------------------------------------------------------------------------------------;
* Task           :  SAT Concordance: Ready to use Macros for CAPTURE LABS along with usage            ;
*-----------------------------------------------------------------------------------------------------;

/* 1: Recode ACT Enlish/Writing  to new SAT writing and language section */



data ACTEWtoSATWL;
   infile datalines missover;
   input ACT ;
   datalines;
1
46
36
31
34
27
24
28
42
5
;

%Macro act_english_to_new_sat_writing(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name
			WHEN . THEN .
	
			WHEN 36 THEN 40
	
			WHEN 35 THEN 40
	
			WHEN 34 THEN 39
	
			WHEN 33 THEN 38
	
			WHEN 32 THEN 37
	
			WHEN 31 THEN 36
	
			WHEN 30 THEN 36
	
			WHEN 29 THEN 35
	
			WHEN 28 THEN 34
	
			WHEN 27 THEN 33
	
			WHEN 26 THEN 33
	
			WHEN 25 THEN 32
	
			WHEN 24 THEN 31
	
			WHEN 23 THEN 30
	
			WHEN 22 THEN 29
	
			WHEN 21 THEN 28
	
			WHEN 20 THEN 27
	
			WHEN 19 THEN 26
	
			WHEN 18 THEN 25
	
			WHEN 17 THEN 24
	
			WHEN 16 THEN 23
	
			WHEN 15 THEN 22
	
			WHEN 14 THEN 21
	
			WHEN 13 THEN 19
	
			WHEN 12 THEN 19
	
			WHEN 11 THEN 18
	    	ELSE .

	   END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=ACT;
%let table_name=ACTEWtoSATWL;
%let new_varname=NEW_SAT;

%act_english_to_new_sat_writing(&var_name,&table_name,&new_varname)



/***************************************************************************/
/*  2:Recode ACT to new SAT (1600 scale) */

data ACTtonewSAT1600;
   infile datalines missover;
   input ACT ;
   datalines;
1
46
36
31
34
27
24
28
42
5
;



%Macro act_to_new_sat(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name
			WHEN . THEN .
	
			WHEN 36 THEN 1600
			
			WHEN 35 THEN 1570
			
			WHEN 34 THEN 1540
			
			WHEN 33 THEN 1500
			
			WHEN 32 THEN 1470
			
			WHEN 31 THEN 1430
			
			WHEN 30 THEN 1400
			
			WHEN 29 THEN 1360
			
			WHEN 28 THEN 1320
			
			WHEN 27 THEN 1290
			
			WHEN 26 THEN 1260
			
			WHEN 25 THEN 1220
			
			WHEN 24 THEN 1180
			
			WHEN 23 THEN 1140
			
			WHEN 22 THEN 1110
			
			WHEN 21 THEN 1070
			
			WHEN 20 THEN 1030
			
			WHEN 19 THEN 990
			
			WHEN 18 THEN 950
			
			WHEN 17 THEN 910
			
			WHEN 16 THEN 870
			
			WHEN 15 THEN 830
			    
			WHEN 14 THEN 780
			
			WHEN 13 THEN 740
			
			WHEN 12 THEN 680
			
			WHEN 11 THEN 590
		    ELSE .

	   END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=ACT;
%let table_name=ACTtonewSAT1600;
%let new_varname=NEW_SAT;

%act_to_new_sat(&var_name,&table_name,&new_varname)


/* 3: Recode new SAT EBRW section to old SAT writing plus critical reading sections */


data SATnewEBRWtoSAToldCRW;
   infile datalines missover;
   input NEW_SAT ;
   datalines;
12
460
350
312
354
278
240
28
42
5
;

%Macro new_sat_ebrw_to_old_wr(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name
			WHEN . THEN .

			WHEN 200 THEN 400

			WHEN 210 THEN 410

			WHEN 220 THEN 420

			WHEN 230 THEN 430

			WHEN 240 THEN 440

			WHEN 250 THEN 440

			WHEN 260 THEN 450

			WHEN 270 THEN 460

			WHEN 280 THEN 470

			WHEN 290 THEN 480

			WHEN 300 THEN 490

			WHEN 310 THEN 500

			WHEN 320 THEN 520

			WHEN 330 THEN 550

			WHEN 340 THEN 570

			WHEN 350 THEN 600

			WHEN 360 THEN 620

			WHEN 370 THEN 640

			WHEN 380 THEN 660

			WHEN 390 THEN 690

			WHEN 400 THEN 710

			WHEN 410 THEN 730

			WHEN 420 THEN 750

			WHEN 430 THEN 770

			WHEN 440 THEN 790

			WHEN 450 THEN 800

			WHEN 460 THEN 820

			WHEN 470 THEN 840

			WHEN 480 THEN 860

			WHEN 490 THEN 880

			WHEN 500 THEN 890

			WHEN 510 THEN 910

			WHEN 520 THEN 930

			WHEN 530 THEN 950

			WHEN 540 THEN 970

			WHEN 550 THEN 990

			WHEN 560 THEN 1010

			WHEN 570 THEN 1020

			WHEN 580 THEN 1040

			WHEN 590 THEN 1060

			WHEN 600 THEN 1080

			WHEN 610 THEN 1100

			WHEN 620 THEN 1120

			WHEN 630 THEN 1150

			WHEN 640 THEN 1170

			WHEN 650 THEN 1190

			WHEN 660 THEN 1210

			WHEN 670 THEN 1240

			WHEN 680 THEN 1260

			WHEN 690 THEN 1290

			WHEN 700 THEN 1310

			WHEN 710 THEN 1340

			WHEN 720 THEN 1370

			WHEN 730 THEN 1390

			WHEN 740 THEN 1420

			WHEN 750 THEN 1450

			WHEN 760 THEN 1480

			WHEN 770 THEN 1510

			WHEN 780 THEN 1540

			WHEN 790 THEN 1560

			WHEN 800 THEN 1590
			ELSE .
		END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=NEW_SAT;
%let table_name=SATnewEBRWtoSAToldCRW;
%let new_varname=OLD_SAT;

%new_sat_ebrw_to_old_wr(&var_name,&table_name,&new_varname)


/*  4: Recode new SAT math section to old SAT math section */
data newSATMoldSATM;
   infile datalines missover;
   input NEW_SAT ;
   datalines;
12
460
350
312
354
278
240
28
42
5
;

%Macro new_sat_math_to_old_sat_math(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN  .
			
			WHEN 200 THEN  200
			
			WHEN 210 THEN  200
			
			WHEN 220 THEN  210
			
			WHEN 230 THEN  220
			
			WHEN 240 THEN  220
			
			WHEN 250 THEN  230
			
			WHEN 260 THEN  240
			
			WHEN 270 THEN  240
			
			WHEN 280 THEN  250
			
			WHEN 290 THEN  260
			
			WHEN 300 THEN  260
			
			WHEN 310 THEN  270
			
			WHEN 320 THEN  280
			
			WHEN 330 THEN  280
			
			WHEN 340 THEN  290
			
			WHEN 350 THEN  300
			
			WHEN 360 THEN  310
			
			WHEN 370 THEN  330
			
			WHEN 380 THEN  340
			
			WHEN 390 THEN  350
			
			WHEN 400 THEN  360
			
			WHEN 410 THEN  370
			
			WHEN 420 THEN  380
			
			WHEN 430 THEN  390
			
			WHEN 440 THEN  400
			
			WHEN 450 THEN  410
			
			WHEN 460 THEN  420
			
			WHEN 470 THEN  430
			
			WHEN 480 THEN  440
			
			WHEN 490 THEN  450
			
			WHEN 500 THEN  460
			
			WHEN 510 THEN  470
			
			WHEN 520 THEN  490
			
			WHEN 530 THEN  500
			
			WHEN 540 THEN  510
			
			WHEN 550 THEN  520
			
			WHEN 560 THEN  530
			
			WHEN 570 THEN  550
			
			WHEN 580 THEN  560
			
			WHEN 590 THEN  570
			
			WHEN 600 THEN  580
			
			WHEN 610 THEN  590
			
			WHEN 620 THEN  600
			
			WHEN 630 THEN  610
			
			WHEN 640 THEN  620
			
			WHEN 650 THEN  630
			
			WHEN 660 THEN  640
			
			WHEN 670 THEN  650
			
			WHEN 680 THEN  650
			
			WHEN 690 THEN  660
			
			WHEN 700 THEN  670
			
			WHEN 710 THEN  680
			
			WHEN 720 THEN  690
			
			WHEN 730 THEN  700
			
			WHEN 740 THEN  710
			
			WHEN 750 THEN  720
			
			WHEN 760 THEN  740
			
			WHEN 770 THEN  750
			
			WHEN 780 THEN  760
			
			WHEN 790 THEN  780
			
			WHEN 800 THEN  800
			ELSE .

       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=NEW_SAT;
%let table_name=newSATMoldSATM;
%let new_varname=OLD_SAT;

%new_sat_math_to_old_sat_math(&var_name,&table_name,&new_varname)






/*  5: Recode new SAT reading  to old SAT critical reading section */
data SATRnewtooldSATCR;
   infile datalines missover;
   input NEW_SAT ;
   datalines;
12
460
350
312
354
278
240
28
42
5
;

%Macro new_sat_reading_to_old_sat_rd(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN  .
			
			WHEN 10 THEN  200
			
			WHEN 11 THEN  210
			
			WHEN 12 THEN  220
			
			WHEN 13 THEN  240
			
			WHEN 14 THEN  250
			
			WHEN 15 THEN  260
			
			WHEN 16 THEN  270
			
			WHEN 17 THEN  280
			
			WHEN 18 THEN  310
			
			WHEN 19 THEN  340
			
			WHEN 20 THEN  370
			
			WHEN 21 THEN  380
			
			WHEN 22 THEN  400
			
			WHEN 23 THEN  420
			
			WHEN 24 THEN  440
			
			WHEN 25 THEN  460
			
			WHEN 26 THEN  480
			
			WHEN 27 THEN  500
			
			WHEN 28 THEN  520
			
			WHEN 29 THEN  530
			
			WHEN 30 THEN  550
			
			WHEN 31 THEN  570
			
			WHEN 32 THEN  590
			
			WHEN 33 THEN  610
			
			WHEN 34 THEN  640
			
			WHEN 35 THEN  660
			
			WHEN 36 THEN  680
			
			WHEN 37 THEN  700
			
			WHEN 38 THEN  720
			
			WHEN 39 THEN  760
			
			WHEN 40 THEN  790
		    ELSE  .

       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=NEW_SAT;
%let table_name=SATRnewtooldSATCR;
%let new_varname=OLD_SAT;

%new_sat_reading_to_old_sat_rd(&var_name,&table_name,&new_varname)


	/*  6: Recode new SAT (1600 scale) to ACT */

data SATRnewtoACT;
   infile datalines missover;
   input NEW_SAT ;
   datalines;
12
460
350
312
1200
278
240
820
42
5
;



%Macro new_sat_to_act(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name
			WHEN . THEN  .
			
			WHEN 1600 THEN  36
			
			WHEN 1590 THEN  35
			
			WHEN 1580 THEN  35
			
			WHEN 1570 THEN  35
			
			WHEN 1560 THEN  35
			
			WHEN 1550 THEN  34
			
			WHEN 1540 THEN  34
			
			WHEN 1530 THEN  34
			
			WHEN 1520 THEN  34
			
			WHEN 1510 THEN  33
			
			WHEN 1500 THEN  33
			
			WHEN 1490 THEN  33
			
			WHEN 1480 THEN  32
			
			WHEN 1470 THEN  32
			
			WHEN 1460 THEN  32
			
			WHEN 1450 THEN  32
			
			WHEN 1440 THEN  31
			
			WHEN 1430 THEN  31
			
			WHEN 1420 THEN  31
			
			WHEN 1410 THEN  30
			
			WHEN 1400 THEN  30
			
			WHEN 1390 THEN  30
			
			WHEN 1380 THEN  29
			
			WHEN 1370 THEN  29
			
			WHEN 1360 THEN  29
			
			WHEN 1350 THEN  29
			
			WHEN 1340 THEN  28
			
			WHEN 1330 THEN  28
			
			WHEN 1320 THEN  28
			
			WHEN 1310 THEN  28
			
			WHEN 1300 THEN  27
			
			WHEN 1290 THEN  27
			
			WHEN 1280 THEN  27
			
			WHEN 1270 THEN  26
			
			WHEN 1260 THEN  26
			
			WHEN 1250 THEN  26
			
			WHEN 1240 THEN  26
			
			WHEN 1230 THEN  25
			
			WHEN 1220 THEN  25
			
			WHEN 1210 THEN  25
			
			WHEN 1200 THEN  25
			
			WHEN 1190 THEN  24
			
			WHEN 1180 THEN  24
			
			WHEN 1170 THEN  24
			
			WHEN 1160 THEN  24
			
			WHEN 1150 THEN  23
			
			WHEN 1140 THEN  23
			
			WHEN 1130 THEN  23
			
			WHEN 1120 THEN  22
			
			WHEN 1110 THEN  22
			
			WHEN 1100 THEN  22
			
			WHEN 1090 THEN  21
			
			WHEN 1080 THEN  21
			
			WHEN 1070 THEN  21
			
			WHEN 1060 THEN  21
			
			WHEN 1050 THEN  20
			
			WHEN 1040 THEN  20
			
			WHEN 1030 THEN  20
			
			WHEN 1020 THEN  20
			
			WHEN 1010 THEN  19
			
			WHEN 1000 THEN  19
			
			WHEN 990 THEN  19
			
			WHEN 980 THEN  19
			
			WHEN 970 THEN  18
			
			WHEN 960 THEN  18
			
			WHEN 950 THEN  18
			
			WHEN 940 THEN  18
			
			WHEN 930 THEN  17
			
			WHEN 920 THEN  17
			
			WHEN 910 THEN  17
			
			WHEN 900 THEN  17
			
			WHEN 890 THEN  16
			
			WHEN 880 THEN  16
			
			WHEN 870 THEN  16
			
			WHEN 860 THEN  16
			
			WHEN 850 THEN  15
			
			WHEN 840 THEN  15
			
			WHEN 830 THEN  15
			
			WHEN 820 THEN  15
			
			WHEN 810 THEN  15
			
			WHEN 800 THEN  14
			
			WHEN 790 THEN  14
			
			WHEN 780 THEN  14
			
			WHEN 770 THEN  14
			
			WHEN 760 THEN  14
			
			WHEN 750 THEN  13
			
			WHEN 740 THEN  13
			
			WHEN 730 THEN  13
			
			WHEN 720 THEN  13
			
			WHEN 710 THEN  12
			
			WHEN 700 THEN  12
			
			WHEN 690 THEN  12
			
			WHEN 680 THEN  12
			
			WHEN 670 THEN  12
			
			WHEN 660 THEN  12
			
			WHEN 650 THEN  12
			
			WHEN 640 THEN  12
			
			WHEN 630 THEN  12
			
			WHEN 620 THEN  11
			
			WHEN 610 THEN  11
			
			WHEN 600 THEN  11
			
			WHEN 590 THEN  11
			
			WHEN 580 THEN  11
			
			WHEN 570 THEN  11
			
			WHEN 560 THEN  11
	   		ELSE .



       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=NEW_SAT;
%let table_name=SATRnewtoACT;
%let new_varname=OLD_SAT;

%new_sat_to_act(&var_name,&table_name,&new_varname)



/*  7: Recode new SAT (1600 scale) to old SAT (1600 scale) */


data SATnewtooldSAT;
   infile datalines missover;
   input NEW_SAT ;
   datalines;
1250
460
350
312
1200
278
240
1500
42
5
;


%Macro new_sat_to_old_sat_1600(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN  .
			
			WHEN 400 THEN  400
			
			WHEN 410 THEN  410
			
			WHEN 420 THEN  410
			
			WHEN 430 THEN  420
			
			WHEN 440 THEN  430
			
			WHEN 450 THEN  430
			
			WHEN 460 THEN  440
			
			WHEN 470 THEN  450
			
			WHEN 480 THEN  450
			
			WHEN 490 THEN  460
			
			WHEN 500 THEN  470
			
			WHEN 510 THEN  470
			
			WHEN 520 THEN  480
			
			WHEN 530 THEN  490
			
			WHEN 540 THEN  490
			
			WHEN 550 THEN  500
			
			WHEN 560 THEN  510
			
			WHEN 570 THEN  510
			
			WHEN 580 THEN  520
			
			WHEN 590 THEN  530
			
			WHEN 600 THEN  540
			
			WHEN 610 THEN  540
			
			WHEN 620 THEN  550
			
			WHEN 630 THEN  560
			
			WHEN 640 THEN  560
			
			WHEN 650 THEN  570
			
			WHEN 660 THEN  580
			
			WHEN 670 THEN  580
			
			WHEN 680 THEN  590
			
			WHEN 690 THEN  600
			
			WHEN 700 THEN  600
			
			WHEN 710 THEN  610
			
			WHEN 720 THEN  620
			
			WHEN 730 THEN  630
			
			WHEN 740 THEN  640
			
			WHEN 750 THEN  660
			
			WHEN 760 THEN  670
			
			WHEN 770 THEN  680
			
			WHEN 780 THEN  690
			
			WHEN 790 THEN  700
			
			WHEN 800 THEN  710
			
			WHEN 810 THEN  720
			
			WHEN 820 THEN  730
			
			WHEN 830 THEN  740
			
			WHEN 840 THEN  750
			
			WHEN 850 THEN  760
			
			WHEN 860 THEN  780
			
			WHEN 870 THEN  790
			
			WHEN 880 THEN  800
			
			WHEN 890 THEN  810
			
			WHEN 900 THEN  820
			
			WHEN 910 THEN  830
			
			WHEN 920 THEN  840
			
			WHEN 930 THEN  850
			
			WHEN 940 THEN  860
			
			WHEN 950 THEN  870
			
			WHEN 960 THEN  880
			
			WHEN 970 THEN  890
			
			WHEN 980 THEN  900
			
			WHEN 990 THEN  910
			
			WHEN 1000 THEN  920
			
			WHEN 1010 THEN  930
			
			WHEN 1020 THEN  940
			
			WHEN 1030 THEN  950
			
			WHEN 1040 THEN  960
			
			WHEN 1050 THEN  970
			
			WHEN 1060 THEN  980
			
			WHEN 1070 THEN  990
			
			WHEN 1080 THEN  1000
			
			WHEN 1090 THEN  1010
			
			WHEN 1100 THEN  1020
			
			WHEN 1110 THEN  1030
			
			WHEN 1120 THEN  1040
			
			WHEN 1130 THEN  1060
			
			WHEN 1140 THEN  1070
			
			WHEN 1150 THEN  1080
			
			WHEN 1160 THEN  1090
			
			WHEN 1170 THEN  1100
			
			WHEN 1180 THEN  1110
			
			WHEN 1190 THEN  1120
			
			WHEN 1200 THEN  1130
			
			WHEN 1210 THEN  1140
			
			WHEN 1220 THEN  1150
			
			WHEN 1230 THEN  1160
			
			WHEN 1240 THEN  1170
			
			WHEN 1250 THEN  1180
			
			WHEN 1260 THEN  1190
			
			WHEN 1270 THEN  1200
			
			WHEN 1280 THEN  1210
			
			WHEN 1290 THEN  1220
			
			WHEN 1300 THEN  1230
			
			WHEN 1310 THEN  1250
			
			WHEN 1320 THEN  1260
			
			WHEN 1330 THEN  1270
			
			WHEN 1340 THEN  1280
			
			WHEN 1350 THEN  1290
			
			WHEN 1360 THEN  1300
			
			WHEN 1370 THEN  1310
			
			WHEN 1380 THEN  1320
			
			WHEN 1390 THEN  1330
			
			WHEN 1400 THEN  1340
			
			WHEN 1410 THEN  1350
			
			WHEN 1420 THEN  1370
			
			WHEN 1430 THEN  1380
			
			WHEN 1440 THEN  1390
			
			WHEN 1450 THEN  1400
			
			WHEN 1460 THEN  1410
			
			WHEN 1470 THEN  1420
			
			WHEN 1480 THEN  1430
			
			WHEN 1490 THEN  1450
			
			WHEN 1500 THEN  1460
			
			WHEN 1510 THEN  1470
			
			WHEN 1520 THEN  1490
			
			WHEN 1530 THEN  1500
			
			WHEN 1540 THEN  1510
			
			WHEN 1550 THEN  1530
			
			WHEN 1560 THEN  1540
			
			WHEN 1570 THEN  1560
			
			WHEN 1580 THEN  1570
			
			WHEN 1590 THEN  1580
			
			WHEN 1600 THEN  1600
    		ELSE .




       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=NEW_SAT;
%let table_name=SATnewtooldSAT;
%let new_varname=OLD_SAT;

%new_sat_to_old_sat_1600(&var_name,&table_name,&new_varname)


/*  8: Recode new SAT (1600 scale) to old SAT (2400 scale) */


data SATnewtooldSAT2400;
   infile datalines;
   input NEW_SAT ;
   datalines;
1250
460
350
312
1200
278
NA
1500
42
5
;

%Macro new_sat_to_old_sat_2400(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name


			WHEN . THEN .
			
			WHEN 400 THEN 600
			
			WHEN 410 THEN 610
			
			WHEN 420 THEN 620
			
			WHEN 430 THEN 630
			
			WHEN 440 THEN 640
			
			WHEN 450 THEN 650
			
			WHEN 460 THEN 660
			
			WHEN 470 THEN 670
			
			WHEN 480 THEN 680
			
			WHEN 490 THEN 690
			
			WHEN 500 THEN 700
			
			WHEN 510 THEN 710
			
			WHEN 520 THEN 720
			
			WHEN 530 THEN 730
			
			WHEN 540 THEN 730
			
			WHEN 550 THEN 740
			
			WHEN 560 THEN 750
			
			WHEN 570 THEN 760
			
			WHEN 580 THEN 770
			
			WHEN 590 THEN 780
			
			WHEN 600 THEN 790
			
			WHEN 610 THEN 800
			
			WHEN 620 THEN 810
			
			WHEN 630 THEN 820
			
			WHEN 640 THEN 830
			
			WHEN 650 THEN 840
			
			WHEN 660 THEN 850
			
			WHEN 670 THEN 860
			
			WHEN 680 THEN 870
			
			WHEN 690 THEN 880
			
			WHEN 700 THEN 900
			
			WHEN 710 THEN 910
			
			WHEN 720 THEN 930
			
			WHEN 730 THEN 950
			
			WHEN 740 THEN 960
			
			WHEN 750 THEN 980
			
			WHEN 760 THEN 990
			
			WHEN 770 THEN 1010
			
			WHEN 780 THEN 1030
			
			WHEN 790 THEN 1040
			
			WHEN 800 THEN 1060
			
			WHEN 810 THEN 1070
			
			WHEN 820 THEN 1090
			
			WHEN 830 THEN 1110
			
			WHEN 840 THEN 1120
			
			WHEN 850 THEN 1140
			
			WHEN 860 THEN 1150
			
			WHEN 870 THEN 1170
			
			WHEN 880 THEN 1180
			
			WHEN 890 THEN 1200
			
			WHEN 900 THEN 1210
			
			WHEN 910 THEN 1220
			
			WHEN 920 THEN 1240
			
			WHEN 930 THEN 1250
			
			WHEN 940 THEN 1270
			
			WHEN 950 THEN 1280
			
			WHEN 960 THEN 1300
			
			WHEN 970 THEN 1310
			
			WHEN 980 THEN 1330
			
			WHEN 990 THEN 1340
			
			WHEN 1000 THEN 1360
			
			WHEN 1010 THEN 1370
			
			WHEN 1020 THEN 1390
			
			WHEN 1030 THEN 1400
			
			WHEN 1040 THEN 1420
			
			WHEN 1050 THEN 1430
			
			WHEN 1060 THEN 1450
			
			WHEN 1070 THEN 1460
			
			WHEN 1080 THEN 1480
			
			WHEN 1090 THEN 1490
			
			WHEN 1100 THEN 1510
			
			WHEN 1110 THEN 1530
			
			WHEN 1120 THEN 1540
			
			WHEN 1130 THEN 1560
			
			WHEN 1140 THEN 1570
			
			WHEN 1150 THEN 1590
			
			WHEN 1160 THEN 1610
			
			WHEN 1170 THEN 1620
			
			WHEN 1180 THEN 1640
			
			WHEN 1190 THEN 1650
			
			WHEN 1200 THEN 1670
			
			WHEN 1210 THEN 1680
			
			WHEN 1220 THEN 1700
			
			WHEN 1230 THEN 1710
			
			WHEN 1240 THEN 1730
			
			WHEN 1250 THEN 1750
			
			WHEN 1260 THEN 1760
			
			WHEN 1270 THEN 1780
			
			WHEN 1280 THEN 1790
			
			WHEN 1290 THEN 1810
			
			WHEN 1300 THEN 1820
			
			WHEN 1310 THEN 1840
			
			WHEN 1320 THEN 1850
			
			WHEN 1330 THEN 1870
			
			WHEN 1340 THEN 1880
			
			WHEN 1350 THEN 1900
			
			WHEN 1360 THEN 1920
			
			WHEN 1370 THEN 1930
			
			WHEN 1380 THEN 1950
			
			WHEN 1390 THEN 1970
			
			WHEN 1400 THEN 1990
			
			WHEN 1410 THEN 2000
			
			WHEN 1420 THEN 2020
			
			WHEN 1430 THEN 2040
			
			WHEN 1440 THEN 2060
			
			WHEN 1450 THEN 2080
			
			WHEN 1460 THEN 2090
			
			WHEN 1470 THEN 2110
			
			WHEN 1480 THEN 2130
			
			WHEN 1490 THEN 2150
			
			WHEN 1500 THEN 2170
			
			WHEN 1510 THEN 2190
			
			WHEN 1520 THEN 2210
			
			WHEN 1530 THEN 2230
			
			WHEN 1540 THEN 2260
			
			WHEN 1550 THEN 2280
			
			WHEN 1560 THEN 2300
			
			WHEN 1570 THEN 2330
			
			WHEN 1580 THEN 2350
			
			WHEN 1590 THEN 2370
			
			WHEN 1600 THEN 2390
  			ELSE .






       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=NEW_SAT;
%let table_name=SATnewtooldSAT2400;
%let new_varname=OLD_SAT;

%new_sat_to_old_sat_2400(&var_name,&table_name,&new_varname)



/* 9: Recode new SAT writing and language section to ACT Enlish/Writing  */


data SATWtoACTW;
   infile datalines;
   input NEW_SAT ;
   datalines;
1250
460
35
31
.
27
NA
1500
42
5
;



%Macro new_sat_writing_to_act_english(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN  .
			
			WHEN 40 THEN  34
			
			WHEN 39 THEN  33
			
			WHEN 38 THEN  33
			
			WHEN 37 THEN  32
			
			WHEN 36 THEN  30
			
			WHEN 35 THEN  29
			
			WHEN 34 THEN  28
			
			WHEN 33 THEN  26
			
			WHEN 32 THEN  25
			
			WHEN 31 THEN  24
			
			WHEN 30 THEN  23
			
			WHEN 29 THEN  22
			
			WHEN 28 THEN  21
			
			WHEN 27 THEN  20
			
			WHEN 26 THEN  19
			
			WHEN 25 THEN  18
			
			WHEN 24 THEN  17
			
			WHEN 23 THEN  16
			
			WHEN 22 THEN  15
			
			WHEN 21 THEN  14
			
			WHEN 20 THEN  13
			
			WHEN 19 THEN  13
			
			WHEN 18 THEN  12
			
			WHEN 17 THEN  11
	  		ELSE .


       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=NEW_SAT;
%let table_name=SATWtoACTW;
%let new_varname=ACTW;

%new_sat_writing_to_act_english(&var_name,&table_name,&new_varname)


	/* 10: Recode new SAT writing and language  to old SAT writing section */


data SATWtooldSATW;
   infile datalines;
   input NEW_SAT ;
   datalines;
1250
46
35
31

27
NA
15
42
5
;

%Macro new_sat_wr_to_old_sat_wr(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name
			WHEN . THEN .
			
			WHEN 10 THEN 200
			
			WHEN 11 THEN 220
			
			WHEN 12 THEN 230
			
			WHEN 13 THEN 240
			
			WHEN 14 THEN 260
			
			WHEN 15 THEN 270
			
			WHEN 16 THEN 280
			
			WHEN 17 THEN 300
			
			WHEN 18 THEN 320
			
			WHEN 19 THEN 340
			
			WHEN 20 THEN 350
			
			WHEN 21 THEN 370
			
			WHEN 22 THEN 380
			
			WHEN 23 THEN 400
			
			WHEN 24 THEN 420
			
			WHEN 25 THEN 430
			
			WHEN 26 THEN 450
			
			WHEN 27 THEN 470
			
			WHEN 28 THEN 490
			
			WHEN 29 THEN 510
			
			WHEN 30 THEN 530
			
			WHEN 31 THEN 550
			
			WHEN 32 THEN 570
			
			WHEN 33 THEN 600
			
			WHEN 34 THEN 630
			
			WHEN 35 THEN 650
			
			WHEN 36 THEN 680
			
			WHEN 37 THEN 710
			
			WHEN 38 THEN 740
			
			WHEN 39 THEN 760
			
			WHEN 40 THEN 790
			ELSE .


       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=NEW_SAT;
%let table_name=SATWtooldSATW;
%let new_varname=OLD_SAT;

%new_sat_wr_to_old_sat_wr(&var_name,&table_name,&new_varname)



/* 11: Recode old SAT math section to new SAT math section (200-800) scale */

data SAToldMtonewSATM;
   infile datalines;
   input OLD_SAT ;
   datalines;
1250
460
350
310

27
NA
15
240
5
;

%Macro old_sat_math_to_new_sat_math_sec(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN .
			
			WHEN 200 THEN 200
			
			WHEN 210 THEN 220
			
			WHEN 220 THEN 230
			
			WHEN 230 THEN 250
			
			WHEN 240 THEN 260
			
			WHEN 250 THEN 280
			
			WHEN 260 THEN 300
			
			WHEN 270 THEN 310
			
			WHEN 280 THEN 330
			
			WHEN 290 THEN 340
			
			WHEN 300 THEN 350
			
			WHEN 310 THEN 360
			
			WHEN 320 THEN 360
			
			WHEN 330 THEN 370
			
			WHEN 340 THEN 380
			
			WHEN 350 THEN 390
			
			WHEN 360 THEN 400
			
			WHEN 370 THEN 410
			
			WHEN 380 THEN 420
			
			WHEN 390 THEN 430
			
			WHEN 400 THEN 440
			
			WHEN 410 THEN 450
			
			WHEN 420 THEN 460
			
			WHEN 430 THEN 470
			
			WHEN 440 THEN 480
			
			WHEN 450 THEN 490
			
			WHEN 460 THEN 500
			
			WHEN 470 THEN 510
			
			WHEN 480 THEN 510
			
			WHEN 490 THEN 520
			
			WHEN 500 THEN 530
			
			WHEN 510 THEN 540
			
			WHEN 520 THEN 550
			
			WHEN 530 THEN 560
			
			WHEN 540 THEN 570
			
			WHEN 550 THEN 570
			
			WHEN 560 THEN 580
			
			WHEN 570 THEN 590
			
			WHEN 580 THEN 600
			
			WHEN 590 THEN 610
			
			WHEN 600 THEN 620
			
			WHEN 610 THEN 630
			
			WHEN 620 THEN 640
			
			WHEN 630 THEN 650
			
			WHEN 640 THEN 660
			
			WHEN 650 THEN 670
			
			WHEN 660 THEN 690
			
			WHEN 670 THEN 700
			
			WHEN 680 THEN 710
			
			WHEN 690 THEN 720
			
			WHEN 700 THEN 730
			
			WHEN 710 THEN 740
			
			WHEN 720 THEN 750
			
			WHEN 730 THEN 760
			
			WHEN 740 THEN 760
			
			WHEN 750 THEN 770
			
			WHEN 760 THEN 780
			
			WHEN 770 THEN 780
			
			WHEN 780 THEN 790
			
			WHEN 790 THEN 800
			
			WHEN 800 THEN 800
			ELSE .


       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=OLD_SAT;
%let table_name=SAToldMtonewSATM;
%let new_varname=NEW_SAT;

%old_sat_math_to_new_sat_math_sec(&var_name,&table_name,&new_varname)





	/* 12: Recode old SAT math section to new SAT math  (10-40 scale) */

data SAToldMtonewSATM40;
   infile datalines;
   input OLD_SAT ;
   datalines;
1250
460
310
220
27
NA
15
240
5
;

%Macro old_sat_m_to_new_sat_m_(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN .
			
			WHEN 200 THEN 10
			
			WHEN 210 THEN 11
			
			WHEN 220 THEN 11.5
			
			WHEN 230 THEN 12.5
			
			WHEN 240 THEN 13
			
			WHEN 250 THEN 14
			
			WHEN 260 THEN 15
			
			WHEN 270 THEN 15.5
			
			WHEN 280 THEN 16.5
			
			WHEN 290 THEN 17
			
			WHEN 300 THEN 17.5
			
			WHEN 310 THEN 18
			
			WHEN 320 THEN 18
			
			WHEN 330 THEN 18.5
			
			WHEN 340 THEN 19
			
			WHEN 350 THEN 19.5
			
			WHEN 360 THEN 20
			
			WHEN 370 THEN 20.5
			
			WHEN 380 THEN 21
			
			WHEN 390 THEN 21.5
			
			WHEN 400 THEN 22
			
			WHEN 410 THEN 22.5
			
			WHEN 420 THEN 23
			
			WHEN 430 THEN 23.5
			
			WHEN 440 THEN 24
			
			WHEN 450 THEN 24.5
			
			WHEN 460 THEN 25
			
			WHEN 470 THEN 25.5
			
			WHEN 480 THEN 25.5
			
			WHEN 490 THEN 26
			
			WHEN 500 THEN 26.5
			
			WHEN 510 THEN 27
			
			WHEN 520 THEN 27.5
			
			WHEN 530 THEN 28
			
			WHEN 540 THEN 28.5
			
			WHEN 550 THEN 28.5
			
			WHEN 560 THEN 29
			
			WHEN 570 THEN 29.5
			
			WHEN 580 THEN 30
			
			WHEN 590 THEN 30.5
			
			WHEN 600 THEN 31
			
			WHEN 610 THEN 31.5
			
			WHEN 620 THEN 32
			
			WHEN 630 THEN 32.5
			
			WHEN 640 THEN 33
			
			WHEN 650 THEN 33.5
			
			WHEN 660 THEN 34.5
			
			WHEN 670 THEN 35
			
			WHEN 680 THEN 35.5
			
			WHEN 690 THEN 36
			
			WHEN 700 THEN 36.5
			
			WHEN 710 THEN 37
			
			WHEN 720 THEN 37.5
			
			WHEN 730 THEN 38
			
			WHEN 740 THEN 38
			
			WHEN 750 THEN 38.5
			
			WHEN 760 THEN 39
			
			WHEN 770 THEN 39
			
			WHEN 780 THEN 39.5
			
			WHEN 790 THEN 40
			
			WHEN 800 THEN 40
			ELSE .


       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=OLD_SAT;
%let table_name=SAToldMtonewSATM40;
%let new_varname=NEW_SAT;

%old_sat_m_to_new_sat_m_(&var_name,&table_name,&new_varname)



	/*  13: Recode old SAT critical reading  to new SAT reading section */


data SATCRtonewSATR;
   infile datalines;
   input OLD_SAT ;
   datalines;
1250
460
310
370
280
220
27
NA
15
240
5
;



%Macro old_sat_read_to_new_sat_read(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN .
			
			WHEN 200 THEN 10
			
			WHEN 210 THEN 11
			
			WHEN 220 THEN 12
			
			WHEN 230 THEN 13
			
			WHEN 240 THEN 13
			
			WHEN 250 THEN 14
			
			WHEN 260 THEN 15
			
			WHEN 270 THEN 16
			
			WHEN 280 THEN 17
			
			WHEN 290 THEN 17
			
			WHEN 300 THEN 18
			
			WHEN 310 THEN 18
			
			WHEN 320 THEN 18
			
			WHEN 330 THEN 19
			
			WHEN 340 THEN 19
			
			WHEN 350 THEN 19
			
			WHEN 360 THEN 20
			
			WHEN 370 THEN 20
			
			WHEN 380 THEN 21
			
			WHEN 390 THEN 21
			
			WHEN 400 THEN 22
			
			WHEN 410 THEN 22
			
			WHEN 420 THEN 23
			
			WHEN 430 THEN 24
			
			WHEN 440 THEN 24
			
			WHEN 450 THEN 25
			
			WHEN 460 THEN 25
			
			WHEN 470 THEN 26
			
			WHEN 480 THEN 26
			
			WHEN 490 THEN 27
			
			WHEN 500 THEN 27
			
			WHEN 510 THEN 28
			
			WHEN 520 THEN 28
			
			WHEN 530 THEN 29
			
			WHEN 540 THEN 29
			
			WHEN 550 THEN 30
			
			WHEN 560 THEN 30
			
			WHEN 570 THEN 31
			
			WHEN 580 THEN 31
			
			WHEN 590 THEN 32
			
			WHEN 600 THEN 32
			
			WHEN 610 THEN 33
			
			WHEN 620 THEN 33
			
			WHEN 630 THEN 34
			
			WHEN 640 THEN 34
			
			WHEN 650 THEN 35
			
			WHEN 660 THEN 35
			
			WHEN 670 THEN 36
			
			WHEN 680 THEN 36
			
			WHEN 690 THEN 37
			
			WHEN 700 THEN 37
			
			WHEN 710 THEN 37
			
			WHEN 720 THEN 38
			
			WHEN 730 THEN 38
			
			WHEN 740 THEN 38
			
			WHEN 750 THEN 39
			
			WHEN 760 THEN 39
			
			WHEN 770 THEN 39
			
			WHEN 780 THEN 40
			
			WHEN 790 THEN 40
			
			WHEN 800 THEN 40
		    ELSE .





       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=OLD_SAT;
%let table_name=SATCRtonewSATR;
%let new_varname=NEW_SAT;

%old_sat_read_to_new_sat_read(&var_name,&table_name,&new_varname)



	/* 14:  Recode old SAT (1600 scale) to new SAT (1600 scale) */


data SAToldtonewSAT1600;
   infile datalines;
   input OLD_SAT ;
   datalines;
1250
460
310
370
1280
1220
27
NA
15
240
5
;


%Macro old_sat_to_new_sat_1600(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN .
			
			WHEN 400 THEN 400
			
			WHEN 410 THEN 420
			
			WHEN 420 THEN 430
			
			WHEN 430 THEN 450
			
			WHEN 440 THEN 460
			
			WHEN 450 THEN 480
			
			WHEN 460 THEN 490
			
			WHEN 470 THEN 510
			
			WHEN 480 THEN 520
			
			WHEN 490 THEN 530
			
			WHEN 500 THEN 550
			
			WHEN 510 THEN 560
			
			WHEN 520 THEN 580
			
			WHEN 530 THEN 590
			
			WHEN 540 THEN 610
			
			WHEN 550 THEN 620
			
			WHEN 560 THEN 640
			
			WHEN 570 THEN 650
			
			WHEN 580 THEN 670
			
			WHEN 590 THEN 680
			
			WHEN 600 THEN 700
			
			WHEN 610 THEN 710
			
			WHEN 620 THEN 720
			
			WHEN 630 THEN 730
			
			WHEN 640 THEN 740
			
			WHEN 650 THEN 750
			
			WHEN 660 THEN 750
			
			WHEN 670 THEN 760
			
			WHEN 680 THEN 770
			
			WHEN 690 THEN 780
			
			WHEN 700 THEN 790
			
			WHEN 710 THEN 800
			
			WHEN 720 THEN 810
			
			WHEN 730 THEN 820
			
			WHEN 740 THEN 830
			
			WHEN 750 THEN 840
			
			WHEN 760 THEN 850
			
			WHEN 770 THEN 860
			
			WHEN 780 THEN 860
			
			WHEN 790 THEN 870
			
			WHEN 800 THEN 880
			
			WHEN 810 THEN 890
			
			WHEN 820 THEN 900
			
			WHEN 830 THEN 910
			
			WHEN 840 THEN 920
			
			WHEN 850 THEN 930
			
			WHEN 860 THEN 940
			
			WHEN 870 THEN 950
			
			WHEN 880 THEN 960
			
			WHEN 890 THEN 970
			
			WHEN 900 THEN 980
			
			WHEN 910 THEN 990
			
			WHEN 920 THEN 1000
			
			WHEN 930 THEN 1010
			
			WHEN 940 THEN 1020
			
			WHEN 950 THEN 1030
			
			WHEN 960 THEN 1040
			
			WHEN 970 THEN 1050
			
			WHEN 980 THEN 1060
			
			WHEN 990 THEN 1070
			
			WHEN 1000 THEN 1080
			
			WHEN 1010 THEN 1090
			
			WHEN 1020 THEN 1100
			
			WHEN 1030 THEN 1110
			
			WHEN 1040 THEN 1120
			
			WHEN 1050 THEN 1130
			
			WHEN 1060 THEN 1130
			
			WHEN 1070 THEN 1140
			
			WHEN 1080 THEN 1150
			
			WHEN 1090 THEN 1160
			
			WHEN 1100 THEN 1170
			
			WHEN 1110 THEN 1180
			
			WHEN 1120 THEN 1190
			
			WHEN 1130 THEN 1200
			
			WHEN 1140 THEN 1210
			
			WHEN 1150 THEN 1220
			
			WHEN 1160 THEN 1230
			
			WHEN 1170 THEN 1240
			
			WHEN 1180 THEN 1250
			
			WHEN 1190 THEN 1260
			
			WHEN 1200 THEN 1270
			
			WHEN 1210 THEN 1280
			
			WHEN 1220 THEN 1290
			
			WHEN 1230 THEN 1300
			
			WHEN 1240 THEN 1310
			
			WHEN 1250 THEN 1310
			
			WHEN 1260 THEN 1320
			
			WHEN 1270 THEN 1330
			
			WHEN 1280 THEN 1340
			
			WHEN 1290 THEN 1350
			
			WHEN 1300 THEN 1360
			
			WHEN 1310 THEN 1370
			
			WHEN 1320 THEN 1380
			
			WHEN 1330 THEN 1390
			
			WHEN 1340 THEN 1400
			
			WHEN 1350 THEN 1410
			
			WHEN 1360 THEN 1420
			
			WHEN 1370 THEN 1420
			
			WHEN 1380 THEN 1430
			
			WHEN 1390 THEN 1440
			
			WHEN 1400 THEN 1450
			
			WHEN 1410 THEN 1460
			
			WHEN 1420 THEN 1470
			
			WHEN 1430 THEN 1480
			
			WHEN 1440 THEN 1480
			
			WHEN 1450 THEN 1490
			
			WHEN 1460 THEN 1500
			
			WHEN 1470 THEN 1510
			
			WHEN 1480 THEN 1510
			
			WHEN 1490 THEN 1520
			
			WHEN 1500 THEN 1530
			
			WHEN 1510 THEN 1540
			
			WHEN 1520 THEN 1540
			
			WHEN 1530 THEN 1550
			
			WHEN 1540 THEN 1560
			
			WHEN 1550 THEN 1560
			
			WHEN 1560 THEN 1570
			
			WHEN 1570 THEN 1580
			
			WHEN 1580 THEN 1590
			
			WHEN 1590 THEN 1590
			
			WHEN 1600 THEN 1600
 		    ELSE .




       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=OLD_SAT;
%let table_name=SAToldtonewSAT1600;
%let new_varname=NEW_SAT;

%old_sat_to_new_sat_1600(&var_name,&table_name,&new_varname)




	/*  15:  Recode old SAT (2400 scale) to new SAT (1600 scale) */



data SAToldtonewSAT241600;
   infile datalines;
   input OLD_SAT ;
   datalines;
1250
460
310
370
1280
1220
1910
920
27
NA
15
240
5
;


%Macro old_sat_to_new_sat_2400(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name

			WHEN . THEN .
			
			WHEN 600 THEN 400
			
			WHEN 610 THEN 410
			
			WHEN 620 THEN 420
			
			WHEN 630 THEN 430
			
			WHEN 640 THEN 440
			
			WHEN 650 THEN 450
			
			WHEN 660 THEN 460
			
			WHEN 670 THEN 470
			
			WHEN 680 THEN 480
			
			WHEN 690 THEN 490
			
			WHEN 700 THEN 500
			
			WHEN 710 THEN 510
			
			WHEN 720 THEN 520
			
			WHEN 730 THEN 530
			
			WHEN 740 THEN 540
			
			WHEN 750 THEN 550
			
			WHEN 760 THEN 560
			
			WHEN 770 THEN 580
			
			WHEN 780 THEN 590
			
			WHEN 790 THEN 600
			
			WHEN 800 THEN 610
			
			WHEN 810 THEN 620
			
			WHEN 820 THEN 630
			
			WHEN 830 THEN 640
			
			WHEN 840 THEN 650
			
			WHEN 850 THEN 660
			
			WHEN 860 THEN 670
			
			WHEN 870 THEN 680
			
			WHEN 880 THEN 690
			
			WHEN 890 THEN 690
			
			WHEN 900 THEN 700
			
			WHEN 910 THEN 710
			
			WHEN 920 THEN 710
			
			WHEN 930 THEN 720
			
			WHEN 940 THEN 730
			
			WHEN 950 THEN 730
			
			WHEN 960 THEN 740
			
			WHEN 970 THEN 740
			
			WHEN 980 THEN 750
			
			WHEN 990 THEN 760
			
			WHEN 1000 THEN 760
			
			WHEN 1010 THEN 770
			
			WHEN 1020 THEN 780
			
			WHEN 1030 THEN 780
			
			WHEN 1040 THEN 790
			
			WHEN 1050 THEN 800
			
			WHEN 1060 THEN 800
			
			WHEN 1070 THEN 810
			
			WHEN 1080 THEN 810
			
			WHEN 1090 THEN 820
			
			WHEN 1100 THEN 830
			
			WHEN 1110 THEN 830
			
			WHEN 1120 THEN 840
			
			WHEN 1130 THEN 850
			
			WHEN 1140 THEN 850
			
			WHEN 1150 THEN 860
			
			WHEN 1160 THEN 870
			
			WHEN 1170 THEN 870
			
			WHEN 1180 THEN 880
			
			WHEN 1190 THEN 890
			
			WHEN 1200 THEN 890
			
			WHEN 1210 THEN 900
			
			WHEN 1220 THEN 910
			
			WHEN 1230 THEN 910
			
			WHEN 1240 THEN 920
			
			WHEN 1250 THEN 930
			
			WHEN 1260 THEN 930
			
			WHEN 1270 THEN 940
			
			WHEN 1280 THEN 950
			
			WHEN 1290 THEN 950
			
			WHEN 1300 THEN 960
			
			WHEN 1310 THEN 970
			
			WHEN 1320 THEN 980
			
			WHEN 1330 THEN 980
			
			WHEN 1340 THEN 990
			
			WHEN 1350 THEN 1000
			
			WHEN 1360 THEN 1000
			
			WHEN 1370 THEN 1010
			
			WHEN 1380 THEN 1020
			
			WHEN 1390 THEN 1020
			
			WHEN 1400 THEN 1030
			
			WHEN 1410 THEN 1030
			
			WHEN 1420 THEN 1040
			
			WHEN 1430 THEN 1050
			
			WHEN 1440 THEN 1050
			
			WHEN 1450 THEN 1060
			
			WHEN 1460 THEN 1070
			
			WHEN 1470 THEN 1070
			
			WHEN 1480 THEN 1080
			
			WHEN 1490 THEN 1090
			
			WHEN 1500 THEN 1090
			
			WHEN 1510 THEN 1100
			
			WHEN 1520 THEN 1110
			
			WHEN 1530 THEN 1110
			
			WHEN 1540 THEN 1120
			
			WHEN 1550 THEN 1120
			
			WHEN 1560 THEN 1130
			
			WHEN 1570 THEN 1140
			
			WHEN 1580 THEN 1140
			
			WHEN 1590 THEN 1150
			
			WHEN 1600 THEN 1160
			
			WHEN 1610 THEN 1160
			
			WHEN 1620 THEN 1170
			
			WHEN 1630 THEN 1180
			
			WHEN 1640 THEN 1180
			
			WHEN 1650 THEN 1190
			
			WHEN 1660 THEN 1200
			
			WHEN 1670 THEN 1200
			
			WHEN 1680 THEN 1210
			
			WHEN 1690 THEN 1210
			
			WHEN 1700 THEN 1220
			
			WHEN 1710 THEN 1230
			
			WHEN 1720 THEN 1230
			
			WHEN 1730 THEN 1240
			
			WHEN 1740 THEN 1250
			
			WHEN 1750 THEN 1250
			
			WHEN 1760 THEN 1260
			
			WHEN 1770 THEN 1270
			
			WHEN 1780 THEN 1270
			
			WHEN 1790 THEN 1280
			
			WHEN 1800 THEN 1290
			
			WHEN 1810 THEN 1290
			
			WHEN 1820 THEN 1300
			
			WHEN 1830 THEN 1300
			
			WHEN 1840 THEN 1310
			
			WHEN 1850 THEN 1320
			
			WHEN 1860 THEN 1320
			
			WHEN 1870 THEN 1330
			
			WHEN 1880 THEN 1340
			
			WHEN 1890 THEN 1340
			
			WHEN 1900 THEN 1350
			
			WHEN 1910 THEN 1350
			
			WHEN 1920 THEN 1360
			
			WHEN 1930 THEN 1370
			
			WHEN 1940 THEN 1370
			
			WHEN 1950 THEN 1380
			
			WHEN 1960 THEN 1380
			
			WHEN 1970 THEN 1390
			
			WHEN 1980 THEN 1400
			
			WHEN 1990 THEN 1400
			
			WHEN 2000 THEN 1410
			
			WHEN 2010 THEN 1410
			
			WHEN 2020 THEN 1420
			
			WHEN 2030 THEN 1430
			
			WHEN 2040 THEN 1430
			
			WHEN 2050 THEN 1440
			
			WHEN 2060 THEN 1440
			
			WHEN 2070 THEN 1450
			
			WHEN 2080 THEN 1450
			
			WHEN 2090 THEN 1460
			
			WHEN 2100 THEN 1470
			
			WHEN 2110 THEN 1470
			
			WHEN 2120 THEN 1480
			
			WHEN 2130 THEN 1480
			
			WHEN 2140 THEN 1490
			
			WHEN 2150 THEN 1490
			
			WHEN 2160 THEN 1500
			
			WHEN 2170 THEN 1500
			
			WHEN 2180 THEN 1510
			
			WHEN 2190 THEN 1510
			
			WHEN 2200 THEN 1510
			
			WHEN 2210 THEN 1520
			
			WHEN 2220 THEN 1520
			
			WHEN 2230 THEN 1530
			
			WHEN 2240 THEN 1530
			
			WHEN 2250 THEN 1540
			
			WHEN 2260 THEN 1540
			
			WHEN 2270 THEN 1550
			
			WHEN 2280 THEN 1550
			
			WHEN 2290 THEN 1550
			
			WHEN 2300 THEN 1560
			
			WHEN 2310 THEN 1560
			
			WHEN 2320 THEN 1570
			
			WHEN 2330 THEN 1570
			
			WHEN 2340 THEN 1580
			
			WHEN 2350 THEN 1580
			
			WHEN 2360 THEN 1590
			
			WHEN 2370 THEN 1590
			
			WHEN 2380 THEN 1590
			
			WHEN 2390 THEN 1600
			
			WHEN 2400 THEN 1600
			ELSE .

       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=OLD_SAT;
%let table_name=SAToldtonewSAT241600;
%let new_varname=NEW_SAT;

%old_sat_to_new_sat_2400(&var_name,&table_name,&new_varname)



/* 16: Recode old SAT writing  to new SAT writing and language section */


data SAToldWtonewSATW;
   infile datalines;
   input OLD_SAT ;
   datalines;
1250
260
310
370
.
.
1910
290
27
NA
15
240
5
;



%Macro old_sat_wr_to_new_sat_wr(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name
			WHEN . THEN .
			
			WHEN 200 THEN 10
			
			WHEN 210 THEN 11
			
			WHEN 220 THEN 11
			
			WHEN 230 THEN 12
			
			WHEN 240 THEN 13
			
			WHEN 250 THEN 14
			
			WHEN 260 THEN 14
			
			WHEN 270 THEN 15
			
			WHEN 280 THEN 16
			
			WHEN 290 THEN 17
			
			WHEN 300 THEN 17
			
			WHEN 310 THEN 18
			
			WHEN 320 THEN 18
			
			WHEN 330 THEN 19
			
			WHEN 340 THEN 19
			
			WHEN 350 THEN 20
			
			WHEN 360 THEN 21
			
			WHEN 370 THEN 21
			
			WHEN 380 THEN 22
			
			WHEN 390 THEN 22
			
			WHEN 400 THEN 23
			
			WHEN 410 THEN 24
			
			WHEN 420 THEN 24
			
			WHEN 430 THEN 25
			
			WHEN 440 THEN 25
			
			WHEN 450 THEN 26
			
			WHEN 460 THEN 27
			
			WHEN 470 THEN 27
			
			WHEN 480 THEN 28
			
			WHEN 490 THEN 28
			
			WHEN 500 THEN 28
			
			WHEN 510 THEN 29
			
			WHEN 520 THEN 29
			
			WHEN 530 THEN 30
			
			WHEN 540 THEN 30
			
			WHEN 550 THEN 31
			
			WHEN 560 THEN 31
			
			WHEN 570 THEN 32
			
			WHEN 580 THEN 32
			
			WHEN 590 THEN 33
			
			WHEN 600 THEN 33
			
			WHEN 610 THEN 33
			
			WHEN 620 THEN 34
			
			WHEN 630 THEN 34
			
			WHEN 640 THEN 35
			
			WHEN 650 THEN 35
			
			WHEN 660 THEN 35
			
			WHEN 670 THEN 36
			
			WHEN 680 THEN 36
			
			WHEN 690 THEN 36
			
			WHEN 700 THEN 37
			
			WHEN 710 THEN 37
			
			WHEN 720 THEN 37
			
			WHEN 730 THEN 38
			
			WHEN 740 THEN 38
			
			WHEN 750 THEN 38
			
			WHEN 760 THEN 39
			
			WHEN 770 THEN 39
			
			WHEN 780 THEN 40
			
			WHEN 790 THEN 40
			
			WHEN 800 THEN 40
			ELSE .

       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=OLD_SAT;
%let table_name=SAToldWtonewSATW;
%let new_varname=NEW_SAT;

%old_sat_wr_to_new_sat_wr(&var_name,&table_name,&new_varname)



/* 17: Recode old SAT writing plus critical reading sections to new SAT EBRW section */


data SAToldWCRtonewSATEBRW;
   infile datalines;
   input OLD_SAT ;
   datalines;
1250
260
310
370
.
.
400
650
290
NA
NA
15
240
5
;


%Macro old_sat_wr_to_new_ebrw(var_name,table_name,new_varname);
	proc sql;
	SELECT &var_name,
       CASE &var_name
			 WHEN . THEN .
			
			 WHEN 400 THEN 200
			
			 WHEN 410 THEN 210
			
			 WHEN 420 THEN 220
			
			 WHEN 430 THEN 230
			
			 WHEN 440 THEN 240
			
			 WHEN 450 THEN 260
			
			 WHEN 460 THEN 270
			
			 WHEN 470 THEN 280
			
			 WHEN 480 THEN 290
			
			 WHEN 490 THEN 300
			
			 WHEN 500 THEN 310
			
			 WHEN 510 THEN 310
			
			 WHEN 520 THEN 320
			
			 WHEN 530 THEN 320
			
			 WHEN 540 THEN 330
			
			 WHEN 550 THEN 330
			
			 WHEN 560 THEN 330
			
			 WHEN 570 THEN 340
			
			 WHEN 580 THEN 340
			
			 WHEN 590 THEN 350
			
			 WHEN 600 THEN 350
			
			 WHEN 610 THEN 360
			
			 WHEN 620 THEN 360
			
			 WHEN 630 THEN 360
			
			 WHEN 640 THEN 370
			
			 WHEN 650 THEN 370
			
			 WHEN 660 THEN 380
			
			 WHEN 670 THEN 380
			
			 WHEN 680 THEN 390
			
			 WHEN 690 THEN 390
			
			 WHEN 700 THEN 400
			
			 WHEN 710 THEN 400
			
			 WHEN 720 THEN 410
			
			 WHEN 730 THEN 410
			
			 WHEN 740 THEN 420
			
			 WHEN 750 THEN 420
			
			 WHEN 760 THEN 430
			
			 WHEN 770 THEN 430
			
			 WHEN 780 THEN 440
			
			 WHEN 790 THEN 440
			
			 WHEN 800 THEN 450
			
			 WHEN 810 THEN 450
			
			 WHEN 820 THEN 460
			
			 WHEN 830 THEN 460
			
			 WHEN 840 THEN 470
			
			 WHEN 850 THEN 480
			
			 WHEN 860 THEN 480
			
			 WHEN 870 THEN 490
			
			 WHEN 880 THEN 490
			
			 WHEN 890 THEN 500
			
			 WHEN 900 THEN 500
			
			 WHEN 910 THEN 510
			
			 WHEN 920 THEN 510
			
			 WHEN 930 THEN 520
			
			 WHEN 940 THEN 530
			
			 WHEN 950 THEN 530
			
			 WHEN 960 THEN 540
			
			 WHEN 970 THEN 540
			
			 WHEN 980 THEN 550
			
			 WHEN 990 THEN 550
			
			 WHEN 1000 THEN 560
			
			 WHEN 1010 THEN 560
			
			 WHEN 1020 THEN 570
			
			 WHEN 1030 THEN 570
			
			 WHEN 1040 THEN 580
			
			 WHEN 1050 THEN 580
			
			 WHEN 1060 THEN 590
			
			 WHEN 1070 THEN 590
			
			 WHEN 1080 THEN 600
			
			 WHEN 1090 THEN 600
			
			 WHEN 1100 THEN 610
			
			 WHEN 1110 THEN 610
			
			 WHEN 1120 THEN 620
			
			 WHEN 1130 THEN 620
			
			 WHEN 1140 THEN 630
			
			 WHEN 1150 THEN 630
			
			 WHEN 1160 THEN 640
			
			 WHEN 1170 THEN 640
			
			 WHEN 1180 THEN 650
			
			 WHEN 1190 THEN 650
			
			 WHEN 1200 THEN 650
			
			 WHEN 1210 THEN 660
			
			 WHEN 1220 THEN 660
			
			 WHEN 1230 THEN 670
			
			 WHEN 1240 THEN 670
			
			 WHEN 1250 THEN 680
			
			 WHEN 1260 THEN 680
			
			 WHEN 1270 THEN 680
			
			 WHEN 1280 THEN 690
			
			 WHEN 1290 THEN 690
			
			 WHEN 1300 THEN 700
			
			 WHEN 1310 THEN 700
			
			 WHEN 1320 THEN 700
			
			 WHEN 1330 THEN 710
			
			 WHEN 1340 THEN 710
			
			 WHEN 1350 THEN 710
			
			 WHEN 1360 THEN 720
			
			 WHEN 1370 THEN 720
			
			 WHEN 1380 THEN 730
			
			 WHEN 1390 THEN 730
			
			 WHEN 1400 THEN 730
			
			 WHEN 1410 THEN 740
			
			 WHEN 1420 THEN 740
			
			 WHEN 1430 THEN 740
			
			 WHEN 1440 THEN 750
			
			 WHEN 1450 THEN 750
			
			 WHEN 1460 THEN 750
			
			 WHEN 1470 THEN 760
			
			 WHEN 1480 THEN 760
			
			 WHEN 1490 THEN 760
			
			 WHEN 1500 THEN 770
			
			 WHEN 1510 THEN 770
			
			 WHEN 1520 THEN 770
			
			 WHEN 1530 THEN 780
			
			 WHEN 1540 THEN 780
			
			 WHEN 1550 THEN 780
			
			 WHEN 1560 THEN 790
			
			 WHEN 1570 THEN 790
			
			 WHEN 1580 THEN 800
			
			 WHEN 1590 THEN 800
			
			 WHEN 1600 THEN 800
  		     ELSE .

       END AS &new_varname
FROM &table_name;
quit;
%mend;

%let var_name=OLD_SAT;
%let table_name=SAToldWCRtonewSATEBRW;
%let new_varname=NEW_SAT;

%old_sat_wr_to_new_ebrw(&var_name,&table_name,&new_varname)

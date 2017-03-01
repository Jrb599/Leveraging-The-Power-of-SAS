/******************************************************************************\ 
* Name: generatedata.sas
* 
* Purpose: Generate two datasets to be fed into lefthash.sas, righthash.sas
           fulljoinhash.sas
* 
* Author: Jesse Behrens
* 
* History: 
* 02/28/2017 Initial creation of code
\******************************************************************************/

%let NObsleft=100000;
%let NObsright=50000;

/*Create a table called lefttable that containts a key and variables with random
  values A-I*/

DATA lefttable;
  do i=1 to &NObsleft.;

    length KeyL $5.;

    IF rand('uniform')=>.04 then KeyL=cats('Key',rand('Binomial',.5,100)); 
	ELSE KeyL='';

    VarA=rand('uniform');
	VarB=rand('uniform');
	VarC=rand('uniform');
	VarD=rand('uniform');
	VarE=rand('uniform');
	VarF=rand('uniform');
	VarG=rand('uniform');
	VarH=rand('uniform');
	VarI=rand('uniform');


	output;
  end;
  drop i;
RUN;

/*Create a table called lefttable that containts a key and variables with random
  values A-I*/

DATA righttable;
  do i=1 to &NObsright.;

    length KeyR $5.;

    IF rand('uniform')=>0.03 then KeyR=cats('Key',rand('Binomial',.5,115)); 
    ELSE KeyR='';

    VarJ=rand('uniform');
	VarK=rand('uniform');
	VarL=rand('uniform');
    VarM=rand('uniform');
    VarN=rand('uniform');
    VarO=rand('uniform');
    VarP=rand('uniform');
    VarQ=rand('uniform');
    VarR=rand('uniform');


    output;
  end;
  drop i;
RUN;

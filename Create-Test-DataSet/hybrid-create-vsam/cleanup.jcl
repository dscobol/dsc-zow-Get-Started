//ZAAAAAC  JOB NOTIFY=&SYSUID,
// MSGCLASS=H,MSGLEVEL=(1,1),REGION=0M
//****************************************************************
//* THE HLQ SYMBOLIC MUST CONTAIN THE HIGH LEVEL
//* QUALIFIER UNDER WHICH THE PROJ DATASETS MAY RESIDE.
//*     In all these examples, a HLQ of ZAAAAA is used.
//*     Change that to your TSO userid.
//*
//E1       EXPORT SYMLIST=(HLQ,PROJ,QDS1,VDS1,LENGTH,FORMAT)
//HLQ      SET HLQ='ZAAAAA'
//PROJ     SET PROJ='TEST'
//QDS1     SET QDS1='EMPDATA'
//VDS1     SET VDS1='VEMP'
//LENGTH   SET LENGTH='99'
//FORMAT   SET FORMAT='FB'
//*************************
//* CLEAN UP DATASETS
//*************************
//DELETE1  EXEC PGM=IEFBR14
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//DD1      DD DSN=&HLQ..&PROJ..&QDS1.,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//*
//DELETE2  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *,SYMBOLS=JCLONLY
  DELETE &HLQ..&PROJ..&VDS1
/*
//* End of job

//ZAAAAAQ  JOB NOTIFY=&SYSUID,
// MSGCLASS=H,MSGLEVEL=(1,1),REGION=0M
//****************************************************************
//* THE HLQ SYMBOLIC MUST CONTAIN THE HIGH LEVEL
//* QUALIFIER UNDER WHICH THE PROJ DATASETS MAY RESIDE.
//*     In all these examples, a HLQ of ZAAAAA is used.
//*     Change that to your TSO userid.
//*
//E1       EXPORT SYMLIST=(HLQ,PROJ,QDS1,LENGTH,FORMAT)
//HLQ      SET HLQ='ZAAAAA'
//PROJ     SET PROJ='TEST'
//QDS1     SET QDS1='EMPDATA'
//LENGTH   SET LENGTH='99'
//FORMAT   SET FORMAT='FB'
//*************************
//* CLEAN UP DATASETS
//*************************
//DELETE   EXEC PGM=IEFBR14
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//DD1      DD DSN=&HLQ..&PROJ..&QDS1.,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//*
//*************************
//* ALLOCATE DATASETS
//*************************
//ALLOCAT  EXEC PGM=IEFBR14,COND=(8,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//DD1      DD DSN=&HLQ..&PROJ..&QDS1.,
//            DCB=(BLKSIZE=0,LRECL=&LENGTH.,RECFM=&FORMAT.,DSORG=PS),
//            DISP=(NEW,CATLG),
//            SPACE=(TRK,(3,1),RLSE)
//*

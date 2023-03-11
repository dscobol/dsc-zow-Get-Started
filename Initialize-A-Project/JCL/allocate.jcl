//ZAAAAAQ  JOB NOTIFY=&SYSUID,
// MSGCLASS=H,MSGLEVEL=(1,1),REGION=0M
//****************************************************************
//* THE HLQ SYMBOLIC MUST CONTAIN THE HIGH LEVEL
//* QUALIFIER UNDER WHICH THE PROJ DATASETS MAY RESIDE.
//*     In all these examples, a HLQ of ZAAAAA is used.
//*     Change that to your TSO userid.
//*
//E1       EXPORT SYMLIST=(HLQ,PROJ)
//HLQ      SET HLQ='ZAAAAA'
//PROJ     SET PROJ='ZOWTST'
//*************************
//* ALLOCATE DATASETS
//*************************
//ALLOCAT  EXEC PGM=IEFBR14
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//DD1      DD DSN=&HLQ..&PROJ..OBJ,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(5,1),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
//DD2      DD DSN=&HLQ..&PROJ..LOAD,
//            DISP=(NEW,CATLG),LRECL=0,RECFM=U,DSORG=PO,
//            SPACE=(TRK,(5,1),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
//DD3      DD DSN=&HLQ..&PROJ..CBL,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(5,1),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
//DD4      DD DSN=&HLQ..&PROJ..CPY,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(5,1),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
//* End of job
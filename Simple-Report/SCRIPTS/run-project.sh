#!/bin/bash

# Run the entire project
#   Allocate the datasets
#   Upload all the members and datafiles
#   Compile and Run the program

# A HLQ of ZAAAAA is used. Change that to your TSO userid.

# run with ./run-project.sh

HLQ="ZAAAAA"
PROJ='SIMRPT'
FILES_CMD="zos-files"
JOBS_CMD="zos-jobs"

echo "Submitted job to allocate data sets.."
zowe ${JOBS_CMD} submit local-file ../JCL/ALLOCATE.jcl
sleep 5s

echo "Copy my app to the created PDS.."
zowe ${FILES_CMD} upload dir-to-pds ../CBL ${HLQ}.${PROJ}.CBL
zowe ${FILES_CMD} upload dir-to-pds ../CPY ${HLQ}.${PROJ}.CPY
zowe ${FILES_CMD} upload file-to-data-set ../RESOURCES/STCOURS ${HLQ}.${PROJ}.STCOURS
sleep 5s

echo "Compile and Run my app"
zowe ${JOBS_CMD} submit local-file ../JCL/COMPRUN.jcl

#!/bin/bash

# Allocate and upload a dataset.

# This will use a hybrid method to upload the dataset.
# First, it will use a JCL member to delete then create the dataset,
# then it will upload the file to the created dataset.

# A HLQ of ZAAAAA is used. Change that to your TSO userid.

# Copy the file you want to upload into this directory and update the name.
# DATAFILE='employees.dat.txt'

# This will create a sequential data set with the name:
# ZAAAAA.TEST.EMPDATA
# then it will load that data set into a VSAM data set with the name:
# ZAAAAA.TEST.VEMP

# run with ./allocate-and-load.sh

DATAFILE='employees.dat.txt'

HLQ="ZAAAAA"
PROJ='TEST'
QDS1='EMPDATA'

FILES_CMD="zos-files"
JOBS_CMD="zos-jobs"

echo "Zowe, submit the JCL to create the QSAM dataset."
zowe ${JOBS_CMD} submit local-file qsam.jcl
sleep 2s

echo "Zowe, upload the file."
zowe ${FILES_CMD} upload file-to-data-set ${DATAFILE} ${HLQ}.${PROJ}.${QDS1}
sleep 2s

echo "Zowe, submit the JCL to create the VSAM dataset."
zowe ${JOBS_CMD} submit local-file repro-vsam.jcl

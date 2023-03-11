#!/bin/bash

# Allocate and upload a dataset.

# This will use a hybrid method to upload the dataset.
# First, it will use a JCL member to delete then create the dataset,
# then it will upload the file to the created dataset.

# A HLQ of ZAAAAA is used. Change that to your TSO userid.
#
# Copy the file you want to upload into this directory and update the name.

# DATAFILE='employees.dat.txt'

# run with ./allocate.sh

DATAFILE='employees.dat.txt'

HLQ="ZAAAAA"
PROJ='TEST'
MEMBNAME='EMPDATA'

FILES_CMD="zos-files"
JOBS_CMD="zos-jobs"

echo "Zowe, submit the JCL to allocate the dataset."
zowe ${JOBS_CMD} submit local-file allocate.jcl
sleep 2s

echo "Zowe, upload the file."
zowe ${FILES_CMD} upload file-to-data-set ${DATAFILE} ${HLQ}.${PROJ}.${MEMBNAME}

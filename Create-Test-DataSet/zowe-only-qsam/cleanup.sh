#!/bin/bash

# Delete the QSAM dataset.

# A HLQ of ZAAAAA is used. Change that to your TSO userid.

HLQ="ZAAAAA"
PROJ='TEST'
QDS1='EMPDATA'

FILES_CMD="zos-files"
JOBS_CMD="zos-jobs"

echo "Deleting data set"
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.${QDS1} -f

#!/bin/bash

# Delete the datasets used for the PROJ.

# This will use the Zowe only method to delete the datasets.

# A HLQ of ZAAAAA is used. Change that to your TSO userid.

# run with ./cleanup.sh

HLQ="ZAAAAA"
PROJ='SIMRPT'
FILES_CMD="zos-files"
JOBS_CMD="zos-jobs"

echo "Deleting data sets for SIMRPT PROJ.."
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.STCOURS -f
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.CPY -f
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.CBL -f
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.LOAD -f
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.OBJ -f

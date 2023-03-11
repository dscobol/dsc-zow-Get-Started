#!/bin/bash

# Delete all the Zowe Test PROJ dataset.

# A HLQ of ZAAAAA is used. Change that to your TSO userid.

HLQ="ZAAAAA"
PROJ="ZOWTST"
FILES_CMD="zos-files"
JOBS_CMD="zos-jobs"

echo "Deleting data sets for ZOWE PROJs environment.."
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.CBL -f
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.CPY -f
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.LOAD -f
zowe ${FILES_CMD} delete data-set ${HLQ}.${PROJ}.OBJ -f

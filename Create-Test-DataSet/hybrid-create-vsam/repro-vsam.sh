#!/bin/sh
################################################################
# Repro the VSAM file
#
# run with ./repro-vsam.sh
#
################################################################

FILES_CMD="zos-files"
JOBS_CMD="zos-jobs"


echo "Zowe, submit the JCL to create the VSAM dataset."
zowe ${JOBS_CMD} submit local-file repro-vsam.jcl

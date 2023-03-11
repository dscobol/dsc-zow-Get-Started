#!/bin/bash

# Cleanup the test.

# This will submit the JCL to delete the QSAM and VSAM files.

# run with ./cleanup.sh

FILES_CMD="zos-files"
JOBS_CMD="zos-jobs"

echo "Zowe, submit the JCL to delete the datasets."
zowe ${JOBS_CMD} submit local-file cleanup.jcl

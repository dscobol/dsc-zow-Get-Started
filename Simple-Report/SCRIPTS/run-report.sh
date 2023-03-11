#!/bin/bash

# Run the job to print the reports.
# run with ./run-report.sh

JOBS_CMD="zos-jobs"

echo "Run the Reports"
zowe ${JOBS_CMD} submit local-file ../JCL/RUN.jcl

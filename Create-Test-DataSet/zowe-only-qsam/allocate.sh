#!/bin/bash

# Allocate and upload a dataset.

# This will use the Zowe only method to upload the dataset.

# A HLQ of ZAAAAA is used. Change that to your TSO userid.

# Copy the file you want to upload into this directory and update the name.
# DATAFILE='employees.dat.txt'

# run with ./allocate.sh

# file to be uploaded
DATAFILE='employees.dat.txt'

# Update these parameters to the new name of the dataset.
HLQ='ZAAAAA'
PROJ='TEST'
QDS1='EMPDATA'

# BLKSIZE must be a multiple of LRECL.
# Easiest way is just multiply LRECL by 1000 or 100 or 10.
# Don't go too big with the multiplier though.
LRECL='99'
BLKSIZE='9900'

# If you are just uploading test datasets to play with, these are good.
SIZE='3TRK'
RECFM='FB'


FILES_CMD='zos-files'
JOBS_CMD='zos-jobs'

echo 'Zowe, delete the dataset.'
zowe ${FILES_CMD} delete data-set \
   ${HLQ}.${PROJ}.${QDS1} -f
sleep 1s

echo 'Zowe, create the dataset.'
zowe ${FILES_CMD} create data-set-sequential \
   ${HLQ}.${PROJ}.${QDS1} \
   --block-size ${BLKSIZE} \
   --record-format ${RECFM} \
   --record-length ${LRECL} \
   --size ${SIZE}
sleep 1s

echo 'Zowe, upload the file.'
zowe ${FILES_CMD} upload file-to-data-set \
   ${DATAFILE} ${HLQ}.${PROJ}.${QDS1}

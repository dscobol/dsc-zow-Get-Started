# Get Started using Zowe

**Important NOTE 1**

A HLQ of ZAAAAA is used in all the JCL and scripts.

You must change that to your TSO userid for these to work.

**Important NOTE 2**

The JCL contained in this code is written for the system it was run on.

You must verify that the parameters used are valid for the system you are running on.

## The 3 directories
- Create Test Dataset
- Initialize A Project
- Simple Report

### Create Test Dataset

This demonstrates 3 different ways to create a dataset and then upload the data to that dataset and then cleanup after.

1. Hybrid Create QSAM
2. Hybrid Create VSAM
3. Zowe Only QSAM

The Hybrid methods use a combination of JCL and Zowe commands to create, upload into and delete datasets.

The Zowe Only method uses only Zowe commands to create, upload into and delete datasets.

### Intialize a Project

This demonstrates a method to create and delete a series of PDSs that could be used for a new Project.

### Simple Report

This demonstrates a possible workflow to create a Project.

- Create a series of PDSs
- Upload COBOL and copylib Members and test data Datasets
- Compile, Link and Run the program
- Run the program
- Delete the Project

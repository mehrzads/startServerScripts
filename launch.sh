#!/bin/bash
starcluster start largecluster
starcluster sshmaster largecluster 'bash -s' < local_script.sh
starcluster get largecluster /home/sgeadmin/gemm/scalapack/result.txt .

# $Id: $



#!/bin/bash
starcluster start largecluster
starcluster sshmaster largecluster 'bash -s' < master_script.sh  
starcluster sshnode largecluster node001 'bash -s' < node_script.sh 
# $Id: $



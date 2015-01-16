#!/bin/bash
starcluster start largecluster
starcluster sshmaster largecluster 'bash -s' < local_script.sh
# $Id: $



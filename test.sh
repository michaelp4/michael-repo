#!/bin/bash

export MPIRUN=/gpfs0/system/openmpi-2.0.1_openib/bin/mpirun

#machinefile=$TMPDIR/nodes
#awk '{ for (i=0;i<$2;++i) {print $1} }' $PE_HOSTFILE >> $machinefile

$MPIRUN --hostfile ./machinefile -np 5 /gpfs0/ukeshet/users/pukshans/athena-public-version-master/bin/athena -i /gpfs0/ukeshet/users/pukshans/athena-public-version-master/inputs/hydro/athinput.blast &>MyOutputFile

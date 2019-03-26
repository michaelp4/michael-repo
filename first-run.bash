#! /bin/bash
#$ -V
#$ -cwd
#$ -N AthTest.sh
#$ -pe rmpi 4
#$ -j y
# -e test.e
# -o test.o

export MPIRUN=/gpfs0/system/openmpi-2.0.1_openib/bin/mpirun
machinefile=$TMPDIR/nodes
awk '{ for (i=0;i<$2;++i) {print $1} }' $PE_HOSTFILE >> $machinefile
$MPIRUN --hostfile $machinefile -np $NSLOTS ../athena-public-version-master/bin/athena -i ../athena-public-version-master/inputs/hydro/athinput.blast &>MyOutputFile
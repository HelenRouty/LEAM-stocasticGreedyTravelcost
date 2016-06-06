#!/bin/bash

for i in {0..9}
do
  echo "#!/bin/bash
#PBS -l nodes=1:ppn=10,walltime=20:00:00
#PBS -M helen.youshan@gmail.com
cd /projects/leam/LEAM
module load parallel
time seq 0 9 | parallel python stocasticgreedy_randomwalk.py"> ./pbs/pbs.script.$i
done


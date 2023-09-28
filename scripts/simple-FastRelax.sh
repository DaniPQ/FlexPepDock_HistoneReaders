#!/bin/bash
#$ -S /bin/bash

#SBATCH --array=1-500
#SBATCH --job-name=fast-relax
#SBATCH --time=0-10
#SBATCH --partition=bmm
#SBATCH --mail-type=ALL

if [ $# -lt 2 ]; then
    echo "USAGE: simple-FastRelax.sh <input> <nstruct>"
    exit
fi
pdb=$1
nstruct=$2

/home/dpquiroz/Applications/rosetta_bin_linux_2021.16.61629_bundle/main/source/bin/rosetta_scripts.static.linuxgccrelease \
-in:path:database /home/dpquiroz/Applications/rosetta_bin_linux_2021.16.61629_bundle/main/database \
-in:file:s ./$pdb \
-in:file:native ./$pdb \
-parser:protocol ./B_FastRelax.xml \
-relax:constrain_relax_to_start_coords \
-ignore_unrecognized_res \
-nstruct $nstruct \
-default_max_cycles 200 \
-out:prefix Fast-Relaxed- \
-out:file:silent Fast-Relax_${SLURM_ARRAY_TASK_ID}.silent \
-out:file:silent_struct_type binary \
-out:output true \
-out:path:all outfiles \
-out:file:fullatom \
-out:file:scorefile Fast-Relax.sc

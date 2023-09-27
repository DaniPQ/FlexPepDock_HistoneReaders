#!/bin/bash
#$ -S /bin/bash

#SBATCH --array=1-1000
#SBATCH --job-name=di-fpd_docking
#SBATCH --time=0-10
#SBATCH --partition=bmm
#SBATCH --mail-user=dpquiroz@ucdavis.edu
#SBATCH --mail-type=ALL

/home/dpquiroz/Applications/rosetta_bin_linux_2021.16.61629_bundle/main/source/bin/FlexPepDocking.static.linuxgccrelease \
-database /home/dpquiroz/Applications/rosetta_bin_linux_2021.16.61629_bundle/main/database \
-in:file:s Inputs/[HERE].pdb \
-in:file:native Inputs/7de9.pdb \
-flexPepDocking:receptor_chain A \
-flexPepDocking:peptide_chain P \
-chemical:include_patches lys_dimethylated lys_monomethylated lys_trimethylated \
-pep_refine 1 \
-out:nstruct 5 \
-out:suffix _FlexPepDocked \
-out:file:scorefile ./fpd_output_[HERE]/[HERE].fasc \
-out:file:silent ./fpd_output_[HERE]/[HERE]-${SLURM_ARRAY_TASK_ID}.silent \
-out:file:silent_struct_type binary \
-out:file:fullatom \
-ex1 \
-ex2 \
-ex3 \
-ex4 \
-ex1aro \
-ex2aro \
-use_input_sc \
-mute all
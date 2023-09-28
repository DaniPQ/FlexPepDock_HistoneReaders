# FlexPepDock_HistoneReaders

A specialized pipeline for FlexPepDock, focusing on interactions between reader domains and histone-derived peptides. The workflow includes relaxation, pinpointing pairs using an experimental native structure, and executing FlexPepDock for precise docking studies.

**Description**
This pipeline is specifically designed to study the intricate interactions between reader domains and peptides derived from histones. By utilizing the power of FlexPepDock, the workflow provides a systematic approach that includes:

Relaxation of the initial structures.
Identification of interacting pairs based on an experimental native structure.
Execution of FlexPepDock for precise peptide docking.
Analyze the interaction affinities based on the Average distance of the N terminal of the interacting AA with the aromatic cage of the reader domain


**Prerequisites**

1. Rosetta Installation
   This pipeline requires Rosetta to be installed. The installation process will vary depending on your operating system. As mentioned, this pipeline is optimized for a Linux server named "farm". You can follow the official Rosetta installation instructions tailored to your OS.

2. ChimeraX Installation
   tool for viewing and analyzing molecular structures. We use it to align our models with an experimental reference structure and to combine peptide partners into a single PDB file.

3. Required Scripts
   In addition to Rosetta, the following scripts need to be installed locally:

excs.sh
extract-pdbs.sh
extract-pdbs-tag.sh
fam3RT-sameFolder.sh
merge_silent.pl
cull_silent.pl
findColumn.pl

5. Alphafold2/PeptidesPDBs
   Start with the prediction of the peptides you will dock. In this case, we are only modeling the reader domains because the partners will always be the histones. The Input_PDBs folder contains the histone peptides and the experimental crystal structures I use. I generate 5 or more models in AlphaFold for each reader domain, ensuring the RMSD between them and the experimental structure is less than 1Å, and that the prediction of the structures is consistent (RMSD < 1Å). For the rest of the predictions, I will use only one AF2 model.

!!! It's important to use a sequence of the same length as the native experimental structure to which you'll compare it.
!!! The histone peptides have already been relaxed.

**Usage**

less 

**License**
[Provide information about the licensing]



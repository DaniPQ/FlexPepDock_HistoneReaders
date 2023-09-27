# FlexPepDock_HistoneReaders
A specialized pipeline for FlexPepDock, focusing on interactions between reader domains and histone-derived peptides. The workflow includes relaxation, pinpointing pairs using an experimental native structure, and executing FlexPepDock for precise docking studies.

**Description**
This pipeline is specifically designed to study the intricate interactions between reader domains and peptides derived from histones. By utilizing the power of FlexPepDock, the workflow provides a systematic approach that includes:

Relaxation of the initial structures.
Identification of interacting pairs based on an experimental native structure.
Execution of FlexPepDock for precise peptide docking.

**Prerequisites**
1. Rosetta Installation
This pipeline requires Rosetta to be installed. The installation process will vary depending on your operating system. As mentioned, this pipeline is optimized for a Linux server named "farm". You can follow the official Rosetta installation instructions tailored to your OS.

2. ChimeraX Installation
tool for viewing and analyzing molecular structures. We use it to align our models with an experimental reference structure and to combine peptide partners into a single PDB file.

4. Required Scripts
In addition to Rosetta, the following scripts need to be installed locally:

excs.sh
extract-pdbs.sh
extract-pdbs-tag.sh
fam3RT-sameFolder.sh
merge_silent.pl
cull_silent.pl
findColumn.pl

5. Alphafold2/PeptidesPDBs
Start with the prediction of the peptides you wil dock. In this case we are only modelling the reader domains because the partners will always be the histones. In the Input_PDBs folder are the histone peptides and the Experimental crystal structures I use. I generate >=5 models in alphafold for each reader domain, I make sure the rmsd between them and the experimental structure is <1A and that the prediction of the structures is consistent (rmsd<1). For the rest of the prediction I will only use one AF2 model.

! It is important to use a sequence of the same length than the native experimental structure you will compare it to
! The Histone peptides are relaxed already.

**Installation**
[Provide steps on how to install or setup the pipeline]

**Usage**
[Step-by-step guide on how to use the pipeline]

**License**
[Provide information about the licensing]



#!/bin/bash 

if [ $# -lt 2 ]; then
    echo "USAGE: simple-FastRelax.sh <input> <nstruct>"
    exit
fi
pdb=$1
nstruct=$2

~/Applications/rosetta.binary.mac.release-356/main/source/bin/rosetta_scripts.static.macosclangrelease \
-in:path:database ~/Applications/rosetta.binary.mac.release-356/main/database \
-in:file:s ./$pdb \
-in:file:native ./$pdb \
-parser:protocol ./B_FastRelax.xml \
-relax:constrain_relax_to_start_coords \
-ignore_unrecognized_res \
-nstruct $nstruct \
-default_max_cycles 2 \
-out:prefix Fast-Relaxed- \
-out:file:silent ./Fast-Relax-$pdb.silent \
-out:file:silent_struct_type binary \
-out:file:scorefile ./Fast-Relax-$pdb.sc \

#in bash : "simple-FastRelax.sh ../1.Modeling/AF-MSH6-Tudor.pdb 1 > rosetta_run.log 2>&1"
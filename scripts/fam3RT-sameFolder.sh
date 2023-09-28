#!/bin/bash
name=$(echo ${PWD##*/})
merge_silent.pl *.silent > SILENT.out
grep -w SCORE SILENT.out > "$name"SCORE.fsc
Analyze_bestRMSD_memfa3-mini.pl -in "$name"SCORE.fsc
Analyze_Time_memfa3-mini.pl -in "$name"SCORE.fsc
mv SILENT.out "$name"SILENT.out
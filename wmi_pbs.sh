#!/bin/bash
HOME=xxxxxxx
cd $HOME 
export PATH=$HOME/longranger-2.1.3:$PATH
longranger  wgs  --id WmiCondBeacon --reference $HOME/refdata-rn6_condensed --fastqs $HOME/4512-JFI-0336 --jobmode=torque --maxjobs=128 --jobinterval=5000

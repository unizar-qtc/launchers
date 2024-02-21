#!/bin/bash

# File: launchers_def.sh
# Description : change default values for all the launchers
# Version : 1.0
# Last update : 21-02-2024

# USAGE:  bash launchers_def.sh <variable> <value>
# Available variables: nodes, cores, memory, gpus, queue, account


##  DEFAULT VARIABLES  ################################################

launchers_path=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
launchers=$(ls ${launchers_path}/*_launcher ${launchers_path}/*_replicater 2>/dev/null)
allowed_var=( 'nodes' 'cores' 'memory' 'gpus' 'queue' 'account' )

#######################################################################

## Check input arguments
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
  echo "USAGE:  bash launchers_def.sh <variable> <value>"
  echo "Available variables: nodes, cores, memory, gpus, queue, account"
  exit
elif [ "$1" == "" ] || [ "$2" == "" ]; then
  echo "ERROR: No input arguments. Variable and value needed. Use -h for help."
  exit
else
  variable=$1
  value=$2
  if [[ ! ${allowed_var[*]} =~ $(echo "\<${variable}\>") ]]; then
    echo "ERROR: Variable '${variable}' not allowed. Use -h for help."
    exit
  fi
fi

## Modify default values
for launcher in ${launchers}; do
  echo "${launcher} :      ${variable}_def -> ${value}"
  sed -i "s/${variable}_def=[^ ]*/${variable}_def=${value}/" ${launcher}
done

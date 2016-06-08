#!/bin/bash
#
# CRM .bash_profile Time-stamp: "2008-12-07 19:42"
#
# echo "Loading ${HOME}/.bash_profile"
source ~/.profile # Get the paths
source ~/.bashrc  # get aliases
source ~/.apps_config # get apps config vars
#
#- end
eval "$(rbenv init -)"

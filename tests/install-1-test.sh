#!/usr/bin/env roundup
#
# This file contains test scripts to run for the install command.
# Execute it by invoking: 
#    
#     rerun stubbs:test -m jenkins -c install
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "install"

it_runs_without_arguments() {
    rerun jenkins:install
}

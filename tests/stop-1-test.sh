#!/usr/bin/env roundup
#
# This file contains test scripts to run for the stop command.
# Execute it by invoking: 
#    
#     rerun stubbs:test -m jenkins -c stop
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "stop"

it_runs_without_arguments() {
    rerun jenkins:stop
}
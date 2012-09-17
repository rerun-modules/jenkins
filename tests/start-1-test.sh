#!/usr/bin/env roundup
#
# This file contains test scripts to run for the start command.
# Execute it by invoking: 
#    
#     rerun stubbs:test -m jenkins -c start
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "start"

it_runs_without_arguments() {
    rerun jenkins:start
}
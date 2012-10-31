#!/usr/bin/env roundup
#
# This file contains the test plan for the create-job command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p create-job
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "create-job"

it_runs_without_arguments() {
    rerun jenkins:create-job
}

#!/usr/bin/env roundup
#
# This file contains the test plan for the stop command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p stop
#

# The Plan
# --------

describe "stop"

it_runs_without_arguments() {
    rerun jenkins:deploy
    rerun jenkins:stop
    rerun jenkins:stop
}

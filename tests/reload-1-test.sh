#!/usr/bin/env roundup
#
# This file contains the test plan for the reload command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p reload
#

# The Plan
# --------

describe "reload"

it_runs_without_arguments() {
    rerun jenkins:reload
}

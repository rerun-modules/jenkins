#!/usr/bin/env roundup
#
# This file contains the test plan for the add-maven command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p add-maven
#

# The Plan
# --------

describe "add-maven"

it_runs_without_arguments() {
    rerun jenkins:add-maven
}

#!/usr/bin/env roundup
#
# This file contains the test plan for the add-jdk command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p add-jdk
#

# The Plan
# --------

describe "add-jdk"

it_runs_without_arguments() {
    rerun jenkins:add-jdk
}

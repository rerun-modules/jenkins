#!/usr/bin/env roundup
#
# This file contains the test plan for the start command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p start
#

# The Plan
# --------

describe "start"

it_runs_without_arguments() {
    if /sbin/chkconfig jenkins
    then
      rerun jenkins:stop
      rerun jenkins:start
      rerun jenkins:stop
    fi
}

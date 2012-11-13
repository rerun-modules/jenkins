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
    if /sbin/chkconfig jenkins
    then
      rerun jenkins:stop
    fi
}

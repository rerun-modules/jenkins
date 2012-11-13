#!/usr/bin/env roundup
#
# This file contains the test plan for the restart command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p restart
#

# The Plan
# --------

describe "restart"

it_runs_without_arguments() {
    if /sbin/chkconfig jenkins
    then
      rerun jenkins:restart
      rerun jenkins:stop
    fi
}

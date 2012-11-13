#!/usr/bin/env roundup
#
# This file contains the test plan for the status command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p status
#

# The Plan
# --------

describe "status"

it_runs_without_arguments() {
    if /sbin/chkconfig jenkins
    then
      rerun jenkins:start
      rerun jenkins:status

      rerun jenkins:stop

      if ! rerun jenkins:status
      then
        exit 0
      fi
    fi
}

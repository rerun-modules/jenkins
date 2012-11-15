#!/usr/bin/env roundup
#
# This file contains the test plan for the configure-rundeck-plugin command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p configure-rundeck-plugin
#

# The Plan
# --------

describe "configure-rundeck-plugin"

it_runs_without_arguments() {
    rerun jenkins:deploy
    rerun jenkins:configure-rundeck-plugin
    rerun jenkins:stop
}

it_run_with_restarting_jenkins() {
    rerun jenkins:deploy
    rerun jenkins:configure-rundeck-plugin --restart true
    rerun jenkins:stop
}

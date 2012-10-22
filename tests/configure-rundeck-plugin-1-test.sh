#!/usr/bin/env roundup
#
# This file contains the test plan for the configure-rundeck-plugin command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p configure-rundeck-plugin
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "configure-rundeck-plugin"

it_runs_without_arguments() {
    rerun jenkins:configure-rundeck-plugin
}

#!/usr/bin/env roundup
#
# This file contains the test plan for the install-plugin command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p install-plugin
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "install-plugin"

it_runs_without_arguments() {
    rerun jenkins:install-plugin
}

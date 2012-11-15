#!/usr/bin/env roundup
#
# This file contains the test plan for the configure command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p configure
#

# The Plan
# --------

describe "configure"


# ------------------------------
# Replace this test. 
it_works_without_options() {
    rerun jenkins:configure
}
# ------------------------------


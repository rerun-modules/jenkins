#!/usr/bin/env roundup
#
# This file contains the test plan for the deploy command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p deploy
#

# The Plan
# --------

describe "deploy"


it_can_deploy_jenkins() {
    rerun jenkins:deploy
    rerun jenkins:deploy
    rerun jenkins:stop
}


#!/usr/bin/env roundup
#
# This file contains the test plan for the build-now command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p build-now
#

# The Plan
# --------

describe "build-now"

it_fails_without_arguments() {
    if ! rerun jenkins:build-now
    then
      exit 0
    fi
}

it_can_build_now() {
    rerun jenkins:deploy
    rerun jenkins:delete-job --jobname rerun-hello-world --force true
    rerun jenkins:create-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    rerun jenkins:build-now --jobname rerun-hello-world
    rerun jenkins:delete-job --jobname rerun-hello-world 
    rerun jenkins:stop
}

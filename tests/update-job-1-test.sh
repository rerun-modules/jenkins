#!/usr/bin/env roundup
#
# This file contains the test plan for the update-job command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p update-job
#

# The Plan
# --------

describe "update-job"

it_fails_without_arguments() {
    if ! rerun jenkins:update-job
    then
      exit 0
    fi
}

it_can_update_an_existing_job() {
    rerun jenkins:deploy
    rerun jenkins:delete-job --jobname rerun-hello-world --force true
    rerun jenkins:create-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    rerun jenkins:update-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    rerun jenkins:delete-job --jobname rerun-hello-world
    rerun jenkins:stop
}

it_fails_updating_a_non_existing_job() {
    rerun jenkins:deploy
    rerun jenkins:delete-job --jobname rerun-hello-world --force true

    if ! rerun jenkins:update-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    then
      exit 0
    fi

    rerun jenkins:stop
}

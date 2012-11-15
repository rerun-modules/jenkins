#!/usr/bin/env roundup
#
# This file contains the test plan for the delete-job command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p delete-job
#

# The Plan
# --------

describe "delete-job"

it_fails_without_arguments() {
    if ! rerun jenkins:delete-job
    then
      exit 0
    fi
}

it_fails_deleting_non_existing_job_without_force() {
    rerun jenkins:deploy
    if ! rerun jenkins:delete-job --jobname rerun-hello-world
    then
      exit 0
    fi
    rerun jenkins:stop
}

it_can_delete_non_existing_job_with_force() {
    rerun jenkins:deploy
    rerun jenkins:delete-job --jobname rerun-hello-world --force true
    rerun jenkins:delete-job --jobname rerun-hello-world --force true
    rerun jenkins:stop
}

it_can_delete_existing_job() {
    rerun jenkins:deploy
    rerun jenkins:create-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    rerun jenkins:delete-job --jobname rerun-hello-world --force true
    rerun jenkins:stop
}

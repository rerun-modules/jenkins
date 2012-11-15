#!/usr/bin/env roundup
#
# This file contains the test plan for the create-job command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p create-job
#

# The Plan
# --------

describe "create-job"

it_fails_without_arguments() {
    if ! rerun jenkins:create-job
    then
      exit 0
    fi
}

it_can_create_a_new_job() {
    rerun jenkins:deploy
    rerun jenkins:delete-job --jobname rerun-hello-world --force true
    rerun jenkins:create-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    rerun jenkins:delete-job --jobname rerun-hello-world 
    rerun jenkins:stop
}

it_updates_an_existing_job() {
    rerun jenkins:deploy
    rerun jenkins:delete-job --jobname rerun-hello-world --force true
    rerun jenkins:create-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    rerun jenkins:create-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    rerun jenkins:delete-job --jobname rerun-hello-world 
    rerun jenkins:stop
}

it_fails_creating_an_existing_job() {
    rerun jenkins:deploy
    rerun jenkins:delete-job --jobname rerun-hello-world --force true
    rerun jenkins:create-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml

    if ! rerun jenkins:create-job --jobname rerun-hello-world --file $RERUN_MODULES/jenkins/examples/jobs/rerun-hello-world/config.xml
    then
      :
    fi

    rerun jenkins:delete-job --jobname rerun-hello-world
    rerun jenkins:stop
}

#!/usr/bin/env roundup
#
# This file contains the test plan for the add-maven command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p add-maven
#

# The Plan
# --------

describe "add-maven"

it_runs_without_arguments() {
    rerun jenkins:deploy
    rerun jenkins:add-maven
    rerun jenkins:stop
}

it_runs_with_restart_option() {
    rerun jenkins:deploy
    rerun jenkins:add-maven --restart true
    rerun jenkins:stop
}

it_can_create_a_maven_job() {
    rerun jenkins:deploy
    rerun jenkins:delete-job --jobname rerun-maven-test --force true
    rerun jenkins:create-job --jobname rerun-maven-test --file $RERUN_MODULES/jenkins/examples/jobs/rerun-maven-test/config.xml
    rerun jenkins:delete-job --jobname rerun-maven-test 
    rerun jenkins:stop
}

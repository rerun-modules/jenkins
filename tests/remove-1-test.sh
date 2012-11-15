#!/usr/bin/env roundup
#
# This file contains the test plan for the remove command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p remove
#

# The Plan
# --------

describe "remove"

it_runs_without_arguments() {
    rerun jenkins:install
    rerun jenkins:remove

    test -f /etc/yum.repos.d/jenkins.repo.rpmsave  && { true; } || { false; }
}

it_runs_with_cleanup() {
    rerun jenkins:install
    rerun jenkins:remove --cleanup true
    
    test -e /var/cache/jenkins && { false; } || { true; }
    test -e /var/log/jenkins  && { false; } || { true; }
    #test -e /etc/yum.repos.d/jenkins.repo.rpmsave  && { false; } || { true; }

}

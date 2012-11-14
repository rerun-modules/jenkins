#!/usr/bin/env roundup
#
# This file contains the test plan for the install-plugin command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p install-plugin
#

alias rerun="$RERUN -M $RERUN_MODULES"

# The Plan
# --------

describe "install-plugin"

it_fails_without_arguments() {
    if ! rerun jenkins:install-plugin
    then
      exit 0
    fi
}

it_installs_the_rundeck_plugin() {
    if /sbin/chkconfig jenkins
    then
      rerun jenkins:start
      rerun jenkins:install-plugin --plugin-name rundeck
      rerun jenkins:stop
    fi
}

it_forces_installation_of_the_rundeck_plugin() {
    if /sbin/chkconfig jenkins
    then
      rerun jenkins:start
      rerun jenkins:install-plugin --plugin-name rundeck
      rerun jenkins:install-plugin --plugin-name rundeck --force true
      rerun jenkins:stop
    fi
}

it_installs_the_rundeck_plugin_and_restarts() {
    if /sbin/chkconfig jenkins
    then
      rerun jenkins:start
      rerun jenkins:install-plugin --plugin-name rundeck --restart true
      rerun jenkins:stop
    fi
}

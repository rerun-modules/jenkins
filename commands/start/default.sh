#!/usr/bin/env bash
#
#/ command: jenkins:start: "Start Jenkins"
#
#/ usage: rerun jenkins:start [options]
#
#/ variables: 

# Read module function library.
source $RERUN_MODULES/jenkins/lib/functions.sh || { echo "Failed loading function library" >&2 ; exit 1 ; }

# Parse the command options.
[ -r $RERUN_MODULES/jenkins/commands/start/options.sh ] && {
  source $RERUN_MODULES/jenkins/commands/start/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

sudo service jenkins start

exit $?

# Done

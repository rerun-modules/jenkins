#!/usr/bin/env bash
#
#/ command: jenkins:stop: "Stop Jenkins"
#
#/ usage: rerun jenkins:stop [options]
#
#/ variables: 

# Read module function library.
source $RERUN_MODULES/jenkins/lib/functions.sh || { echo "Failed loading function library" >&2 ; exit 1 ; }

# Parse the command options.
[ -r $RERUN_MODULES/jenkins/commands/stop/options.sh ] && {
  source $RERUN_MODULES/jenkins/commands/stop/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

sudo service jenkins stop

exit $?

# Done

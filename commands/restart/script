#!/usr/bin/env bash
#
#/ command: jenkins:restart: "Restart Jenkins"
#
#/ usage: rerun jenkins:restart [options]
#
#/ variables: 

# Read module function library.
. $RERUN_MODULE_DIR/lib/functions.sh || { 
  echo >&2 "Failed loading function library" ; exit 1 ; 
}

# Parse the command options.
[ -r $RERUN_MODULE_DIR/commands/restart/options.sh ] && {
  . $RERUN_MODULE_DIR/commands/restart/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

# ------------------------------
# Your implementation goes here.
# ------------------------------

sudo service jenkins restart

exit $?

# Done

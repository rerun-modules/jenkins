#!/usr/bin/env bash
#
#/ command: jenkins:get-job: ""Get a job's configuration file using the web API""
#
#/ usage: rerun jenkins:get-job  --file|-f <>  --jobname|-j <> [ --url|-u <http://localhost:8080>] 
#
#/ variables: FILE JOBNAME URL

# Read module function library.
. $RERUN_MODULE_DIR/lib/functions.sh || { 
  echo >&2 "Failed loading function library" ; exit 1 ; 
}

# Parse the command options.
[ -r $RERUN_MODULE_DIR/commands/get-job/options.sh ] && {
  . $RERUN_MODULE_DIR/commands/get-job/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e -o pipefail

# ------------------------------
# Your implementation goes here.
# ------------------------------

curl -fs  "${URL}/job/${JOBNAME}/config.xml" | xmlstarlet fo > ${FILE}

exit $?

# Done

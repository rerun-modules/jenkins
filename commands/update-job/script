#!/usr/bin/env bash
#
#/ command: jenkins:update-job: ""Update an existing job using the web API""
#
#/ usage: rerun jenkins:update-job  --file|-f <>  --jobname|-j <> [ --url|-u <http://localhost:8080/createItem>] 
#
#/ variables: FILE JOBNAME URL

# Read module function library.
. $RERUN_MODULE_DIR/lib/functions.sh || { 
  echo >&2 "Failed loading function library" ; exit 1 ; 
}

# Parse the command options.
[ -r $RERUN_MODULE_DIR/commands/update-job/options.sh ] && {
  . $RERUN_MODULE_DIR/commands/update-job/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

# ------------------------------
# Your implementation goes here.
# ------------------------------

curl --fail -H "Content-Type: text/xml" -s  --data "@${FILE}" "${URL}/job/${JOBNAME}/config.xml"

exit $?

# Done

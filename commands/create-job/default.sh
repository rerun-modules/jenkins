#!/usr/bin/env bash
#
#/ command: jenkins:create-job: ""Create a new job using the web API""
#
#/ usage: rerun jenkins:create-job  --file|-f <>  --jobname|-j <> [ --url|-u <http://localhost:8080/createItem>] 
#
#/ variables: FILE JOBNAME URL

# Read module function library.
. $RERUN_MODULE_DIR/lib/functions.sh || { 
  echo >&2 "Failed loading function library" ; exit 1 ; 
}

# Parse the command options.
[ -r $RERUN_MODULE_DIR/commands/create-job/options.sh ] && {
  . $RERUN_MODULE_DIR/commands/create-job/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

# ------------------------------
# Your implementation goes here.
# ------------------------------

curl --fail -H "Content-Type: text/xml" -s  --data "@${FILE}" "${URL}/createItem?name=${JOBNAME}"

exit $?

# Done

#!/usr/bin/env bash
#
#/ command: jenkins:install-plugin: ""Install plugin from the web""
#
#/ usage: rerun jenkins:install-plugin  --name|-n <> [ --restart|-r <false>] [ --url|-u <http://updates.jenkins-ci.org>] [ --version|-v <latest>] 
#
#/ variables: NAME RESTART URL VERSION

# Read module function library.
. $RERUN_MODULE_DIR/lib/functions.sh || { 
  echo >&2 "Failed loading function library" ; exit 1 ; 
}

# Parse the command options.
[ -r $RERUN_MODULE_DIR/commands/install-plugin/options.sh ] && {
  . $RERUN_MODULE_DIR/commands/install-plugin/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

# ------------------------------
# Your implementation goes here.
# ------------------------------

cd /var/lib/jenkins/plugins

sudo -u jenkins wget -O ${NAME}.hpi ${URL}/download/plugins/${NAME}/${VERSION}/${NAME}.hpi

if [[ "${RESTART}" = "true" ]]
then
  rerun jenkins:restart
fi

exit $?

# Done

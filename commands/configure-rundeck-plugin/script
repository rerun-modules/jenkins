#!/usr/bin/env bash
#
#/ command: jenkins:configure-rundeck-plugin: ""Configure the Jenkins Rundeck plugin""
#
#/ usage: rerun jenkins:configure-rundeck-plugin [ --password|-p <admin>] [ --restart|-r <false>] [ --url|-u <http://localhost:4440>] [ --username|-u <admin>] 
#
#/ variables: PASSWORD RESTART URL USERNAME

# Read module function library.
. $RERUN_MODULE_DIR/lib/functions.sh || { 
  echo >&2 "Failed loading function library" ; exit 1 ; 
}

# Parse the command options.
[ -r $RERUN_MODULE_DIR/commands/configure-rundeck-plugin/options.sh ] && {
  . $RERUN_MODULE_DIR/commands/configure-rundeck-plugin/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

# ------------------------------
# Your implementation goes here.
# ------------------------------

sed -e "s+\${URL}+${URL}+" -e "s+\${USERNAME}+${USERNAME}+" -e "s+\${PASSWORD}+${PASSWORD}+" $RERUN_MODULE_DIR/templates/org.jenkinsci.plugins.rundeck.RundeckNotifier.xml | sudo -u jenkins /bin/sh -c "cat > /var/lib/jenkins/org.jenkinsci.plugins.rundeck.RundeckNotifier.xml"

if [[ "${RESTART}" = "true" ]]
then
  rerun jenkins:restart
fi

exit $?

# Done

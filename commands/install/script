#!/usr/bin/env bash
#
#/ command: jenkins:install: "Install Jenkins on RedHat distributions using Yum"
#
#/ usage: rerun jenkins:install [options]
#
#/ variables: 

# Read module function library.
source $RERUN_MODULE_DIR/lib/functions.sh || { echo "Failed loading function library" >&2 ; exit 1 ; }

# Parse the command options.
[ -r $RERUN_MODULE_DIR/commands/install/options.sh ] && {
  source $RERUN_MODULE_DIR/commands/install/options.sh || exit 2 ;
}

# Exit immediately upon non-zero exit. See [set](http://ss64.com/bash/set.html)
set -e

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum -y install jenkins

exit $?

# Done

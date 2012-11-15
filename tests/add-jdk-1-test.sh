#!/usr/bin/env roundup
#
# This file contains the test plan for the add-jdk command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jenkins -p add-jdk
#

# The Plan
# --------

describe "add-jdk"

it_fails_without_arguments() {
    rerun jenkins:add-jdk  || { true; }
}

it_can_create_default_jdk_home() {

   JENKINS_HOME=/var/lib/jenkins

   XMLSTARLET=$(which xmlstarlet)
   if [ ! -x $XMLSTARLET ]
   then
      rerun_die "cannot find xmlstarlet"
   fi

    rerun jenkins:install
    rerun jenkins:start
    rerun jenkins:reload

    timeout 30 bash -c 'while [ 1 ]; do test -f ${JENKINS_HOME}/config.xml && { break; }; sleep 1; done' 

    rerun jenkins:add-jdk --jenkins-home ${JENKINS_HOME}

    rerun jenkins: add-jdk: --jdk-name java-sdk-new --jdk-home /tmp/myjdk --jenkins-home "${JENKINS_HOME}"
    jdkHome1=$($XMLSTARLET sel -t -m "/hudson/jdks/jdk[name='java-sdk-new']/home" -v . "${JENKINS_HOME}/config.xml")
    if [ "${jdkHome1}" != "/tmp/myjdk" ]
    then
      return 1
    fi

    rerun jenkins: add-jdk: --jdk-name java-sdk-new --jdk-home /tmp/myjdk2 --jenkins-home "${JENKINS_HOME}"
    jdkHome2=$($XMLSTARLET sel -t -m "/hudson/jdks/jdk[name='java-sdk-new']/home" -v . "${JENKINS_HOME}/config.xml")
    if [ "${jdkHome2}" != "/tmp/myjdk2" ]
    then
      return 1
    fi

    rerun jenkins:stop
    rerun jenkins:remove --cleanup true
}

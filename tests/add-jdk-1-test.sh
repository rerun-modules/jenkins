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

before() {
   XMLSTARLET=$(which xmlstarlet)
   if [ ! -x $XMLSTARLET ]
   then
      rerun_die "cannot find xmlstarlet"
   fi

   CONFIG_FILE=$(mktemp)
   cp "${RERUN_MODULES}/jenkins/templates/config.xml" "${CONFIG_FILE}"
}

it_runs_without_arguments() {
    rerun jenkins:add-jdk --config-file ${CONFIG_FILE}
}

it_can_create_new_jdk_home() {
   rerun jenkins: add-jdk: --jdk-name java-sdk-new --jdk-home /tmp/myjdk --config-file "${CONFIG_FILE}"
   jdkHome=$($XMLSTARLET sel -t -m "/hudson/jdks/jdk[name='java-sdk-new']/home" -v . "${CONFIG_FILE}")
   if [ "${jdkHome}" != "/tmp/myjdk" ]
   then
      return 1
   fi
}

it_can_update_jdk_home() {
   rerun jenkins: add-jdk: --jdk-name java-sdk-new --jdk-home /tmp/myjdk2 --config-file "${CONFIG_FILE}"
   jdkHome=$($XMLSTARLET sel -t -m "/hudson/jdks/jdk[name='java-sdk-new']/home" -v . "${CONFIG_FILE}")
   if [ "${jdkHome}" != "/tmp/myjdk2" ]
   then
      return 1
   fi

}

after() {
   echo rm -f "${CONFIG_FILE}"
}

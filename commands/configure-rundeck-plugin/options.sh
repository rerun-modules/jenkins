# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Tue Nov 27 15:53:43 PST 2012
#
#/ usage: jenkins:configure-rundeck-plugin [ --restart|-r <false>] [ --jenkins-home </var/lib/jenkins>] [ --rundeck-username|-r <admin>] [ --rundeck-password|-r <admin>] [ --rundeck-url <http://localhost:4440>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {
    
    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --restart|-r) rerun_option_check $# ; RESTART=$2 ; shift ;;
            --jenkins-home) rerun_option_check $# ; JENKINS_HOME=$2 ; shift ;;
            --rundeck-username|-r) rerun_option_check $# ; RUNDECK_USERNAME=$2 ; shift ;;
            --rundeck-password|-r) rerun_option_check $# ; RUNDECK_PASSWORD=$2 ; shift ;;
            --rundeck-url) rerun_option_check $# ; RUNDECK_URL=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$RESTART" ] && RESTART="false"
    [ -z "$JENKINS_HOME" ] && JENKINS_HOME="/var/lib/jenkins"
    [ -z "$RUNDECK_USERNAME" ] && RUNDECK_USERNAME="admin"
    [ -z "$RUNDECK_PASSWORD" ] && RUNDECK_PASSWORD="admin"
    [ -z "$RUNDECK_URL" ] && RUNDECK_URL="http://localhost:4440"
    # Check required options are set

    # If option variables are declared exportable, export them.
    export JENKINS_HOME
    #
    return 0
}


# Initialize the options variables to null.
RESTART=
JENKINS_HOME=
RUNDECK_USERNAME=
RUNDECK_PASSWORD=
RUNDECK_URL=



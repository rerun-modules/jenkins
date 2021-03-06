# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Tue Nov 27 16:02:57 PST 2012
#
#/ usage: jenkins:start [ --jenkins-log|-j </var/log/jenkins/jenkins.log>] [ --count|-c <60>] [ --interval|-i <1>] 

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
            --jenkins-log|-j) rerun_option_check $# ; JENKINS_LOG=$2 ; shift ;;
            --count|-c) rerun_option_check $# ; COUNT=$2 ; shift ;;
            --interval|-i) rerun_option_check $# ; INTERVAL=$2 ; shift ;;
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
    [ -z "$JENKINS_LOG" ] && JENKINS_LOG="/var/log/jenkins/jenkins.log"
    [ -z "$COUNT" ] && COUNT="60"
    [ -z "$INTERVAL" ] && INTERVAL="1"
    # Check required options are set

    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
JENKINS_LOG=
COUNT=
INTERVAL=



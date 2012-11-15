# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Thu Nov 15 09:30:53 PST 2012
#
#/ usage: jenkins:get-job [ --file <>]  --jobname <> [ --jenkins-url <http://localhost:8080>] [ --username <>] [ --password <>] 

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
            --file) rerun_option_check $# ; FILE=$2 ; shift ;;
            --jobname) rerun_option_check $# ; JOBNAME=$2 ; shift ;;
            --jenkins-url) rerun_option_check $# ; JENKINS_URL=$2 ; shift ;;
            --username) rerun_option_check $# ; USERNAME=$2 ; shift ;;
            --password) rerun_option_check $# ; PASSWORD=$2 ; shift ;;
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
    [ -z "$JENKINS_URL" ] && JENKINS_URL="http://localhost:8080"
    # Check required options are set
    [ -z "$JOBNAME" ] && { echo >&2 "missing required option: --jobname" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export USERNAME
    export PASSWORD
    #
    return 0
}


# Initialize the options variables to null.
FILE=
JOBNAME=
JENKINS_URL=
USERNAME=
PASSWORD=



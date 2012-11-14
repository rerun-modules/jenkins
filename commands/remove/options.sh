# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Tue Nov 13 12:02:23 PST 2012
#
#/ usage: jenkins:remove  --cleanup|-c <false> 

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
            --cleanup|-c) rerun_option_check $# ; CLEANUP=$2 ; shift ;;
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
    [ -z "$CLEANUP" ] && CLEANUP="false"
    # Check required options are set
    [ -z "$CLEANUP" ] && { echo >&2 "missing required option: --cleanup" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export CLEANUP
    #
    return 0
}


# Initialize the options variables to null.
CLEANUP=


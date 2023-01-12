# shellcheck shell=bash
cite about-plugin
about-plugin 'simplify using jq with a pager'

function jql() {
	if (($# > 1)); then
		PATTERN=$1
		shift
		FILE=$*
	else
		FILE=$1
		PATTERN='.'
	fi

	PAGER=${PAGER:-less}

	# shellcheck disable=SC2086
	jq $PATTERN $FILE | $PAGER
}

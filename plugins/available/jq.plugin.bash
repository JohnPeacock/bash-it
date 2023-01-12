# shellcheck shell=bash
cite about-plugin
about-plugin 'simplify using jq with a pager'

function jql() {
	if (($# > 1)); then
		PATTERN=$1
		shift
		FILE=$*
	else
		FILE=$PATTERN
		PATTERN='.'
	fi

	PAGER=${PAGER:-less}

	jq $PATTERN "$FILE" | $PAGER
}

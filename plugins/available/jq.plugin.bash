# shellcheck shell=bash
cite about-plugin
about-plugin 'simplify using jq with a pager'

function jql() {
	PATTERN=$1
	shift
	FILE=$1

	if [[ -z $FILE ]]; then
		FILE="$PATTERN"
		PATTERN='.'
	fi

	jq $PATTERN "$FILE" | less
}

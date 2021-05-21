#!/bin/sh

# Run from the project root as:
#
#   sh ./scripts/bench.sh

set -e -u

for f in *.yml
do
	{ time -p semgrep -q -f "$f" . 2>&1; }\
		| grep -F -e 'real'\
		| awk -v f="$f" '{ printf("%s, %.3f\n", f, $2); }'
done

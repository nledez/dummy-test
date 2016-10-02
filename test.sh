#!/bin/bash
DELAY=1
EXIT_STATUS=0

if [ -f status.txt ]; then
	EXIT_STATUS=$(cat status.txt)
fi

if [ -f delay.txt ]; then
	DELAY=$(cat delay.txt)
fi

echo "sleep $DELAY"
sleep $DELAY

echo "exit $EXIT_STATUS"
exit $EXIT_STATUS

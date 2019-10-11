#!/bin/sh

: "${PORT:?PORT needs to be set}"
: "${BACKENDADDR:?BACKENDADDR needs to be set}"
: "${BACKENDPORT:?BACKENDPORT needs to be set}"
:
# : "${VCL:?VCL needs to be set}"

#exec varnishd -a 0.0.0.0:$PORT -F -f $VCL
if [ x$VCL != "x" ] ; then
	exec varnishd -a 0.0.0.0:${PORT} -b $BACKENDADDR:$BACKENDPORT -F -f $VCL
else
	exec varnishd -a 0.0.0.0:${PORT} -b $BACKENDADDR:$BACKENDPORT -F
fi


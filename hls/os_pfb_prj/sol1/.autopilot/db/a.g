#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jpsmith/git-repos/oversampled-pfb/hls/os_pfb_prj/sol1/.autopilot/db/a.g.bc ${1+"$@"}

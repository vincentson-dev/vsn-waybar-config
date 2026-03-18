#!/usr/bin/env bash
printf "%s\n%s" "$(TZ='America/New_York' date +'%H')" "$(TZ='America/New_York' date +'%M')"

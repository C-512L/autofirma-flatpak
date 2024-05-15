#!/bin/bash
set -e
# HACK: Autofirma hardcodes the firefox data location
ln -sf ~/.var/app/org.mozilla.firefox/.mozilla ~/.mozilla
autofirma "$@"

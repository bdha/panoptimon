# Description

Reports the number of vulnerable packages for Debian and SmartOS (pkgsrc.)

## Debian

Runs `apt-get update -qq` on every run. Set the interval appropriately for your environment.

## SmartOS

Will run on anything that uses pkgsrc, installed to `/opt/local`, but only SmartOS is tested.

Ensures the package database is less than a day old.

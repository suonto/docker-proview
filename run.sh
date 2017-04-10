#!/bin/bash

export DISPLAY=:99.0
xterm -title "Proview Demo Console" -e 'export pwra_db=/usr/pwrp/adm/db;source $pwra_db/pwr_setup.sh;source $pwra_db/pwra_env.sh set project pwrdemo55;export PWR_BUS_ID=999;pwr_rtmon'

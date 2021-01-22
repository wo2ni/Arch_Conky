#!/bin/bash
/usr/bin/conky -c ~/.conky/system-monitoring/run_wlan0.conkyrc > /dev/null 2>&1 &
/usr/bin/conky -c ~/.conky/system-monitoring/cpu.conkyrc > /dev/null 2>&1 &
/usr/bin/conky -c ~/.conky/parrot-monitoring/run.conkyrc > /dev/null 2>&1 &

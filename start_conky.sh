#!/bin/bash
/usr/bin/conky -c ~/.conky/system-monitoring/run_wlan0.conkyrc &
/usr/bin/conky -c ~/.conky/system-monitoring/cpu.conkyrc &
/usr/bin/conky -c ~/.conky/parrot-monitoring/run.conkyrc &

#!/bin/bash

echo "Disabling Touchpad."

RES=$(xinput --list | grep Touchpad | awk '{print $6}' | tr "id=" " ")

echo "xinput --set-prop $RES 148 0"
xinput --set-prop $RES 148 0


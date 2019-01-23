#!/bin/bash

RES=$(xinput --list | grep Touchpad | awk '{print $6}' | tr "id=" " ")

echo "Touchpad is device: $RES"

echo "xinput --list-props $RES | grep \"Device Enabled\""
xinput --list-props $RES | grep "Device Enabled"


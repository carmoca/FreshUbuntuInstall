#!/bin/bash

echo "Enabling Touchpad."

RES=$(xinput --list | grep Touchpad | awk '{print $6}' | tr "id=" " ")

echo "xinput --set-prop $RES 148 1"
xinput --set-prop $RES 148 1


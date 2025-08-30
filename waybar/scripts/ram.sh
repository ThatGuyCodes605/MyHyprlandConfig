#!/bin/bash
RAM=$(free -h | awk '/^Mem/ {print $3 "/" $2}')
echo "RAM: $RAM"

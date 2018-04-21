#!/bin/bash
pwd
echo 203 > /sys/class/gpio/export || echo "Exported"
echo out > /sys/class/gpio/gpio203/direction
echo 0 > /sys/class/gpio/gpio203/value
echo 1 > /sys/class/gpio/gpio203/value
sleep 2
echo 0 > /sys/class/gpio/gpio203/value
cd /opt/ulti-lora-backplane/packet_forwarder/mp_pkt_fwd
screen A -m -d -S pktFwd ./mp_pkt_fwd

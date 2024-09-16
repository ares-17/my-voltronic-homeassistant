#!/bin/bash

while true; do
    # Avvia lo script di entrypoint
    /opt/inverter-mqtt/entrypoint.sh &
    PID=$!

    # Attendi un'ora
    sleep 3600

    # Termina lo script di entrypoint
    kill $PID
done

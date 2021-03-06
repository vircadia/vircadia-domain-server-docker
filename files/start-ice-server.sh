#! /bin/bash

export HIFI_METAVERSE_URL=${METAVERSE_URL:-https://metaverse.vircadia.com/live}

LOGDIR=/home/cadia/logs
mkdir -p "${LOGDIR}"

LOGDATE=$(date --utc "+%Y%m%d.%H%M")
LOGFILE=${LOGDIR}/ice-server-${LOGDATE}

RUNDIR=/opt/vircadia/install_master

cd "${RUNDIR}"

./run_ice-server --url ${HIFI_METAVERSE_URL} >> "${LOGFILE}.log" 2>&1

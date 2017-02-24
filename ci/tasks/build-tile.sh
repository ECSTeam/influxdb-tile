#!/bin/sh

set -x

BASEDIR=`pwd`

NOZZLE_DIR=${BASEDIR}/nozzle-release
TILE_SOURCE_DIR=${BASEDIR}/tile-source
VERSION_DIR=${BASEDIR}/version

OUTPUT_DIR=${BASEDIR}/build-output

CURRENT_VERSION=`cat ${VERSION_DIR}/version`

cp ${NOZZLE_DIR}/influxdb-nozzle.jar ${TILE_SOURCE_DIR}/resources

cd ${TILE_SOURCE_DIR}
tile build ${CURRENT_VERSION}

cp product/*.pivotal ${OUTPUT_DIR}

#!/bin/bash

scriptdir=$(cd $(dirname $0) && pwd)
customresourcedir=${scriptdir}/../../../custom-resource-handlers
packagedir=${scriptdir}/..

cd ${packagedir}

mkdir -p custom-resource-handlers/aws-s3/auto-delete-objects-handler
mkdir -p custom-resource-handlers/aws-ecr/auto-delete-images-handler

cp ${customresourcedir}/lib/aws-s3/auto-delete-objects-handler/index.js ${packagedir}/custom-resource-handlers/aws-s3/auto-delete-objects-handler
cp ${customresourcedir}/lib/aws-ecr/auto-delete-images-handler/index.js ${packagedir}/custom-resource-handlers/aws-ecr/auto-delete-images-handler

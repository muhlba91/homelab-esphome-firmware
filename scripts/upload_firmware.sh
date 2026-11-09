#!/bin/bash

S3_ASSETS_BUCKET="${1}"

s3cmd --access_key="${SCW_ACCESS_KEY}" --secret_key="${SCW_SECRET_KEY}" --host="https://s3.${SCW_DEFAULT_REGION}.scw.cloud" --host-bucket="https://s3.${SCW_DEFAULT_REGION}.scw.cloud" sync firmware/ s3://"${S3_ASSETS_BUCKET}"/

#!/bin/bash

S3_ASSETS_BUCKET="${1}"

s3cmd --access_key=${SCW_ACCESS_KEY} --secret_key="${SCW_SECRET_KEY}" --host="https://storage.googleapis.com" --host-bucket="https://storage.googleapis.com" sync firmware/ s3://${S3_ASSETS_BUCKET}/

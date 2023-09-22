#!/bin/sh

set -e

mkdir -p ~/.aws
touch ~/.aws/credentials

echo "[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}" > ~/.aws/credentials

aws --region ${AWS_REGION} s3 cp ${FILE} s3://${AWS_S3_BUCKET} --endpoint-url ${AWS_S3_ENDPOINT}

rm -rf ~/.aws

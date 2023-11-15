#!/bin/bash
awslocal dynamodb create-table \
   --table-name dynamo_test_tbl \
   --attribute-definitions AttributeName=id,AttributeType=S \
   --key-schema AttributeName=id,KeyType=HASH \
   --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
echo "dynamo_test_tbl is created"

awslocal s3api create-bucket --bucket my-bucket
echo "my-bucket is created"
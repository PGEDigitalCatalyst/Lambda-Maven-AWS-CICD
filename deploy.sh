#!/bin/bash
cd aws-app
mvn package > /dev/null
aws s3 cp target/lambda-java-example-1.0-SNAPSHOT.jar s3://mehs-lambda-deploy
aws lambda update-function-code --function-name arn:aws:lambda:us-east-1:912436859212:function:mehs-java-lambda-test --s3-bucket mehs-lambda-deploy --s3-key lambda-java-example-1.0-SNAPSHOT.jar --publish

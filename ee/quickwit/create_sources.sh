docker run -v /etc/hosts:/etc/hosts:ro -v /etc/hosts:/etc/hosts:ro -v $(pwd)/s3-config.yaml:/quickwit/s3-config.yaml -v $(pwd)/source-fetch.yaml:/quickwit/source-fetch.yaml -e AWS_ACCESS_KEY_ID=$aws_access_key_id -e AWS_SECRET_ACCESS_KEY=$aws_secret_access_key -e AWS_DEFAULT_REGION=$aws_region -e AWS_REGION=$aws_region quickwit/quickwit source create --index fetchevent --source-config source-fetch.yaml --config s3-config.yaml
docker run -v /etc/hosts:/etc/hosts:ro -v /etc/hosts:/etc/hosts:ro -v $(pwd)/s3-config.yaml:/quickwit/s3-config.yaml -v $(pwd)/source-graphql.yaml:/quickwit/source-graphql.yaml -e AWS_ACCESS_KEY_ID=$aws_access_key_id -e AWS_SECRET_ACCESS_KEY=$aws_secret_access_key -e AWS_DEFAULT_REGION=$aws_region -e AWS_REGION=$aws_region quickwit/quickwit source create --index graphql --source-config source-graphql.yaml --config s3-config.yaml
docker run -v /etc/hosts:/etc/hosts:ro -v /etc/hosts:/etc/hosts:ro -v $(pwd)/s3-config.yaml:/quickwit/s3-config.yaml -v $(pwd)/source-pageevent.yaml:/quickwit/source-pageevent.yaml -e AWS_ACCESS_KEY_ID=$aws_access_key_id -e AWS_SECRET_ACCESS_KEY=$aws_secret_access_key -e AWS_DEFAULT_REGION=$aws_region -e AWS_REGION=$aws_region quickwit/quickwit source create --index pageevent --source-config source-pageevent.yaml --config s3-config.yaml
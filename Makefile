export AWS_DEFAULT_REGION=us-east-1

deploy-code-test:
	WEBSITE_BUCKET=$$(aws cloudformation describe-stacks \
		--stack-name rdok-test-launch-padder \
		--query 'Stacks[0].Outputs[?OutputKey==`WebsiteBucket`].OutputValue' \
		--output text); \
	aws s3 sync ./HTML5 s3://$${WEBSITE_BUCKET} \
		--delete \
		--exclude "*" \
		--include "*.js" \
		--include "*.wasm" \
		--include "*.data" \
		--include "*.html" \
		--include "Utility.js" \
		--include ".htaccess"

deploy-code-prod:
	WEBSITE_BUCKET=$$(aws cloudformation describe-stacks \
		--stack-name rdok-prod-launch-padder \
		--query 'Stacks[0].Outputs[?OutputKey==`WebsiteBucket`].OutputValue' \
		--output text); \
	aws s3 sync ./HTML5 s3://$${WEBSITE_BUCKET} \
		--delete \
		--exclude "*" \
		--include "*.js" \
		--include "*.wasm" \
		--include "*.data" \
		--include "*.html" \
		--include "Utility.js" \
		--include ".htaccess"

deploy-infrastructure-test:
	sam deploy \
		--template-file website-infrastructure.yml \
		--stack-name rdok-test-launch-padder \
		--s3-bucket "rdokos-test-cicd-us-east-1" \
		--s3-prefix "ue4-blueprint-quickstart-test" \
		--region "us-east-1" \
		--confirm-changeset \
		--capabilities CAPABILITY_IAM \
		--parameter-overrides \
			DomainName=launch-padder-test.rdok.co.uk \
			Route53HostedZoneId=ZSY7GT2NEDPN0

deploy-infrastructure-prod:
	sam deploy \
		--template-file website-infrastructure.yml \
		--stack-name rdok-prod-launch-padder \
		--s3-bucket "rdokos-test-cicd-us-east-1" \
		--s3-prefix "ue4-blueprint-quickstart-prod" \
		--region "us-east-1" \
		--confirm-changeset \
		--capabilities CAPABILITY_IAM \
		--parameter-overrides \
			DomainName=launch-padder.rdok.co.uk \
			Route53HostedZoneId=ZSY7GT2NEDPN0

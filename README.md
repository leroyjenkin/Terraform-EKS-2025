## Deploy EKS
01-ekscluster-terraform-manifests/

- Change the AWS region if needed
- Add your private key pem file to private-key directory (devops.pem)
- Make sure to have the S3 backend state folder created and DynamoDB file locking table

## Deploy the EBS CSI driver 
02-ebs-addon-terraform-manifests/

- Change the AWS region if needed
- Make sure to have the S3 backend state folder created


## Deploy the LB controller
03-lbc-install-terraform-manifests

- Change the AWS region if needed
- Make sure to have the S3 backend state folder created


## Deploy the application and the ingress
04-ingress-cpr-terraform-manifests

- Change the AWS region if needed
- Make sure to have the S3 backend state folder created


cleanup after destroy
rm -rf .terraform*

# tf build

tf build uses github action to trigger infrastructure provisioning using terraform and saves the terraform state into 
aws s3.

### Getting ready
**First** you need to determine which branch you want to use for provisioning. Currently it is set for "deploy" branch.
You can change it in `.github/workflows/main.yml` file's line 6.

**Second**, we would need to login to aws using their access id and access secret. You should set your secrets in github/secrets under "Action secrets".

Secrets should be named `AWS_ACCESS_ID` and `AWS_ACCESS_SECRET`. 

**Third**, you might want to change the aws s3 bucket where the state file will be saved.

**Fourth and Final**, you can use any terraform config, just put it under `aws/`, currently we are creating a vpc in `aws/main.tf` and which is just only for demo purpose. 

You can add your tf config inside main, use variables and do everything else that you would normally do with terraform.

### Run
just do a git push to the branch you've selected to run the github action on.

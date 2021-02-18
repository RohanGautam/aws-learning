# AWS CLI

The aws cli needs to be set up properly.
If working under a role, go to that Role's IAM and create access keys for yourself.
Fill in `~/.aws/config`

```
[profile default]
region = ap-southeast-1

[profile your-profile]
role_arn = <role name>
source_profile = default
region = ap-southeast-1
```

`~/.aws/credentials`

```
[default]
aws_access_key_id = <your id>
aws_secret_access_key = <your key>

[your-profile]
aws_access_key_id = <your id>
aws_secret_access_key = <your key>
```

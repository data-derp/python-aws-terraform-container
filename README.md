# Python AWS Terraform Container

## Quickstart
Pull container: `docker pull ghcr.io/data-derp/python-aws-terraform-container:master`

Run it:
```bash
docker run -it ghcr.io/data-derp/python-aws-terraform-container:master bash
```

You can also mount your project directory:
```bash
docker run -it -v $(pwd):/app ghcr.io/data-derp/python-aws-terraform-container:master bash
```

From the container:
1. [Set up an active AWS CLI Session](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)
2. Run an aws command to test the connection:
```bash
aws s3 ls
```

## Local Development:
Build `data-derp/python-aws-terraform-container` container: `./go build` 
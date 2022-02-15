FROM python:3.7

# Install OpenJDK 8
RUN apt update
RUN apt-get install -y software-properties-common

# Install libraries
RUN python -m pip install pip==21.0.1
COPY requirements.txt .
RUN pip install -r requirements.txt

# Install Terraform CLI
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && apt-get install terraform

# Install Bootstrap deps
RUN apt-get install -y jq
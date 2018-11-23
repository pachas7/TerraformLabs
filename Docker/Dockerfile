FROM alpine

ENV PATH=$PATH:/opt/

RUN apk update && \
    apk add vim wget unzip git && \
    wget wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip -P /opt/ ; \
    unzip /opt/terraform*.zip -d /opt/ && \
    git clone https://github.com/pachas7/TerraformLabs.git /opt/terraformlabs
    
COPY ./variables.tfvars /opt/terraformlabs/variables.tfvars

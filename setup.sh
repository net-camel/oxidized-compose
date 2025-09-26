#! /bin/bash
{
    echo "Generating key files..."
    mkdir -p ./keys
    ssh-keygen -t rsa -b 4096 -C "alex@netcamel.com" \
    -f ./keys/id_rsa -q -N "" && \
    echo -e "Key pair created successfully (./keys/id_rsa ./keys/id_rsa.pub)\n" || \
    echo -e "An error occured while creating the key pair\n"
}
{
    docker network create -d bridge frontend > /dev/null &&
    echo -e "Docker 'frontend' network created successfully\n"
}
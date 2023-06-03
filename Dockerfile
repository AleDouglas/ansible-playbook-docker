FROM python:3.9-slim

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible, Ansible Core, ncclient, jxmlease, xmltodict e ansible-pylibssh
RUN pip install ansible ansible-core ncclient jxmlease xmltodict ansible-pylibssh

# Copy files
COPY playbook.yml /ansible/playbook.yml
COPY hosts.yml /ansible/hosts.yml
COPY ansible.cfg /ansible/ansible.cfg

# Set working directory
WORKDIR /ansible

# Set entrypoint
ENTRYPOINT ["ansible-playbook"]

## About

Installation of ansible and instructions on how to run on Docker.
Tests performed on a Huawei device.

## Steps

1. Creating container

```
docker build -t ansible-image .
```

2. Run ansible-image

```
docker run ansible-image playbook.yml -i hosts.yml
```

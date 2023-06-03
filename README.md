<h1 align="center">About</h1>

<div align="center">
  
[![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)]()
[![Cisco](https://img.shields.io/badge/cisco-%23049fd9.svg?style=for-the-badge&logo=cisco&logoColor=black)]()
[![Huawei](https://img.shields.io/badge/Huawei-%23FF0000.svg?style=for-the-badge&logo=huawei&logoColor=white)]()
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)]()
  
</div>
<p align="center">
    <b>Ansible Project</b><br><br>
    <i>
        Automation of commands for Huawei and Cisco devices.<br>
        The purpose of the project is  use Docker to facilitate the implementation of libraries and use Ansible.<br>
    </i><br>
</p>

<h1 align="center">Steps</h1>

1. Build Docker Image

The first step will use the **Dockerfile** to create our container.

```
docker build -t ansible-image .
```

2. Run ansible-image

```
docker run ansible-image playbook.yml -i hosts.yml
```


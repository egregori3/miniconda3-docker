# miniconda3-docker
Dockerfile for Miniconda3 based Python development

## Based of off - https://hub.docker.com/r/continuumio/miniconda3/~/dockerfile/

## A Dockerfile containing miniconda3 for Python development

## Usage

Copy Dockerfile into your Python project directory.
Your project directory will appear in docker image /app directory.
Makesure Dockerfile is in same directtory as requirements.txt.

```
docker build -t <env name> .
docker run -it <env name>
docker run -it -v "$(pwd)"/:/app <env name>

eric@ubuntu:~/Desktop/djangoagent$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
djangoagent         latest              29731fc1ef0a        22 hours ago        552MB
debian              latest              3bbb526d2608        6 weeks ago         101MB
hello-world         latest              2cb0d9787c4d        7 weeks ago         1.85kB
```

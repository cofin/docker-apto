# APTO - Dockerized

The Dockerfile and attached compose file, allow for easy installation & management of accepture performance tooklkit for Oracle.

Before starting. Please download the following files:

- ORACLE_PERF_TUNING_TOOLKIT-v4.0_Build_461.jar
- ojdbc8.jar

## Prepare to build docker files

- clone the git repository to a local.
- copy ojdbc8.jar & the ORAc
- copy ORACLE_PERF_TUNING_TOOLKIT-v4.0_Build_461.jar to the vendor folder

## configure environment

In the root of the project folder, there is a env.example. Copy this file to ~/.env

## build

Before you start the application, you need to build the custom docker images necessary.

```shell
docker-compose build
```

## start apto

To start the compose project daemonized, use the "-d" flag. Without it, docker-compose runs in the foreground and a ctrl+c will exit your stack.

```shell
docker-compose up -d
```

## start at boot

TBD: systemd control file
TBD: init.d script

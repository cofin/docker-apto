# Oracle Performance Tuning Toolkit (APTO)

The Dockerfile and attached compose file, allow for easy installation & management of Accenture performance tooklkit for Oracle.

Before starting. Please download the following files:

ORACLE_PERF_TUNING_TOOLKIT-v4.0_Build_461.jar

- Please download a 4.0 build of Oracle Performance Tuning Toolkit

OJDBC

- At the time of writing, APTO was built on an OpenJDK8 Docker image. Please download ojdbc8.jar for Oracle connectivity.

## Prepare to build docker files

Clone the repository to your local filesystem.

```shell
AMAC02XF2HLJG5M:apto cody.fincher$ git clone https://github.com/cofin/docker-apto.git apto
Cloning into 'apto'...
remote: Enumerating objects: 31, done.
remote: Counting objects: 100% (31/31), done.
remote: Compressing objects: 100% (19/19), done.
remote: Total 31 (delta 10), reused 27 (delta 9), pack-reused 0
Unpacking objects: 100% (31/31), done.
AMAC02XF2HLJG5M:apto cody.fincher$ cd apto
```

Move the Oracle databse library and the application jar into the vendor folder.

```shell
cp ~/Downloads/ojdbc8.jar ./vendor/
cp ~/Downloads/ORACLE_PERF_TUNING_TOOLKIT-v4*.jar ./vendor/
```

## Application Configuration

In the root of the project folder, there is a env.example. This file contains the database defaults used to configure the APTO postgresql database. By default, the database & user created are named "apto". The default password is "welcome1".

```shell
cp ~/env.example ~/.env
```

## Build the apto container

Before you start the application, you need to build the custom docker images necessary.

```shell
docker-compose build
```

## start apto

To start the compose project daemonized, use the "-d" flag. Without it, docker-compose runs in the foreground and a ctrl+c will exit your stack.

```shell
docker-compose up -d
```

## Starting apto at boot

---

TBD: systemd control file
TBD: init.d script

---

## Advanced Configurations

---

TBD: Implement encryption with letsencrypt?
TBD: Additional appication configuration parameters?

---

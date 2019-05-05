# prepare to build image

- copy ojdbc.jar to the vendor folderr
- copy ORACLE_PERF_TUNING_TOOLKIT-v4.0_Build_461.jar to the vendor folder

# configure environment

- copy env.example to .env
- edit files as necessary

# build

docker-compose build

# start apto

docker-compose up -d

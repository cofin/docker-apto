FROM openjdk:8
RUN mkdir -p /usr/src/app
EXPOSE 8070
WORKDIR /usr/src/app

RUN apt-get -y update && apt-get -y install postgresql-client

COPY ./src/launch-apto.sh ./launch-apto.sh
RUN chmod +x ./launch-apto.sh
COPY ./vendor/ojdbc8.jar ./ojdbc8.jar
COPY ./vendor/ORACLE_PERF_TUNING_TOOLKIT-v4.0_Build_461.jar ./ORACLE_PERF_TUNING_TOOLKIT.jar
CMD ["./launch-apto.sh"]
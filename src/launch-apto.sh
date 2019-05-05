#!/bin/sh
until PGPASSWORD=$POSTGRES_PASSWORD psql -h ${POSTGRES_HOST} -U ${POSTGRES_USER} -c '\q'; do
  >&2 echo "Database is currently unavailable.  Waiting for postgres service."
  sleep 10
done
>&2 echo "Database is now available.  Starting application..."
java -Dserver_port=8070 \
     -Dgrails.env="dev" \
     -classpath "/usr/src/app/ojdbc8.jar" \
     -Denvironments.development.dataSource.url="jdbc:postgresql://${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}?autoReconnect=true" \
     -jar "/usr/src/app/ORACLE_PERF_TUNING_TOOLKIT.jar"
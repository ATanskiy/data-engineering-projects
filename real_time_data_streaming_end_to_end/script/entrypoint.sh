#!/bin/bash
# entrypoint.sh

airflow db upgrade
airflow users create \
    --username admin \
    --password admin \
    --firstname Kapara \
    --lastname Analyst \
    --role Admin \
    --email kapara@airflow.local
exec airflow webserver
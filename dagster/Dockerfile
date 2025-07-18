FROM python:3.10-slim

RUN pip install \
    dagster==1.11.2 \
    dagster-graphql==1.11.2 \
    dagster-webserver==1.11.2\
    dagster-postgres==0.27.2 \
    dagster-docker==0.27.2 \
    dagster-spark==0.27.2 \
    dagster-dbt==0.27.2 \
    dagster-snowflake==0.27.2 \
    dagster-deltalake==0.27.2 \
    dagster-prometheus==0.27.2

RUN apt-get update && apt-get install -y procps

ENV DAGSTER_HOME=/opt/dagster/dagster_home/

RUN mkdir -p $DAGSTER_HOME

WORKDIR $DAGSTER_HOME
FROM python:3.10-slim

RUN pip install \
    dagster==1.9.1 \
    dagster-graphql==1.9.1 \
    dagster-webserver==1.9.1\
    dagster-postgres==0.25.1 \
    dagster-docker==0.25.1 \
    dagster-shell==0.25.1 \
    dagster-spark==0.25.1 \
    dagster-dbt==0.25.1 \
    dagster-snowflake==0.25.1 \
    dagster-deltalake==0.25.1 \
    dagster-prometheus==0.25.1

ENV DAGSTER_HOME=/opt/dagster/dagster_home/

RUN mkdir -p $DAGSTER_HOME

WORKDIR $DAGSTER_HOME
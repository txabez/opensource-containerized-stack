FROM python:3.10-slim

RUN pip install \
    dagster==1.9.4 \
    dagster-graphql==1.9.4 \
    dagster-webserver==1.9.4\
    dagster-postgres==0.25.4 \
    dagster-docker==0.25.4 \
    dagster-shell==0.25.4 \
    dagster-spark==0.25.4 \
    dagster-dbt==0.25.4 \
    dagster-snowflake==0.25.4 \
    dagster-deltalake==0.25.4 \
    dagster-prometheus==0.25.4

ENV DAGSTER_HOME=/opt/dagster/dagster_home/

RUN mkdir -p $DAGSTER_HOME

WORKDIR $DAGSTER_HOME
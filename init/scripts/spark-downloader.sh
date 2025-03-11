#!/bin/bash

export SPARK_VERSION=3.5.3
export HADOOP_VERSION=hadoop3
export INSTALL_ROOT=/downloads

if [ ! -d "${INSTALL_ROOT}/spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}" ]
then
	echo "Installing Spark 'spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}'"
  mkdir -p "${INSTALL_ROOT}" && cd "${INSTALL_ROOT}"
  mkdir -p "${INSTALL_ROOT}" && cd "${INSTALL_ROOT}"
  if [ ! -e "spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}.tgz" ]
  then
    wget --show-progress https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}.tgz
  fi
  tar -xzf spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}.tgz
fi
echo "Spark 'spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}' already installed"

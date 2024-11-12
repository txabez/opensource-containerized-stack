export SPARK_VERSION=3.5.3
export HADOOP_VERSION=hadoop3
export INSTALL_ROOT=/downloads

cp /scripts/spark-defaults.conf ${INSTALL_ROOT}/spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}/conf

if [ ! -d "${INSTALL_ROOT}/jars/bundle-2.29.9.jar" ];
  wget -P ${INSTALL_ROOT}/jars https://repo1.maven.org/maven2/software/amazon/awssdk/bundle/2.29.9/bundle-2.29.9.jar
fi
if [ ! -d "${INSTALL_ROOT}/jars/delta-spark_2.12-3.2.1.jar" ];
  wget -P ${INSTALL_ROOT}/jars https://repo1.maven.org/maven2/io/delta/delta-spark_2.12/3.2.1/delta-spark_2.12-3.2.1.jar
fi
if [ ! -d "${INSTALL_ROOT}/jars/delta-storage-3.2.1.jar" ];
  wget -P ${INSTALL_ROOT}/jars https://repo1.maven.org/maven2/io/delta/delta-storage/3.2.1/delta-storage-3.2.1.jar
fi
if [ ! -d "${INSTALL_ROOT}/jars/hadoop-aws-3.4.1.jar" ];
  wget -P ${INSTALL_ROOT}/jars https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.4.1/hadoop-aws-3.4.1.jar
fi
if [ ! -d "${INSTALL_ROOT}/jars/hadoop-common-3.4.1.jar" ];
  wget -P ${INSTALL_ROOT}/jars https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-common/3.4.1/hadoop-common-3.4.1.jar
fi
if [ ! -d "${INSTALL_ROOT}/jars/hadoop-hdfs-3.4.1.jar" ];
  wget -P ${INSTALL_ROOT}/jars https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-hdfs/3.4.1/hadoop-hdfs-3.4.1.jar
fi
if [ ! -d "${INSTALL_ROOT}/jars/openlineage-spark_2.12-1.24.2.jar" ];
  wget -P ${INSTALL_ROOT}/jars https://repo1.maven.org/maven2/io/openlineage/openlineage-spark_2.12/1.24.2/openlineage-spark_2.12-1.24.2.jar
fi
if [ ! -d "${INSTALL_ROOT}/jars/hadoop-aws-3.4.1.jar" ];
  wget -P ${INSTALL_ROOT}/jars https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.4.1/hadoop-aws-3.4.1.jar
fi

cp ${INSTALL_ROOT}/jars/*.jar ${INSTALL_ROOT}/spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}/jars

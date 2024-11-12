from dagster import OpExecutionContext, Config, RunConfig, job, op, repository, schedule
from dagster_spark import construct_spark_shell_command
from dagster_shell import execute_shell_command


class SparkSubmitConfig(Config):
    class_name: str
    jar_path: str
    arguments: str
    cluster_mode: bool


default_config = RunConfig(
    ops={"spark_submit": SparkSubmitConfig(class_name="", jar_path="", arguments="", cluster_mode=False)}
)


@op
def spark_submit(context: OpExecutionContext, config: SparkSubmitConfig):
    mode = ""
    if config.cluster_mode:
        mode = "--deploy-mode cluster --master spark://spark-master:7077"
    command = f"/opt/spark/bin/spark-submit --driver-java-options '--add-exports java.base/sun.nio.ch=ALL-UNNAMED -Dderby.system.home=/metastore -Dlog4j2.configurationFile=file:///workspace/log4j2.properties' {mode} --class {config.class_name} {config.jar_path} {config.arguments}"
    execute_shell_command(command, output_logging="STREAM", log=context.log)


@job(config=default_config)
def spark_submit_job():
    spark_submit()

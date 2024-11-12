apt-get update && apt-get install -y wget curl

# bash ./java11-downloader.sh
bash ./java17-downloader.sh

bash ./spark-downloader.sh
bash ./configure-spark.sh

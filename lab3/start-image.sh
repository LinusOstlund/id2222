docker run -p 10000:8888 --name pyspark-notebook-1 --mount type=bind,source="$(pwd)"/data,target=/data jupyter/pyspark-notebook:latest

#!/bin/bash

# test the hadoop cluster by running wordcount

# Change directory to MatrixMultiply
cd MatrixMultiply/

# create input directory on HDFS
hadoop fs -mkdir -p input

# put input files to HDFS
hdfs dfs -put ./input/* input

# build java application
mvn clean package

# run matrix multiplication
hadoop jar target/MatrixMultiply.jar  com.lendap.hadoop.MatrixMultiply input output

# print the input files
echo -e "\ninput matrix M:"
hdfs dfs -cat input/M

echo -e "\ninput matrix N:"
hdfs dfs -cat input/N

# print the output of matrix multiplication
echo -e "\nMatrix multiplication output:"
hdfs dfs -cat output/part-r-00000


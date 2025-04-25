#!/bin/bash
silo_id=0
number=$((1*5 + ${silo_id}))
data_path="/home/dataset/hybrid/YouTube-rgb/YouTube_${number}.fivecs"
scalardata_path="/home/dataset/hybrid/YouTube-rgb/meta_${number}.txt"
cluster_path="/home/yzengal/clusters/YouTube-rgb/YouTube_${number}/cluster"
collection_name="LOCAL_DATA_YouTube_rgb_${number}"

../cpp/build/silo --ip=0.0.0.0:50056 --id=$number --data-path=$data_path --scalardata-path=$scalardata_path --cluster-path=$cluster_path --index-type=HNSW --collection-name=$collection_name
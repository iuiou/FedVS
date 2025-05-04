#!/bin/bash
silo_id=4
number=$((0*5 + ${silo_id}))
data_path="/home/dataset/testHybrid/YouTube-audio/YouTube_${number}.fivecs"
scalardata_path="/home/dataset/testHybrid/YouTube-audio/meta_${number}.txt"
cluster_path="/home/dataset/testHybrid/YouTube-audio/YouTube_${number}.cluster/cluster"
collection_name="LOCAL_DATA_${number}"

../cpp/build/silo --ip=localhost:50054 --id=$number --data-path=$data_path --scalardata-path=$scalardata_path --cluster-path=$cluster_path --index-type=HNSW --collection-name=$collection_name
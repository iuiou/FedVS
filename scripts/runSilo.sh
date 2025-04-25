#!/bin/bash
silo_id=0
number=$((0*5 + ${silo_id}))
data_path="/home/dataset/hybrid/deep/deep_${number}.fivecs"
scalardata_path="/home/dataset/hybrid/deep/meta_skew.txt"
cluster_path="/home/yzengal/clusters/rebuttal/deep/deep_shew_${number}/cluster"
collection_name="LOCAL_DATA_deep_skew_${number}"

../cpp/build/silo --ip=0.0.0.0:50050 --id=$number --data-path=$data_path --scalardata-path=$scalardata_path --cluster-path=$cluster_path --index-type=HNSW --collection-name=$collection_name
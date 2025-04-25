#!/bin/bash
silo_id=4
number=$((4*5 + ${silo_id}))
data_path="/home/dataset/hybrid/YouTube-audio/YouTube_${number}.fivecs"
scalardata_path="/home/dataset/hybrid/YouTube-audio/meta_${number}.txt"
cluster_path="/home/yzengal/clusters/YouTube-audio/YouTube_${number}/cluster"
collection_name="LOCAL_DATA_YouTube_audio_${number}"

../cpp/build/silo --ip=0.0.0.0:50054 --id=$silo_id --data-path=$data_path --scalardata-path=$scalardata_path --cluster-path=$cluster_path --index-type=HNSW --collection-name=$collection_name
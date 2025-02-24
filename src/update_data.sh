source /opt/conda/etc/profile.d/conda.sh &&
conda activate amazonia_sufocada &&
cd /home/amazonia-sufocada/code/ &&
python update_datasets.py &&
sleep 30m && # Sleep para processamento dos tilesets
python update_tweet_data.py &&
python tweet.py "/home/amazonia-sufocada/output/jsons/tweets/ucs_24h.json" &&
sleep 60m &&
python tweet.py "/home/amazonia-sufocada/output/jsons/tweets/tis_24h.json"
cd ..
cp -r -f -T /home/amazonia-sufocada/output /home/amazonia-sufocada-static-output/

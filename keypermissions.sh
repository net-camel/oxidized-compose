sudo chown -R 30000:30000 keys && sudo chmod -R 700 ./keys && \
sudo chmod 700 ./keys/id_rsa &&
echo "Modified keys file ownership" || \
echo "An error occured"
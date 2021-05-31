docker run --tty \
           --network sftp-sink-connector_kafka-connect \
           -v /Users/aqua-len/IdeaProjects/sftp-sink-connector/test-data-star-wars.txt:/test-data-star-wars.txt\
           confluentinc/cp-kafkacat \
           bash -c "
            cat /test-data-star-wars.txt | kafkacat  \
           -b broker:29092 \
            -P -t main"

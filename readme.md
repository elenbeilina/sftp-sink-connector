### App for moving xml data form kafka topic to oracle database table.

---
#### Environment:
- docker env can be found in `docker-compose.yaml` file
- control-center was added to env for cluster monitoring, \
  so cluster state can be checked by `http://localhost:9021/clusters` url.
- to connector cluster was added camel-sftp-kafka-connector-0.10.0 by maven
- sftp server (properties can be changed in `sftp.json` configuration file)

---
#### Test scenario:
 1. Run docker environment:
    ```
    docker compose up -d
    ```

 2.Create connector:
    ```
    sh create-connector.sh
    ```
 3. Change local path to `test-data-star-wars.txt` in `produce-data.sh`

 4. Produce test data to kafka topic:
    ```
    sh produce-data.sh
    ```
    
Result can be checked in star_wars folder via connecting to SFTP server.

Username: hun_solo
Password: millennium_falcon
host: sftp
Port: 22
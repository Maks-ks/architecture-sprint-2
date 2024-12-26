#!/bin/bash

###
# Инициализируем первый шард
###

docker-compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
rs.initiate(
    {
      _id : "rs-01",
      members: [
        { _id : 0, host : "shard1:27018" },
        { _id : 1, host : "shard1-a:27022" },
        { _id : 2, host : "shard1-b:27023" }
      ]
    }
)
exit()
EOF
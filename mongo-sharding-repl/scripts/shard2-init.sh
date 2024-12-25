#!/bin/bash

###
# Инициализируем второй шард
###

docker-compose exec -T shard2 mongosh --port 27019 --quiet <<EOF
rs.initiate(
    {
      _id : "rs-02",
      members: [
        { _id : 0, host : "shard2:27019" },
        { _id : 1, host : "shard2-a:27025" },
        { _id : 2, host : "shard2-b:27026" },
      ]
    }
  )
exit()
EOF
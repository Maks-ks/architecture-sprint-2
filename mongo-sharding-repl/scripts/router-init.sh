#!/bin/bash

###
# Инициализируем роутер
###

docker-compose exec -T mongos_router mongosh --port 27020 --quiet <<EOF
sh.addShard( "rs-01/shard1:27018")
sh.addShard( "rs-02/shard2:27019")
sh.enableSharding("somedb")
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } )
use somedb
for(var i = 0; i < 1000; i++) db.helloDoc.insert({age:i, name:"ly"+i})
exit()
EOF
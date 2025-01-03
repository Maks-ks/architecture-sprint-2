# mongo-sharding            

## Как запустить

Запускаем mongodb и приложение

```shell
docker-compose up -d
```

Инициализируем сервер конфигурации

```shell
./scripts/config-init.sh
```

Инициализируем первый шард

```shell
./scripts/shard1-init.sh
```

Инициализируем второй шард

```shell
./scripts/shard2-init.sh
```

Инициализируем роутер и заполняем его данными

```shell
./scripts/router-init.sh
```

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs
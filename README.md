<h1>Party Parrot App</h1>

<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>
<h3></h3>

Sample Python application on Django with PostgreSQL database.

<h3>Requirements</h3>

____
В процессе написания файлов использовались версии docker v27.2.1, docker-compose v2.30.3

Для запуска шикарного попугайчика сделайте следующее:

1) Склонируйте данный репозиторий в желаемую директорию
2) Перейдите в эту директорию

Находясь в директории с проектом введите:
`docker-compose up --build`

(Если выходит ошибка Permission denied, то включите пользователя в состав группы docker, и повторите запуск docker-compose: `sudo usermod -aG docker $USER`)

После сборки контейнеров (получение сообщений о запуске postgres-db, django-app) введите в браузере адрес 127.0.0.1 используя 8000 порт:
`127.0.0.1:8000`

Попугай должен появиться на странице с доступным функционалом создания постов

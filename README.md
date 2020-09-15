# КуклаPostgreSQL 12.3.01
Кукла для быстрого развертывания  PostgreSQL

<pre>
1) Собираем исходный контейнер
    docker build -t postgre:12.3.0 .
2) Удаляем базовый контейнер (не обязательно)    
    docker rmi postgres:12.3
3) Запускаем  собранный контейнер
    set PORT=5435
    docker run -d -p %PORT%:5432  --name mypostgre   -v %~dp0DB:/PG_DATA  postgre:12.3.0
4) Подключаемся bash в контейнере
    docker exec -it mypostgre  bash
5) Копируем файлы в подключенную внешнюю папку
    cp -r /var/lib/postgresql/data/* /PG_DATA
6) Выходим из командной строки bash
    exit
7) Сохраняем измененый собранный контейнер в новый IMAGE  "postgre:12.3.01"
    docker commit mypostgre postgre:12.3.01
8) Запускаес собранный контейнер с подключением выгруженных файлов BD    
    docker run -d -p 5436:5432  --name mypostgre2  -v DB:/var/lib/postgresql/data  postgre:12.3.01
9) Выгружаем  новый IMAGE в  *.tar
    docker save -o C:\MyPostgre_12.3.01.tar postgre:12.3.01
10) Архивируем папку DB 
11) Переносим на новое место *.tar и архив DB.zip
12) Загружаем IMAGE в докер
    docker load -i C:\MyPostgre_12.3.01.tar
13) Распаковка на новом месте DB.zip в /DB
14) Запуск перенесенного контейнера
    docker run -d -p 5435:5432  --name mypostgre2  -v DB:/var/lib/postgresql/data  postgre:12.3.01
</pre>    
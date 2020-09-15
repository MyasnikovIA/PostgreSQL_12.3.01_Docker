docker build -t postgre:12.3.0 .
docker rmi postgres:12.3
set PORT=5435
rem  docker run -d -p %PORT%:5432   -v %~dp0DB/data:/var/lib/postgresql/data_copy    postgre:12.3.0
docker run -d -p %PORT%:5432  --name mypostgre   -v %~dp0DB:/PG_DATA  postgre:12.3.0
timeout 10


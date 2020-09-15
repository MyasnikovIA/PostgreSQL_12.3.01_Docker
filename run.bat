set PORT=5435
docker run -d -p  %PORT%:5432  --name mypostgre  -v %~dp0DB:/var/lib/postgresql/data   postgre:12.3.01


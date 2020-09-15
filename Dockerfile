#  docker build -t postgres:12.3 .
FROM postgres:12.3

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV PGDATA=/var/lib/postgresql/data
RUN mkdir -p /PG_DATA

COPY  ./run.sh /bin/run.sh
SHELL ["/run.sh"]
ADD sql /docker-entrypoint-initdb.d/
USER postgres
EXPOSE 5432


FROM postgres:16.1-alpine3.19

ADD install.sh install.sh
RUN sh install.sh && rm install.sh

ENV PG_DUMP_OPTIONS --create --verbose
ENV PSQL_HOST ""
ENV PSQL_PORT 5432
ENV PSQL_USER ""
ENV DROPBOX_PREFIX ""

ADD run.sh run.sh
ADD backup.sh backup.sh

CMD ["sh", "run.sh"]
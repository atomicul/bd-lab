FROM gvenzl/oracle-xe:21-slim-faststart

ENV ORACLE_RANDOM_PASSWORD=yes

COPY hr_create.sql hr_insert.sql /opt/hr/
COPY --chmod=0755 scripts/init-hr.sh /container-entrypoint-initdb.d/01-init-hr.sh
COPY scripts/lock-system.sql /container-entrypoint-initdb.d/99-lock-system.sql

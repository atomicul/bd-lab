#!/usr/bin/env bash
set -euo pipefail

sqlplus -s "${APP_USER}/${APP_USER_PASSWORD}@//localhost:1521/${ORACLE_DATABASE:-XEPDB1}" <<'SQL'
WHENEVER SQLERROR EXIT FAILURE
@/opt/hr/hr_create.sql
@/opt/hr/hr_insert.sql
COMMIT;
EXIT;
SQL

#!/bin/bash

pg_restore /docker-entrypoint-initdb.d/3-pagila-data-apt-jsonb.backup -d postgres

pg_restore /docker-entrypoint-initdb.d/3-pagila-data-yum-jsonb.backup -d postgres
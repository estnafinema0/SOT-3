#!/bin/bash
set -m; minio server ~/minio --console-address :9001&
sleep 2

mc alias set ${MINIO_ALIAS} http://localhost:9000 ${MINIO_ROOT_USER} ${MINIO_ROOT_PASSWORD}
mc admin accesskey create ${MINIO_ALIAS} --access-key ${ADMIN_ACCESS_KEY} --json > keys.json
SECRET_KEY=`python3 keyParser.py`
mc config host add ${MINIO_ALIAS} http://localhost:9000 ${ADMIN_ACCESS_KEY} ${SECRET_KEY}
mc admin info ${MINIO_ALIAS}

mc mb ${MINIO_ALIAS}/${MAIN_BUCKET}
mc quota set ${MINIO_ALIAS}/${MAIN_BUCKET} --size 2mi
mc quota info ${MINIO_ALIAS}/${MAIN_BUCKET}

mc admin policy create ${MINIO_ALIAS} readwriteonly policies.json
mc admin user add ${MINIO_ALIAS} ${USER_ACCESS_KEY} ${USER_SECRET_KEY}
mc admin policy attach ${MINIO_ALIAS} readwriteonly --user ${USER_ACCESS_KEY}

fg

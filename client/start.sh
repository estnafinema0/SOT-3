sleep 5
mc config host add ${MINIO_ALIAS} http://localhost:9000 ${USER_ACCESS_KEY} ${USER_SECRET_KEY}
mc cp 123.txt ${MINIO_ALIAS}/${MAIN_BUCKET}/123.txt
mc ls ${MINIO_ALIAS}/${MAIN_BUCKET}
mc get ${MINIO_ALIAS}/${MAIN_BUCKET}/123.txt .
mc du ${MINIO_ALIAS}/${MAIN_BUCKET}

mc cp big.txt ${MINIO_ALIAS}/${MAIN_BUCKET}/big.txt
mc du ${MINIO_ALIAS}/${MAIN_BUCKET}

x=1
while [ $x -le 500 ]
do
    mc du ${MINIO_ALIAS}/${MAIN_BUCKET}
    mc cp happyface.jpg ${MINIO_ALIAS}/${MAIN_BUCKET}/${x}.jpg
    x=$(( $x + 1 ))
done

mc du ${MINIO_ALIAS}/${MAIN_BUCKET}

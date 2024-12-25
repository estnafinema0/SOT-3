# S3-Compatible Object Storage with MiniO

This project demonstrates how to set up an S3-compatible object storage using MinIO, configure disk space limits, enable data eviction policies, and automatically upload test data until the storage limit is reached.

Project is realised as a part of the study of "Cloud technologies" special course at the CMC university. 

## See work server and cliend in one terminal

### Build and run using Docker Compose:

It will start both containers in the background.

```bash
sudo docker-compose up --build
```

The web setups will be run it the terminal.
After started downloads of given in the client folder image at the around 350-400 looped transfer will fail, because of the Bucked quota exceed.

### Access MinIO

Open your browser at http://localhost:9000.
Login with a setted credentials:

```
MINIO_ROOT_USER: Oblaka
MINIO_ROOT_PASSWORD: OblakaPass
```
There will be shown loaded in bucket files.

## See client work and fail

```bash
sudo docker compose run --rm client
```

Should fail on "big" transfer and on around 300-400 looped transfer

## See web and client work

```bash
sudo docker compose up
```

On server nothing interesting actually happens, when limit gets exceeded

## Removing containers

When you are done testing:

```bash
sudo docker compose down
```

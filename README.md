# S3-Compatible Object Storage with MiniO

This project demonstrates the setup of an S3-compatible object storage system using MiniO in a Docker container. The storage is configured with disk space limitations, an eviction policy, and automation through Docker Compose. It includes a data uploader container to simulate reaching the disk limit and showcases the behavior of the system under these conditions.

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

```bash
sudo docker compose down
```

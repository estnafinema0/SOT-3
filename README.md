# SOT-3

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

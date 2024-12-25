# S3-совместимое объектное хранилище с MiniO

Этот проект демонстрирует настройку объектного хранилища данных на основе MiniO, развернутого в Docker. Хранилище имеет ограничения на объем диска, настроенные политики вытеснения данных и автоматизированный процесс загрузки тестовых данных. В проекте также представлены инструкции для демонстрации работы системы при достижении лимита дискового пространства.

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

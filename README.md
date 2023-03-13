# Cách build docker

## cách 1

- Dùng lệnh sau để build dockerfile

```bash
docker build -t
docker images
```

## Nội dung file docker

```yml
version: '3'
services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "5000:5000"
      - "50051:50051"
    command: ["yarn", "start:prod"]
    working_dir: /messenger
    volumes:
      - .:/messenger
    
```
# Documentation - WIP
Demonstrates Docker container running Mountebank

## Build Docker Image
```docker build --build-arg PORT=<MOUNTEBANK PORT>  -t vimalparakhiya/mountebank mountebank/```

For example: ```docker build --build-arg PORT=3456  -t vimalparakhiya/mountebank mountebank/```

## Run Docker Image

```docker run -d -p <MOUNTEBANK PORT>:<MOUNTEBANK PORT> -p 5000:5000 vimalparakhiya/mountebank```

For example: ```docker run -d -p 3456:3456 -p 5000:5000 vimalparakhiya/mountebank```

Mountebank server starts on `PORT` specified at build time. It also exposes `GET localhost:5000/books` 
endpoint demonstrating Mountebank stub example.
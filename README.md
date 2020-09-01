# observer-chrome
ui performance analysis - chrome container

```
docker build -t getcarrier/observer-chrome:latest
```

Build with selenoid:

```
docker build -f selenoid/Dockerfile -t getcarrier/observer-chrome:85.0 . --build-arg VERSION=85.0
```

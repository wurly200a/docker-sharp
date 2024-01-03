# docker-sharp
Docker image to execute [sharp](https://github.com/lovell/sharp) for Node.js

## build

```
make build
```

or

```
docker build -t docker-sharp .
```

## check

```
heif-convert --version
heif-convert --list-decoders
```

## run

```
docker run --rm -it -v $(pwd):/home/node/work -w /home/node/work docker-sharp bash
npm install sharp
```

```
node sample-simple.js
```

```
node sample.js
```


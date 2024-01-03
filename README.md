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

## run

```
docker run --rm -it -v $(pwd):/home/node/work -w /home/node/work wurly/docker-sharp bash
```

or

```
docker run --rm -it -v $(pwd):/home/node/work -w /home/node/work docker-sharp bash
```

check

```
heif-convert --version
heif-convert --list-decoders
```

```
npm install sharp
```

```
node sample-simple.js
```

```
node sample.js
```


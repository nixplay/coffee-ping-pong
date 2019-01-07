# Installation

Run `npm install`

Please note that this program running on Node v6 and written in CoffeeScript.

# Configurations

`config/default.coffee` defined:

* Default `service name` and listening `port`
* Service list

You may override the default config on deployment. By default it defined three services: `serviceA`, `serviceB`, `serviceC`, they are running on port: `3000`, `3001`, `3002`.


# Run the program

## Using defined configurations

```
$ SERVICE_NAME=serviceA PORT=3000 npm start
$ SERVICE_NAME=serviceB PORT=3001 npm start
$ SERVICE_NAME=serviceC PORT=3002 npm start
```

## Using environment variables

```
$ NODE_ENV=serviceA npm start
$ NODE_ENV=serviceB npm start
$ NODE_ENV=serviceC npm start
```

# Result

When all the services are deployed and running successfully, each service will do **ping pong** to each other, and you will get following sample output:

```
serviceC listening on port: 3002
ping to: serviceA
ping to: serviceB
pong from: serviceA
pong from: serviceB
ping to: serviceA
ping to: serviceB
pong from: serviceA
pong from: serviceB
ping to: serviceA
ping to: serviceB
pong from: serviceA
pong from: serviceB
ping to: serviceA
ping to: serviceB
pong from: serviceA
pong from: serviceB
ping to: serviceA
ping to: serviceB
pong from: serviceB
pong from: serviceA
ping to: serviceA
ping to: serviceB
pong from: serviceB
pong from: serviceA
ping to: serviceA
ping to: serviceB
...
```

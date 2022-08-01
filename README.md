# Kafka Cluster Deployment

This repository contains scripts and configuration files required to deploy Apache Kafka clusters (zookeepers and brokers).

## Requirements

### Deployment

1. Docker compose

### Development

1. NPM
2. Docker compose

## Quick start

### No encryption and no authentication

Run docker compose:

```shell
docker compose -f docker/kafka.yml up -d
```

# Client Configurations

## Kafka.JS

SCRAM configuration example:
```javascript
new Kafka({
  clientId: 'my-app',
  brokers: ['kafka1:9092', 'kafka2:9092'],
  // authenticationTimeout: 10000,
  // reauthenticationThreshold: 10000,
  ssl: true,
  sasl: {
    mechanism: 'plain', // scram-sha-256 or scram-sha-512
    username: 'my-username',
    password: 'my-password'
  },
})
```

# Scripts

## dotenv

A script that outputs the value of environment variable from a file in dotenv format.

Usage:

```shell
dotenv.sh dotenv_file ENV_NAME
```

# Reference

https://awesome-it.de/2022/07/29/kafka-security-first-steps/


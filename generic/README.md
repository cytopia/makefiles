# Generic Makefile

Simply add the Makefile to the root of you projects and start automating.

## Files

| Makefile | Description |
|----------|-------------|
| [Makefile](Makefile) | Makefile for all generic projects |


## Targets

| Target | Description |
|--------|-------------|
| `help` | (Default target) Show help screen |
| `lint` | Various linting against all possible files (encoding, line-feeds, whitespace) |


## Tunables

### Disable specific linters
The linting stage `lint` offers you to disable certain linters via make argumets:
```bash
# Specify file-lint Docker image version
$ make lint FL_VERSION=latest

# Specify paths to ignore during file lint
$ make lint FL_IGNORE_PATHS='.git/,.github/'
```

## CI Integration

The following example shows Travis CI integration
```yml
---
sudo: required
services:
  - docker

before_install: true
install: true

script:
  - make lint
```

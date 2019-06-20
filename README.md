# Makefiles

[![Build Status](https://travis-ci.com/cytopia/makefiles.svg?branch=master)](https://travis-ci.com/cytopia/makefiles)
[![Tag](https://img.shields.io/github/tag/cytopia/makefiles.svg)](https://github.com/cytopia/makefiles/releases)
![Type](https://img.shields.io/badge/type-Makefile-red.svg)
[![License](https://img.shields.io/badge/license-MIT-%233DA639.svg)](https://opensource.org/licenses/MIT)

This **[#awesome-ci](https://github.com/topics/awesome-ci)**-based<sup>[1]</sup> repository holds a collection of cross-platform compatible **Makefiles** for various different types
of projects, which will add the very basic and best-practice linting and file checking to your code.

The default provided stage is `lint`<sup>[2]</sup> and will ensure your code is **clean**, **git-diff
safe** and according to **best practices** (depending on whatever linter configuration is provided).

* <sup>[1] See all awesome-ci projects here: https://github.com/topics/awesome-ci</sup>
* <sup>[2] Some Makefiles might provide more targets (e.g.: `test`, `gen`, ...).</sup>


## Collection

| Project type | Description |
|--------------|-------------|
| [generic](generic) | Makefile for generic projects |
| [terraform-module](terraform-module) | Makefile for Terraform module (for Terraform < 0.12 and >= 0.12) |


## Requirements

* Docker
* GNU Make


## Installation

Copy the appropriate Makefile to your project root and you're all set. The only required
dependencies are Docker and GNU Make.


## Usage
The general usage will always be:
```bash
$ make lint
```

For a more specific description see the project's README.md in each collection.


## Related [#awesome-ci](https://github.com/topics/awesome-ci) Docker images

Dependency-less Makefiles made possible by the following Docker images.

| Docker image | Type | Description |
|--------------|------|-------------|
| [awesome-ci](https://github.com/cytopia/awesome-ci) | Basic | Tools for git, file and static source code analysis |
| [file-lint](https://github.com/cytopia/docker-file-lint) | Basic | Baisc source code analysis |
| [jsonlint](https://github.com/cytopia/docker-jsonlint) | Basic | Lint JSON files |
| [yamllint](https://github.com/cytopia/docker-yamllint) | Basic | Lint Yaml files |
| [ansible](https://github.com/cytopia/docker-ansible) | Ansible | Multiple versoins of Ansible |
| [ansible-lint](https://github.com/cytopia/docker-ansible-lint) | Ansible | Lint  Ansible |
| [gofmt](https://github.com/cytopia/docker-gofmt) | Go | Format Go source code |
| [golint](https://github.com/cytopia/docker-golint) | Go | Lint Go code |
| [eslint](https://github.com/cytopia/docker-eslint) | Javascript | Lint Javascript code |
| [checkmake](https://github.com/cytopia/docker-checkmake) | Make | Lint Makefiles |
| [phpcs](https://github.com/cytopia/docker-phpcs) | PHP | PHPCodeSniffer and Code Beautifier and Fixer |
| [black](https://github.com/cytopia/docker-black) | Python | The uncompromising Python code formatter |
| [pycodestyle](https://github.com/cytopia/docker-pycodestyle) | Python | Python style guide checker |
| [pylint](https://github.com/cytopia/docker-pylint) | Python | Python source code, bug and quality checker |
| [terraform-docs](https://github.com/cytopia/docker-terraform-docs) | Terraform | Terraform doc generator (TF 0.12 ready) |
| [terragrunt](https://github.com/cytopia/docker-terragrunt) | Terraform | Terragrunt and Terraform |


## Contributing

See guidelines here: **[CONTRIBUTING](CONTRIBUTING.md)**


## License

**[MIT License](LICENSE)**

Copyright (c) 2019 [cytopia](https://github.com/cytopia)

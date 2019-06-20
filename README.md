# Makefiles

[![Tag](https://img.shields.io/github/tag/cytopia/makefiles.svg)](https://github.com/cytopia/makefiles/releases)
![Type](https://img.shields.io/badge/type-Makefile-red.svg)
[![License](https://img.shields.io/badge/license-MIT-%233DA639.svg)](https://opensource.org/licenses/MIT)

This **[#awesome-ci](https://github.com/topics/awesome-ci)**-based<sup>[1]</sup> project holds a collection of cross-platform compatible **Makefiles** for various different types
of projects, which will add the very basic and best-practice linting and file checking to your code.

The default provided stage is `lint`<sup>[2]</sup> and will ensure your code is clean, git-diff
safe and according to best practices (depending on whatever linter configuration is provided by you).

* <sup>[1] See all awesome-ci projects here: https://github.com/topics/awesome-ci</sup>
* <sup>[2] Some Makefiles might provide more targets (e.g.: `test`, `gen`, ...).</sup>


## Requirements

* Docker
* GNU Make


## Collection

| Project type | Description |
|--------------|-------------|
| [generic](generic) | Makefile for generic projects |
| [terraform-module](terraform-module) | Makefile for Terraform module (for Terraform < 0.12 and >= 0.12) |


## Installation

Copy the appropriate Makefile to your project root and you're all set. The only required
dependencies are Docker and GNU Make.


## Usage
The general usage will always be:
```bash
$ make lint
```

For a more specific description, visit the chosen collection's README.md.


## Contributing


See guidelines here: [CONTRIBUTING.md](CONTRIBUTING.md)


## License

**[MIT License](LICENSE)**

Copyright (c) 2019 [cytopia](https://github.com/cytopia)

# Terraform module Makefile

Simply add the Makefile to the root of you Terraform module git repository and start automating.

## Files

| Makefile | Description |
|----------|-------------|
| [Makefile](Makefile) | Makefile for Terraform >= 0.12 modules |
| [Makefile.old](Makefile.old) | Makefile for Terraform < 0.12 modules |


## Targets

| Target | Description |
|--------|-------------|
| `help` | (Default target) Show help screen |
| `gen`  | Replace `terraform-docs` output into README.md for main module, sub-modules and examples |
| `lint` | Various linting against all possible files (encoding, line-feeds, whitespace, terraform fmt, json) |
| `test` | Terraform `init` and `validate` |


## Tunables

### Disable specific linters
The linting stage `lint` offers you to disable certain linters via make argumets:
```bash
# Disable file-lint
$ make lint LINT_FL_ENABLE=0

# Disable jsonlint
$ make lint LINT_JL_ENABLE=0

# Disable terraform fmt
$ make lint LINT_TF_ENABLE=0

# Disable file-lint and jsonlint
$ make lint LINT_FL_ENABLE=0 LINT_JL_ENABLE=0
```

### Overwrite terraform-docs delimiter
If you terraform-docs section contain custom delimiters, you can also set them during the `gen` target.
The defaults are:
* Start delimiter: `<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->`
* Close delimiter: `<!-- End OF PRE-COMMIT-TERRAFORM DOCS HOOK -->`

```bash
# Generate terraform-docs with custom delimiters
$ make gen DELIM_START='<!-- docs start -->' DELIM_CLOSE='<!-- docs end -->'
```

### Overwrite terraform-docs arguments
By default `terraform-docs` is using `--sort-inputs-by-required --with-aggregate-type-defaults` to
generate nice markdown tables. You can however also use whatever you prefer:
```bash
make gen TFDOCS_ARGS='--no-sort'
```

### Change Docker image versions
Last but not least, you're also able to use different version tags for all used Docker images.
```bash
# Use different terraform-docs version for generation
$ make gen TFDOCS_VERSION=latest

# Use different terraform version for testing
$ make test TF_VERSION=latest
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

before_script:
  - make lint
  - make gen
  - git diff --quiet || { echo "Build Changes"; git diff; git status; false; }

script:
  - make test
```

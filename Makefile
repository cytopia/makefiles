ifneq (,)
.error This Makefile requires GNU Make.
endif

.PHONY: lint _lint-files _pull-fl

CURRENT_DIR = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))


# -------------------------------------------------------------------------------------------------
# file-lint settings
# -------------------------------------------------------------------------------------------------
FL_VERSION      = latest
FL_IGNORE_PATHS = .git/,.github/

# -------------------------------------------------------------------------------------------------
# Default target
# -------------------------------------------------------------------------------------------------
help:
	@echo "help       Show this help screen"
	@echo "lint       Static source code analysis"


# -------------------------------------------------------------------------------------------------
# Standard targets
# -------------------------------------------------------------------------------------------------
lint:
	@$(MAKE) --no-print-directory _lint-files


# -------------------------------------------------------------------------------------------------
# Helper Targets
# -------------------------------------------------------------------------------------------------
_lint-files: _pull-fl
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-cr --text --ignore '$(FL_IGNORE_PATHS)' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-crlf --text --ignore '$(FL_IGNORE_PATHS)' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-trailing-single-newline --text --ignore '$(FL_IGNORE_PATHS)' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-trailing-space --text --ignore '$(FL_IGNORE_PATHS)' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-utf8 --text --ignore '$(FL_IGNORE_PATHS)' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-utf8-bom --text --ignore '$(FL_IGNORE_PATHS)' --path .

_pull-fl:
	docker pull cytopia/file-lint:$(FL_VERSION)

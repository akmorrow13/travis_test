define help

Supported targets: prepare, develop, clean, test.

The 'prepare' target installs build requirements.

The 'develop' target creates an editable install of runtime requirements.

The 'clean' target undoes the effect of 'develop'.

The 'test' target runsunit tests.

endef
export help
help:
	@printf "$$help"

# This Makefile uses bash features like printf and <()
SHELL=bash
python=python2.7
pip=pip
tests=tests



test: 
	$(python) -m pytest -vv --junitxml tests.xml $(tests)


prepare:
	$(pip) install pytest==2.8.3


.PHONY: help \
		prepare \
		develop clean_develop \
		test \
		clean \
		check_build_reqs

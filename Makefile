.PHONY: setup

setup:
	chmod +x hooks/pre-commit
	git config core.hooksPath hooks
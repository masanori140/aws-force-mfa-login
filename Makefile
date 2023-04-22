.PHONY: tasks

help:
	@echo Usage\: make [task]
	@echo --------------------
	@echo
	@cat Makefile
	@echo

clean:
	find ./terraform -name ".terraform" | xargs rm -rf
	find ./terraform -name ".terraform.lock.hcl" | xargs rm -rf

pre-commit:
	pre-commit run --all-files

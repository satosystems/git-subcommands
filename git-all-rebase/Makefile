MAKEFILE:=$(lastword $(MAKEFILE_LIST))

.PHONY: install
install: man/man1/git-all-rebase.1
	sudo cp git-all-rebase /usr/local/bin/git-all-rebase
	sudo cp man/man1/git-all-rebase.1 /usr/local/share/man/man1/git-all-rebase.1

.PHONY: uninstall
uninstall:
	sudo rm -f /usr/local/bin/git-all-rebase
	sudo rm -f /usr/local/share/man/man1/git-all-rebase.1

.PHONY: check
check: man/man1/git-all-rebase.1
	man -M man git-all-rebase

man/man1/git-all-rebase.1: man/man1/git-all-rebase.1.md
	pandoc $^ -s -t man -o $@

.PHONY: help
help:
	@cat $(MAKEFILE) | grep -E '^[^ :]+ *:([^=]|$$)' | grep -v '^.PHONY *:' | awk -F':' '{print $$1}'

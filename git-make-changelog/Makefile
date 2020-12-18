MAKEFILE:=$(lastword $(MAKEFILE_LIST))

.PHONY: install
install: man/man1/git-make-changelog.1
	sudo cp git-make-changelog /usr/local/bin/git-make-changelog
	sudo cp man/man1/git-make-changelog.1 /usr/local/share/man/man1/git-make-changelog.1

.PHONY: uninstall
uninstall:
	sudo rm -f /usr/local/bin/git-make-changelog
	sudo rm -f /usr/local/share/man/man1/git-make-changelog.1

.PHONY: check
check: man/man1/git-make-changelog.1
	man -M man git-make-changelog

man/man1/git-make-changelog.1: man/man1/git-make-changelog.1.md
	pandoc $^ -s -t man -o $@

.PHONY: help
help:
	@cat $(MAKEFILE) | grep -E '^[^ :]+ *:([^=]|$$)' | grep -v '^.PHONY *:' | awk -F':' '{print $$1}'

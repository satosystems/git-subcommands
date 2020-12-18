MAKEFILE:=$(lastword $(MAKEFILE_LIST))

.PHONY: install
install:
	cd git-make-changelog && make install

.PHONY: uninstall
uninstall:
	cd git-make-changelog && make uninstall

.PHONY: help
help:
	@cat $(MAKEFILE) | grep -E '^[^ :]+ *:([^=]|$$)' | grep -v '^.PHONY *:' | awk -F':' '{print $$1}'

all:
	./bin/download.sh
	./bin/setup.sh
	./bin/compile_benchmarks.sh

uninstall:
	./bin/uninstall.sh

.PHONY: uninstall

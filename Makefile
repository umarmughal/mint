build:
	crystal build src/mint.cr -o mint -p -d && mv mint ~/.bin/mint && mint

test:
	crystal spec -p

documentation:
	rm -rf docs && crystal docs

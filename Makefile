freeze:
	scripts/freeze.sh

format:
	scripts/format.sh

compile:
	cp -r src/* .
	scripts/freeze.sh

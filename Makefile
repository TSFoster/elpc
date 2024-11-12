.PHONY: build clean dev

HUGO_ENV:=production

build:
	hugo --minify --environment=$(HUGO_ENV)

clean:
	rm -rf ./public

dev:
	npx run-pty % \
		npx --yes decap-server % \
		hugo server --bind 0.0.0.0 --buildDrafts --port=1313

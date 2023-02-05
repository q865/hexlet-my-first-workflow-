install: install-deps

git-ignore:
	echo "/node_modules/\n*.log\ncoverage\nDS_Store" >> .gitignore 
run:
	bin/nodejs-package.js 10

install-deps:
	npm ci

test:
	npm test

test-coverage:
	npm test -- --coverage --coverageProvider=v8

lint:
	npx eslint .

say-hello: 
	echo 'hello-world'


publish:
	npm publish

.PHONY: test'

all:
	./node_modules/.bin/coffeelint \
		src/instafeed.coffee
	./node_modules/.bin/mocha \
		--compilers coffee:coffee-script/register \
		--reporter spec
	./node_modules/.bin/coffee \
		-c \
		-o ./ \
		src/instafeed.coffee
	./node_modules/.bin/uglifyjs \
		-o instafeed.min.js \
		instafeed.js

min:
	./node_modules/.bin/uglifyjs \
		-o instafeed.min.js \
		instafeed.js

.PHONY: min

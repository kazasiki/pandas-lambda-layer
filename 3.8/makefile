build:
	sh build.sh

clean:
	rm -fr layer
	rm -f layer.zip

zip:
	cd layer && zip -r9 ../layer.zip python

test:
	docker run --rm \
	-v $(PWD)/example:/var/task:ro,delegated \
	-v $(PWD)/layer:/opt:ro,delegated \
	lambci/lambda:python3.8 lambda_function.lambda_handler

## For Debug

build-bash:
	docker run -it py38-pandas-lambda-layer /bin/bash

test-bash:
	docker run --rm -it \
	-v $(PWD)/example:/var/task:ro,delegated \
	-v $(PWD)/layer:/opt:ro,delegated \
	--entrypoint /bin/bash lambci/lambda:python3.8

default:
	docker build . --file Dockerfile --tag picatz/quakejs:latest
debug:
	docker run -it --rm  --entrypoint="/bin/bash" picatz/quakejs:latest
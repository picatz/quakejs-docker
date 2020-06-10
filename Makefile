default:
	docker build . --file Dockerfile --tag quakejs:latest
debug:
	docker run -it --rm  --entrypoint="/bin/bash" quakejs:latest
docker-build-tag-n-push:
	docker build -t quakejs:latest .
	docker tag quakejs:latest kentgruber/quakejs:latest
	docker push kentgruber/quakejs:latest
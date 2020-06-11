default:
	docker build . --file Dockerfile --tag quakejs:latest
run:
	docker run -d --rm --name quakejs -e PUBLIC_IP="127.0.0.1" -e HTTP_PORT=8080 -p 8080:80 -p 27960:27960 quakejs:latest
	open http://127.0.0.1:8080/
destroy:
	docker stop quakejs
debug:
	docker run -it --rm  --entrypoint="/bin/bash" quakejs:latest
docker-build-tag-n-push:
	docker build -t quakejs:latest .
	docker tag quakejs:latest kentgruber/quakejs:latest
	docker push kentgruber/quakejs:latest
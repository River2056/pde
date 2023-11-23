run:
	docker build -t pde:v1 .
	docker run -di --name test pde:v1
	docker exec -it test /bin/bash

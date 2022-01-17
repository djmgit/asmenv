buildenv:
	docker build -t asmenv -f bin/Dockerfile ./bin

run:
	docker run -v `pwd`/src:/src --name asmenv asmenv:latest
	docker rm asmenv

clean:
	rm src/main.o src/out
	

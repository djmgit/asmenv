buildenv:
	docker build -t asmenv -f bin/Dockerfile ./bin

run:
	docker run -v `pwd`/src:/src --name asmenv asmenv:latest
	docker rm asmenv

rundebug:
	docker run -it -v /Users/dmondal/asmtut_mac/src:/src --name asmenv asmenv:latest /bin/bash
	docker rm asmenv

clean-container:
	docker rm asmenv

clean:
	rm src/*.o src/out
	

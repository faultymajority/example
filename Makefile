container-rocky:
	docker build --platform linux/amd64 -f Dockerfile.rocky -t example .

container-rust:
	docker build --platform linux/amd64 -f Dockerfile.rust -t example .

install:
	cargo install --target x86_64-unknown-linux-gnu --locked --path .

run:
	docker run -ti --platform linux/amd64 --rm example /bin/bash

docker-context:
	docker context use desktop-linux

orbstack-context:
	docker context use orbstack

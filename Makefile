all:
	docker build -t ruby-ci-interdevops:latest .

test:
	echo "done."

publish:
	docker run --rm -d -p 4567:4567 --name ruby-ci-interdevops ruby-ci-interdevops:latest

all:
	docker build -t ruby-ci-interdevops:latest .

test:
	echo "done."

publish:
	docker run -d -p 4567:4567 ruby-ci-interdevops:latest
all: build-docker push-heroku

build-docker:
	docker build -t dpritchett/helperbot:dev-latest .

push-heroku: build-docker
	docker tag dpritchett/helperbot:dev-latest registry.heroku.com/helperbott/web
	heroku container:login
	heroku container:push web
	heroku container:release web

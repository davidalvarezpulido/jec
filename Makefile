file := VERSION
VERSION := $(shell cat ${file})

build:
	docker build . -t jec:$(VERSION)

upload: 
	docker build . -t davidalvarezpulido/jec:$(VERSION) --no-cache
	docker push davidalvarezpulido/jec:$(VERSION)
	docker push davidalvarezpulido/jec:latest
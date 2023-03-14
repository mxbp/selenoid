all: pull run

pull:
	@echo "Pulling images.."
	$(eval IMAGES := $(shell cat ./selenoid/browsers.json | grep image | awk -F'"' '{print $$4}'))
	@for IMAGE in $(IMAGES); do \
		docker pull $$IMAGE; \
	done 

run:
	@echo "Starting Selenoid.."
	@docker-compose up -d

stop:
	@echo "Stopping Selenoid.."
	@docker-compose down

clean:
	@echo "Cleaning Selenoid.."
	@rm -rf selenoid/{logs,video}/*
	@echo "Cleaning Promitius.."
	@rm -rf prometheus/data/*
	@echo "Cleaning Grafana.."
	@rm -rf grafana/data/*

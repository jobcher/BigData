current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
		docker build -t sjtfreaks/hadoop-base:$(current_branch) ./base
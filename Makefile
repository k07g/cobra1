SRC=$(shell find . -name "*.go")

.PHONY: test fmt

test:
	$(info ******************** running tests ********************)
	go test -v ./...

fmt:
	$(info ******************** checking formatting ********************)
	@test -z $(shell gofmt -l $(SRC)) || (gofmt -d $(SRC); exit 1)

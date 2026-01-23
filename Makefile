BIN="./bin"
SRC=$(shell find . -name "*.go")

ifeq (, $(shell which $(BIN)/golangci-lint))
$(warning "could not find golangci-lint in $(PATH), run: curl -sfL https://golangci-lint.run/install.sh | sh")
endif

.PHONY: test fmt lint clean

test:
	$(info ******************** running tests ********************)
	go test -v ./...

fmt:
	$(info ******************** checking formatting ********************)
	@test -z $(shell gofmt -l $(SRC)) || (gofmt -d $(SRC); exit 1)

lint:
	$(info ******************** running lint tools ********************)
	$(BIN)/golangci-lint run -v

clean:
	rm -rf $(BIN)
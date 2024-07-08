.PHONY: fmt
fmt:
	@echo 'running cargo fmt'
	cargo fmt

.PHONY: check
check:
	@echo 'running cargo check'
	cargo check

.PHONY: build
build:
	@echo 'running cargo build'
	cargo build

.PHONY: run
run:
	@echo 'running cargo run'
	cargo run

.PHONY: all
all:
	@echo 'running all cargo commands'
	cargo fmt
	cargo check
	cargo build
	cargo run

.PHONY: test
test:
	@echo 'running cargo test'
	cargo test

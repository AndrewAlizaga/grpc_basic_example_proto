empty:
	@echo "****** CLEANING OLD DATA ******"
	rm -rf pkg/*

build_go: empty
	@echo "****** COMPILING GO PROTOS ******"
	protoc --go_out=pkg/ --go_opt=paths=source_relative --go-grpc_out=pkg/ --go-grpc_opt=paths=source_relative ./proto/v1/account/account.proto
	protoc --go_out=pkg/ --go_opt=paths=source_relative --go-grpc_out=pkg/ --go-grpc_opt=paths=source_relative ./proto/v1/services/account/account_api.proto

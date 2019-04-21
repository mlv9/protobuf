# We need to add the protoc-gen-dart binaries

all:
	protoc -I$(PWD) -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis --grpc-gateway_out=logtostderr=true:. --go_out=plugins=grpc:. heroball.proto
	ls *.pb.go | xargs -n1 -IX bash -c 'sed s/,omitempty// X > X.tmp && mv X{.tmp,}'

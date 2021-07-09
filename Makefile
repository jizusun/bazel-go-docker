clean:
	bazel clean

build-image-backend:
	bazel run --platforms=@io_bazel_rules_go//go/toolchain:linux_amd64 //backend-go/cmd/api:image

run-image-backend:
	docker run --rm -it -p8000 jizu/backend-go/cmd/api:image

build-react:
	bazel build //frontend-react:build

test-react:
	bazel run //frontend-react:test

build-image-frontend:
	bazel run //frontend-react:image

run-image-frontend:
	docker run --rm -it -p8000:80 jizu/frontend-react:image

push:
	./scripts/ci.sh
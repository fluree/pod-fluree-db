.PHONY: clean linux

SOURCES := $(shell find src)

pod-fluree-db: $(SOURCES) deps.edn
	clojure -M:native-image

pod-fluree-db-linux: $(SOURCES) Dockerfile deps.edn
	docker buildx build -t fluree/pod-fluree-db-builder:local --load .
	docker rm pod-fluree-db-builder || true
	docker run -t --name pod-fluree-db-builder fluree/pod-fluree-db-builder:local
	docker cp pod-fluree-db-builder:/pod-fluree-db/pod-fluree-db pod-fluree-db-linux
	docker rm pod-fluree-db-builder

linux: pod-fluree-db-linux

clean:
	rm -f pod-fluree-db
	rm -rf classes

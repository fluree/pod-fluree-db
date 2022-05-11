SOURCES := $(shell find src)

pod-fluree-db: $(SOURCES) deps.edn
	clojure -M:native-image

.PHONY: clean

clean:
	rm -f pod-fluree-db
	rm -rf classes

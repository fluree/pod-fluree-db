# pod-fluree-db

This is a [Babashka](https://babashka.org) [pod](https://book.babashka.org/#pods)
for the [fluree/db library](https://github.com/fluree/db)

## Building

Pods are built as native binaries for their respective platforms, so this uses
GraalVM native-image. You need to install a Graal JDK and the native-image tool
and then run `make` in this repo.

This should produce a binary named `pod-fluree-db` for your platform in the
project root.

## Usage

```clojure
(require '[babashka.pods :as pods])
(pods/load-pod "path/to/pod-fluree-db")
(require '[pod.fluree.db :as db])

;; TODO: Put a db example here!
```

## License

Copyright (c) 2021-2022 Fluree, PBC

This program and the accompanying materials are made
available under the terms of the Eclipse Public License 2.0
which is available at https://www.eclipse.org/legal/epl-2.0/

SPDX-License-Identifier: EPL-2.0

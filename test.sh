#!/bin/bash
set -v

if . ./bootstrap-test.sh ; then
    cargo test --features "with-postgres with-sqlite"
    cargo test --features "with-postgres"
    cargo test --features "with-sqlite"
    cargo test --all-features
fi
#!/bin/bash

cd "$(dirname "$0")/.."
exec egencache --update --update-use-local-desc --update-pkg-desc-index --repo zscheile -j 5

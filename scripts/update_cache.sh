#!/bin/bash

cd "$(dirname "$0")/.."

# re-generate profiles/categories
trap 'rm -f "$TMPF"' EXIT
TMPF="$(mktemp)"
for i in *; do echo "$i"; done | grep -vxF -f .non_categories > profiles/categories
rm -f "$TMPF"

exec egencache --update --update-use-local-desc --update-pkg-desc-index --repo zscheile -j 5

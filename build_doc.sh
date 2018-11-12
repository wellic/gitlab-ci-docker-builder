#!/usr/bin/env bash

set -u
#set -x

OUTPUT_FORMAT=${1:-"markdown"}
[ $# -gt 0 ] && shift

MASTER_DOC=${1:-"._docs_"}
[ $# -gt 0 ] && shift

OUTPUT_DOC=${1:-"README.md"}
[ $# -gt 0 ] && shift

PANDOC_OPT=$@

[ -e "$OUTPUT_DOC" ] && rm "$OUTPUT_DOC"

FILES=
for f in $(cat "$MASTER_DOC"); do
    [ "$f" = '' ] && continue
    FILES+=" '$f'"
done
CMD="pandoc $PANDOC_OPT --to=$OUTPUT_FORMAT -o '$OUTPUT_DOC' $FILES"

echo "$CMD"
eval "$CMD"

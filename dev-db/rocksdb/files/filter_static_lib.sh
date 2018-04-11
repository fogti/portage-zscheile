#!/bin/sh

# This file removes all occurences of target RocksDB::rocksdb (static library) from
# installed CMake files

# name of static target
STT_NAME="RocksDB::rocksdb"

sed -e "s/_expectedTarget $STT_NAME /_expectedTarget /g" \
    -e "/# Create imported target $STT_NAME\$/d" \
    -e "/# Import target \"$STT_NAME\"/d" \
    -e "/add_library($STT_NAME /d" \
    -e "/set_property(TARGET $STT_NAME /d" \
    -e "/list(APPEND _IMPORT_CHECK_TARGETS $STT_NAME )/d" \
    -e "/list(APPEND _IMPORT_CHECK_FILES_FOR_$STT_NAME /d" -i "$1" || exit 1

perl -pi -e 'BEGIN{undef $/;} s/set_target_properties\('"$STT_NAME"' [^)]+\)//mg; s/\n\n\n+/\n\n/mg' \
     "$1" || exit 1

#!/bin/bash

export BTX_USERNAME=bitcore
export BTX_PASSWORD=local321
export FILES_PATH=~/bitsee/public/files/
export FILES_URL=/files

echo "Check current block count:"
echo "bitcore-cli getblockcount"
echo ""
echo "EXAMPLE"
echo "Scan a range of blocks:"
echo "bundle exec rails utils:scan_blocks BLOCK_BEGIN=174329 BLOCK_END=174331"
echo ""
echo "Scan a specific transaction:"
echo "bundle exec rails utils:scan_tx TX=f3b7972d3089b6957d85e0f376c22c82bce4bb0167508fa86f028b8069d1eb9e"
echo ""

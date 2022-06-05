#!/bin/bash

SECRET_KEY='CSCG{IS_TH!S_S0M3_S3CR3T_FLAGZ?}'
export ROCKET_SECRET_KEY=`printf "$SECRET_KEY" | base64 -w 0`
export RUST_BACKTRACE=1

echo "SECRET_KEY=$SECRET_KEY"
echo "ROCKET_SECRET_KEY=$ROCKET_SECRET_KEY"

rustup run nightly cargo run --release

